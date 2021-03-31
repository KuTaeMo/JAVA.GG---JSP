package com.project.javagg.domain.board.dto;

import com.project.javagg.domain.board.Board;

import lombok.Data;

@Data
public class BoardWriteReqDto {

	private String title;
	private String content;
	private String communityType;
	
	public Board toEntity() {
		return Board.builder()
				.title(title)
				.content(content)
				.communityType(communityType)
				.build();
	}
}
