package com.project.javagg.domain.reply;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.CreationTimestamp;

import com.project.javagg.domain.board.Board;
import com.project.javagg.domain.user.User;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Builder
public class Reply {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@Lob
	private String content;
	
	@ManyToOne 
	@JoinColumn(name = "userId")
	private User user;
	
	@ManyToOne 
	@JoinColumn(name = "boardId")
	private Board board;
	
	@CreationTimestamp
	private Timestamp createDate;
}