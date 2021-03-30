package com.project.javagg.domain.reply;

<<<<<<< HEAD

=======
>>>>>>> 290721ca72794073e2829db7b70c4f4d1c24ce38
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ReplyRepository extends JpaRepository<Reply, Integer>{

	@Query(value = "select count(r.id) from reply r inner join board b on r.boardId = :id AND r.boardId = b.id;", nativeQuery = true)
	int countReply(int id);
<<<<<<< HEAD

	@Query(value = "select * from reply r inner join board b on r.boardId = b.id where r.boardId = :id", nativeQuery = true)
	Page<Reply> findAllById(int id, Pageable pageable);
=======
	
	// @Query(value = "select * from reply where boardId = :id;", nativeQuery = true)
	Page<Reply> findAllById(int boardId, Pageable pageable);
>>>>>>> 290721ca72794073e2829db7b70c4f4d1c24ce38
}
