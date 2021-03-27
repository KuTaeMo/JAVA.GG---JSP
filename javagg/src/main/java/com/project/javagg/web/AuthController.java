package com.project.javagg.web;

import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.javagg.domain.user.dto.AuthJoinReqDto;
import com.project.javagg.service.AuthService;
import com.project.javagg.utils.Script;

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
	public @ResponseBody  String join(AuthJoinReqDto authJoinReqDto) {
		
		try {
			authService.회원가입(authJoinReqDto.toEntity());
			return Script.href("회원가입을 성공하였습니다.", "/loginForm");
		} catch (DataIntegrityViolationException e) {
			return Script.back("중복된 아이디가 있습니다.");
		}
	}
}
