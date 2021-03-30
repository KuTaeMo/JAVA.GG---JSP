package com.project.javagg.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.javagg.domain.board.Board;
import com.project.javagg.domain.board.BoardRepository;
import com.project.javagg.domain.board.dto.BoardWriteReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class BoardService {

	private final BoardRepository boardRepository;
	
	public Page<Board> 전체리스트(Pageable pageable) {
		return boardRepository.findAll(pageable);
	}
	
	@Transactional
	public Board 글작성하기(Board board) {
		return boardRepository.save(board);
	}
	
	@Transactional
	public Board 글상세보기(int id) {
		return boardRepository.findById(id).get();
	}
	
	@Transactional
	public int 조회수증가(int id) {
		return boardRepository.updateReadCount(id);
	}
	
	
	
	@Transactional
	public void 글삭제하기(int id) {
		boardRepository.deleteById(id);
	}
	
	@Transactional
	public void 글수정하기(int id, BoardWriteReqDto boardWriteReqDto) {
		Board boardEntity = boardRepository.findById(id).get();
		boardEntity.setTitle(boardWriteReqDto.getTitle());
		boardEntity.setContent(boardWriteReqDto.getContent());
	}
}
