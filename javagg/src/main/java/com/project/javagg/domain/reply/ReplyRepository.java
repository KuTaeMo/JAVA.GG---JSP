package com.project.javagg.domain.reply;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ReplyRepository extends JpaRepository<Reply, Integer>{

	@Query(value = "select count(r.id) from reply r inner join board b on r.boardId = :id AND r.boardId = b.id;", nativeQuery = true)
	int countReply(int id);

	@Query(value = "select * from reply r inner join board b on r.boardId = b.id where r.boardId = :id", nativeQuery = true)
	Page<Reply> findAllById(int id, Pageable pageable);

}
