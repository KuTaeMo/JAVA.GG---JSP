package com.project.javagg.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.project.javagg.domain.user.dto.AuthJoinReqDto;
import com.project.javagg.service.AuthService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class AuthController {

	private final AuthService authService;
	
	@GetMapping("/loginForm")
	public String loginForm() {
		return "layout/common/loginForm";
	}
	
	@GetMapping("/joinForm")
	public String joinForm() {
		return "layout/common/joinForm";
	}
	
	@PostMapping("/join")
	public String join(AuthJoinReqDto authJoinReqDto) {
		authService.회원가입(authJoinReqDto.toEntity());
		return "redirect:/loginForm";
	}
}
