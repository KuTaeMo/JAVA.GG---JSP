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
	
	public int 댓글갯수뽑기(int id) {
		return boardRepository.replyCount(id);
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
	
	@Transactional
	public Board 좋아요증가(int boardId, int principalId) {
		
		Board board = new Board();
		int likeCount = boardRepository.updateLikeCount(principalId);
		board.setLikeCount(likeCount);
		
		
		
		return board;
	}
	
	@Transactional
	public Board 좋아요감소(int boardId, int principalId) {
		
		Board board = new Board();
		int likeCount = boardRepository.updateLikeCountDown(principalId);
		board.setLikeCount(likeCount);
			
		if(boardRepository.realLike(boardId) == principalId) {
			board.setLikeState(true);
		} else {
			board.setLikeState(false);
		}
		
		return board;
	}
	
	@Transactional
	public Page<Board> 커뮤니티타입리스트(String type, Pageable pageable) {
		return boardRepository.boardCommunityTypeList(type, pageable);
	}
	
}
