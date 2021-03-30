package com.project.javagg.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
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
	
	@Transactional
	public int 댓글개수(int id) {
		System.out.println(replyRepository.countReply(id));
		return replyRepository.countReply(id);
	}
	
	@javax.transaction.Transactional
	public Page<Reply> 댓글리스트(Pageable pageable) {
		return replyRepository.findAll(pageable);
	}

	@javax.transaction.Transactional
	public Page<Reply> 댓글리스트11(int id, Pageable pageable) {
		return replyRepository.findAllById(id, pageable);
	}
	
}
