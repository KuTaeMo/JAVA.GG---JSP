package com.project.javagg.domain.board;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

public interface BoardRepository extends JpaRepository<Board, Integer> {

	@Modifying
	@Query(value = "UPDATE board SET readCount = readCount + 1 WHERE id = :id", nativeQuery = true)
	int updateReadCount(int id);
}
