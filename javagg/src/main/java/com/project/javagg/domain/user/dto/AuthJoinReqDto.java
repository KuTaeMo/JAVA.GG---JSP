package com.project.javagg.domain.user.dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import com.project.javagg.domain.user.User;

import lombok.Data;

@Data
public class AuthJoinReqDto {
	
	@NotBlank(message = "이메일을 입력하세요.")
	@Size(max = 50, message = "이메일의 길이가 너무 깁니다.")
	private String email;
	
	@NotBlank(message = "아이디를 입력하세요.")
	@Size(max = 20, message = "아이디의 길이가 너무 깁니다.")
	private String username;
	
	@NotBlank(message = "비밀번호를 입력하세요.")
	@Size(max = 20, message = "비밀번호의 길이가 너무 깁니다.")
	private String password;

	public User toEntity() {
		return User.builder()
				.email(email)
				.username(username)
				.password(password)
				.build();
	}
}
