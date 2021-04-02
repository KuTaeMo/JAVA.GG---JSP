package com.project.javagg.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.javagg.domain.like.LikesRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class LikesService {

	private final LikesRepository likesRepository;

	@Transactional
	public void 좋아요(int boardId, int principalId) {
		likesRepository.mLike(boardId, principalId);
	}
	
	@Transactional
	public void 싫어요(int boardId, int principalId) {
		likesRepository.mUnLike(boardId, principalId);
	}
}
