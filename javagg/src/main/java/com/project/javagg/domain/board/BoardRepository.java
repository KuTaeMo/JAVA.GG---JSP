package com.project.javagg.domain.board;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

public interface BoardRepository extends JpaRepository<Board, Integer> {

	@Modifying
	@Query(value = "UPDATE board SET readCount = readCount + 1 WHERE id = :id", nativeQuery = true)
	int updateReadCount(int id);
	
	@Query(value = "select * from likes l inner join board b on l.boardId = b.id where l.userId = :principalId", nativeQuery = true)
	List<Board> findLikeById(int principalId);
	
	@Modifying
	@Query(value = "UPDATE board SET likeCount = likeCount + 1 WHERE id = :id", nativeQuery = true)
	int updateLikeCount(int id);
	
	@Modifying
	@Query(value = "UPDATE board SET likeCount = likeCount - 1 WHERE id = :id", nativeQuery = true)
	int updateLikeCountDown(int id);
	
	@Query(value = "select count(r.id) from reply r inner join board b on r.boardId = b.id where r.boardId = :id", nativeQuery = true)
	int replyCount(int id);
	
	@Query(value = "select * from board where communityType = :type", nativeQuery = true)
	Page<Board> boardCommunityTypeList(String type, Pageable pageable);
	
	@Query(value = "select * from board where id in (select boardId from likes where boardId = :boardId)", nativeQuery = true)
	List<Board> realLike(int boardId);
	
	@Query(value = "SELECT * FROM board b INNER JOIN likes l ON b.id = l.boardId GROUP BY b.id ORDER BY count(l.boardId) DESC", nativeQuery = true)
	Page<Board> hotBoard(Pageable pageable);
	
	@Query(value = "SELECT * FROM board b INNER JOIN likes l ON b.id = l.boardId WHERE communityType = :communityType GROUP BY b.id ORDER BY count(l.boardId) DESC", nativeQuery = true)
	Page<Board> hotTypeBoard(String communityType, Pageable pageable);
	
	@Query(value = "SELECT * FROM board b INNER JOIN likes l ON b.id = l.boardId GROUP BY b.id ORDER BY count(l.boardId) DESC limit 5", nativeQuery = true)
	List<Board> mainBoardPage();
	
	@Query(value = "SELECT * FROM board b INNER JOIN likes l ON b.id = l.boardId GROUP BY b.id ORDER BY count(l.boardId) DESC limit 5,5", nativeQuery = true)
	List<Board> mainBoardPage2();
}