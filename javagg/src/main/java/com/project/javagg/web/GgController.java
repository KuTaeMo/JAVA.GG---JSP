package com.project.javagg.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@Controller
public class GgController {
	
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

	@GetMapping("/ranking")
	public String ranking() {
		return "layout/ranking/ranking";
	}
	
	
}
