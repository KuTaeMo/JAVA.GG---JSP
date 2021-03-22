package com.project.javagg.domain.user.dto;

import com.project.javagg.domain.user.User;

import lombok.Data;

@Data
public class AuthJoinReqDto {
	private String email;
	private String username;
	private String password;

	public User toEntity() {
		return User.builder()
				.email(email)
				.username(username)
				.password(password)
				.build();
	}
}
