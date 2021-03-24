package com.project.javagg.web;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.project.javagg.config.auth.PrincipalDetails;
import com.project.javagg.domain.reply.Reply;
import com.project.javagg.domain.reply.dto.ReplyWriteReqDto;
import com.project.javagg.service.ReplyService;
import com.project.javagg.web.dto.CMRespDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class ReplyController {

	private final ReplyService replyService;
	
	@PostMapping("/reply")
	public CMRespDto<?> write(@RequestBody ReplyWriteReqDto replyWriteReqDto, @AuthenticationPrincipal PrincipalDetails principalDetails) {
		replyWriteReqDto.setUser(principalDetails.getUser());
		
		Reply replyEntity = replyService.댓글쓰기(replyWriteReqDto);
		
		if(replyEntity == null) {
			return new CMRespDto<>(-1, null);
		} else {
			return new CMRespDto<>(1, replyEntity);
		}
	}
	
	@DeleteMapping("/reply/{id}")
	public CMRespDto<?> deleteById(@PathVariable int id, @AuthenticationPrincipal PrincipalDetails principalDetails) {
		
		int result = replyService.댓글삭제하기(id, principalDetails.getUser().getId());
		return new CMRespDto<>(result, null);
	}
}
