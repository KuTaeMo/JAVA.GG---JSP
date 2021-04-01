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
	
	@Query(value = "UPDATE board SET likeCount = likeCount + 1 WHERE id = :id", nativeQuery = true)
	int updateLikeCount(int id);
	
	@Query(value = "select count(r.id) from reply r inner join board b on r.boardId = b.id where r.boardId = :id", nativeQuery = true)
	int replyCount(int id);
	
	@Query(value = "select * from board where communityType = :type", nativeQuery = true)
	Page<Board> BoardCommunityTypeList(String type, Pageable pageable);
}
