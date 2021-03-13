package com.project.javagg.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class GgController {

	@GetMapping("/home")
	public String home() {
		return "layout/home";
	}
	
	@GetMapping("/stats")
	public String stats() {
		return "layout/stats";
	}
	
	@GetMapping("/ranking")
	public String ranking() {
		return "layout/ranking";
	}
	
	@GetMapping("/community")
	public String community() {
		return "layout/community";
	}
	
	@PostMapping("/login")
	public String login() {
		return "layout/login";
	}
	
	@PostMapping("/join")
	public String join() {
		return "layout/join";
	}
}
