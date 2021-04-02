package com.project.javagg.domain.like;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

public interface LikesRepository extends JpaRepository<Likes, Integer>{

	@Modifying
	@Query(value = "INSERT INTO likes(boardId, userId) VALUES (:boardId, :principalId)", nativeQuery = true)
	int mLike(int boardId, int principalId);
	
	@Modifying
	@Query(value = "DELETE FROM likes WHERE boardId = :boardId AND userId = :principalId", nativeQuery = true)
	int mUnLike(int boardId, int principalId);
	
	
}
