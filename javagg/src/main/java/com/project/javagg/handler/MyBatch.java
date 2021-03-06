package com.project.javagg.handler;

import java.util.List;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.project.javagg.handler.domain.ErrorDB;
import com.project.javagg.handler.domain.ErrorDBRepository;
import com.project.javagg.service.ErrorDBService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Component
public class MyBatch {

	private final ExceptionList exceptionList;
	private final ErrorDBService errorDBService;
	
	@Scheduled(fixedDelay = 1000 * 60 * 60) // Cron 정기적 실행
	public void excute() {
		System.out.println("실행 되니?");
		List<ErrorDB> exList = exceptionList.getExList();
		// DB에 insert 하기
		
		errorDBService.에러저장(exList);;
		
		exList.clear();
	}
}
