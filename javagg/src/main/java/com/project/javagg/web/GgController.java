package com.project.javagg.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

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
	
	@GetMapping("/search")
	public String search() {
		return "layout/main/search";
	}
	
	@PostMapping("/search")
	public void searchFromHome(@RequestBody String username) {
		// 검색한 이름 가져와서 검색 내용 바로 띄우기
	}
	
	@GetMapping("/stats")
	public String stats() {
		return "layout/stats/stats";
	}
	
	@GetMapping("/ranking")
	public String ranking() {
		return "layout/ranking/ranking";
	}
	
	@GetMapping("/mainBoard")
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
