package com.project.javagg.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.javagg.domain.board.Board;
import com.project.javagg.domain.board.BoardRepository;
import com.project.javagg.domain.reply.Reply;
import com.project.javagg.domain.reply.ReplyRepository;
import com.project.javagg.domain.reply.dto.ReplyWriteReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class ReplyService {

	private final ReplyRepository replyRepository;
	private final BoardRepository boardRepository;
	
	@Transactional
	public Reply 댓글쓰기(ReplyWriteReqDto replyWriteReqDto) {
		
		Board boardEntity = boardRepository.findById(replyWriteReqDto.getBoardId()).orElseThrow(() -> {
			return new IllegalArgumentException("id를 찾을 수 없습니다.");
		});
		
		Reply reply = replyWriteReqDto.toEntity();
		reply.setBoard(boardEntity);
		
		return replyRepository.save(reply);
	}
	
	@Transactional
	public int 댓글삭제하기(int id, int userId) {
		Reply replyEntity = replyRepository.findById(id).orElseThrow(() -> {
			return new IllegalArgumentException("id를 찾을 수 없습니다.");
		});
		
		if(replyEntity.getUser().getId() == userId) {
			replyRepository.deleteById(id);
			return 1;
		} else {
			return -1;
		}
	}
}
