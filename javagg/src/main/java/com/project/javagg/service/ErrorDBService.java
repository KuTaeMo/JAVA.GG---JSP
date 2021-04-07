package com.project.javagg.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.javagg.handler.domain.ErrorDB;
import com.project.javagg.handler.domain.ErrorDBRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class ErrorDBService {

	private final ErrorDBRepository errorDBRepository;
	
	
	public void 에러저장(List<ErrorDB> errorDB) {
		errorDBRepository.saveAll(errorDB);
	}
}
