package com.project.javagg.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class GgController {
	
	@GetMapping("/")
	public String test() {
		return "layout/index";
	}

	@GetMapping("/home")
	public String home() {
		return "layout/main/home";
	}
	
	@GetMapping("/stats")
	public String stats() {
		return "layout/stats/stats";
	}
	
	@GetMapping("/ranking")
	public String ranking() {
		return "layout/ranking/ranking";
	}
	
	@GetMapping("/mainBord")
	public String community() {
		return "layout/community/mainBoard";
	}
	
	@GetMapping("/loginForm")
	public String login() {
		return "layout/common/loginForm";
	}
	
	@GetMapping("/joinForm")
	public String join() {
		return "layout/common/joinForm";
	}
	
	@GetMapping("/detailBoard")
	public String detailBoard() {
		return "layout/community/detailBoard";
	}
	
	@GetMapping("/writeBoard")
	public String writeBoard() {
		return "layout/community/writeBoard";
	}
}
