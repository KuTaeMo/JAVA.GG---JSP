package com.project.javagg.handler;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.project.javagg.handler.domain.ErrorDB;

import lombok.Data;

@Data
@Component
public class ExceptionList {
	
	public List<ErrorDB> exList = new ArrayList<>();
	
	public void addExceptionList(String str) {
		new ErrorDB();
		exList.add(ErrorDB.builder().error(str).build());
		System.out.println("에러 등록됨 : "+str);
	}
}
