package com.project.javagg.domain.reply;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ReplyRepository extends JpaRepository<Reply, Integer>{

	@Query(value = "select count(r.id) from reply r inner join board b on r.boardId = :id AND r.boardId = b.id;", nativeQuery = true)
	int countReply(int id);
}
