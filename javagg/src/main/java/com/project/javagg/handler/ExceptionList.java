package com.project.javagg.handler;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class ExceptionList {
	
	public final static List<String> exList = new ArrayList<>();
	
	public static void addExceptionList(String str) {
		exList.add(str);
	}

}
