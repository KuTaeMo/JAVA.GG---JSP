package com.project.javagg.handler;

import java.sql.SQLIntegrityConstraintViolationException;

import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestController;

import com.project.javagg.utils.Script;
import com.project.javagg.web.dto.CMRespDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
@ControllerAdvice
public class GlobalExceptionHandler {
	
	private final ExceptionList exceptionList;

	@ExceptionHandler(value = DataIntegrityViolationException.class)
	public CMRespDto<?> dataIntegrityViolation(Exception e){ // e 는 오류난 정보를 다 들고있음!
		return new CMRespDto<>(-1, null);
	}
	
	@ExceptionHandler(value = IllegalArgumentException.class)
	public String illegalArgument(Exception e){ 
		return Script.href("로그인을 해야합니다.", "/loginForm");
	}
	
	@ExceptionHandler(value = EmptyResultDataAccessException.class)
	public CMRespDto<?> emptyResultDataAccess(Exception e){ 
		return new CMRespDto<>(-1, null);
	}
	
	@ExceptionHandler(value = MyAuthenticationException.class)
	public CMRespDto<?> myAuthenticationException(Exception e){ 
		return new CMRespDto<>(-1, null);
	}
	
	@ExceptionHandler(value = SQLIntegrityConstraintViolationException.class)
	public String sQLIntegrityConstraintViolationException(Exception e){ 
		return Script.back("중복된 아이디가 있습니다.");
	}
	
	@ExceptionHandler(value = Exception.class)
	public CMRespDto<?> hello(Exception e) {
		exceptionList.addExceptionList(e.getMessage());
		return new CMRespDto<>(-1, "오류남");
	}
}
