package com.project.javagg.web;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.data.domain.Sort;

import com.project.javagg.config.auth.PrincipalDetails;
import com.project.javagg.domain.board.Board;
import com.project.javagg.domain.board.dto.BoardWriteReqDto;
import com.project.javagg.service.BoardService;
import com.project.javagg.service.ReplyService;
import com.project.javagg.web.dto.CMRespDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class BoardController {

	private final BoardService boardService;
	private final ReplyService replyService;
	
	@GetMapping("/community")
	public String findAll(Model model, @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 5) Pageable pageable,
			@AuthenticationPrincipal PrincipalDetails principalDetails) {
		
		Page<Board> boards = boardService.전체리스트(pageable);
		
		model.addAttribute("boards", boards);
		return "layout/community/mainBoard";
	}
	
	@GetMapping("/community/writeBoard")
	public String writeForm() {
		return "layout/community/writeBoard";
	}
	
	@PostMapping("/board")
	public String write(BoardWriteReqDto boardWriteReqDto, @AuthenticationPrincipal PrincipalDetails principalDetails) {
		Board board = boardWriteReqDto.toEntity();
		board.setUser(principalDetails.getUser());
		
		Board boardEntity = boardService.글작성하기(board);
		
		if(boardEntity == null) {
			return "/community/writeBoard";
		} else {
			return "redirect:/community";
		}
	}
	
	@GetMapping("/board/{id}")
	public String detailBoard(@PathVariable int id, Model model) {
		Board boardEntity = boardService.글상세보기(id);
		model.addAttribute("board", boardEntity);
		model.addAttribute("view", boardService.조회수증가(id));
		model.addAttribute("replys", replyService.댓글개수(id));
		System.out.println("좀 되라 : " + id);
		return "layout/community/detailBoard";
	}
	
	@DeleteMapping("/board/{id}")
	public @ResponseBody CMRespDto<?> deleteById(@PathVariable int id) {
		boardService.글삭제하기(id);
		return new CMRespDto<>(1, null);
	}
	
	@GetMapping("/board/{id}/updateBoard")
	public String updateBoard(@PathVariable int id, Model model) {
		Board boardEntity = boardService.글상세보기(id);
		model.addAttribute("board", boardEntity);
		return "layout/community/updateBoard";
	}
	
	@PutMapping("/board/{id}")
	public @ResponseBody CMRespDto<?> update(@PathVariable int id, @RequestBody BoardWriteReqDto boardWriteReqDto) {
		boardService.글수정하기(id, boardWriteReqDto);
		return new CMRespDto<>(1, null);
	}

}
