package com.project.javagg.domain.reply.dto;

import com.project.javagg.domain.reply.Reply;
import com.project.javagg.domain.user.User;

import lombok.Data;

@Data
public class ReplyWriteReqDto {

	private User user;
	private String content;
	private int boardId;
	
	public Reply toEntity() {
		return Reply.builder()
				.content(content)
				.user(user)
				.build();
	}
}
