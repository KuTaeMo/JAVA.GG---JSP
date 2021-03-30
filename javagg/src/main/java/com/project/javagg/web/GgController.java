package com.project.javagg.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@Controller
public class GgController {
	
	@GetMapping("/")
	public String test() {
		return "layout/index";
	}
	
	@GetMapping("/test1")
	public String testtab() {
		return "layout/searchMatchTest";
	}
	
	@GetMapping("/test")
	public String testtab1() {
		return "layout/searchSpecific";
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
	public String searchFromHome(@RequestBody String gamername, Model model) {
		// 검색한 이름 가져와서 검색 내용 바로 띄우기
		String[] searchname=gamername.split("=");
		String name=searchname[1];

		System.out.println(name);
		model.addAttribute("gamername",name);
		return "layout/main/search";
	}
	
	@GetMapping("/stats")
	public String stats() {
		return "layout/stats/stats";
	}
	
	@GetMapping("/ranking")
	public String ranking() {
		return "layout/ranking/ranking";
	}
	
	
}
