package com.project.javagg.web.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CMRespDto<T> {
	private int code;
	private String msg;
	private T data;
	
	
	public CMRespDto(int code, T data) {
		this.code = code;
		this.data = data;
	}
	
	
}
