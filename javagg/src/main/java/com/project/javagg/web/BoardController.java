package com.project.javagg.web;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
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

import com.project.javagg.config.auth.PrincipalDetails;
import com.project.javagg.domain.board.Board;
import com.project.javagg.domain.board.dto.BoardWriteReqDto;
import com.project.javagg.domain.reply.Reply;
import com.project.javagg.service.BoardService;
import com.project.javagg.service.LikesService;
import com.project.javagg.service.ReplyService;
import com.project.javagg.utils.Script;
import com.project.javagg.web.dto.CMRespDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class BoardController {

	private final BoardService boardService;
	private final ReplyService replyService;
	private final LikesService likesService;
	
	@GetMapping("/home")
	public String homeBoardPage(Model model) {
		
		List<Board> homeBoard = boardService.홈게시글();
		model.addAttribute("homeBoard", homeBoard);
		
		List<Board> homeBoard2 = boardService.홈게시글2(); 
		model.addAttribute("homeBoard2", homeBoard2);
		return "layout/main/home";
	}
	

	@GetMapping("/community")
	public String findAll(Model model, @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 5) Pageable pageable,
			@AuthenticationPrincipal PrincipalDetails principalDetails) {
		
		
		Page<Board> boards = boardService.전체리스트(pageable);
		
		model.addAttribute("boards", boards);
		model.addAttribute("likes", boardService.좋아요증가(principalDetails.getUser().getId()));

		return "layout/community/mainBoard";
	}
	
	@GetMapping("/community/hot")
	public String findAllHot(Model model, @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 5) Pageable pageable,
			@AuthenticationPrincipal PrincipalDetails principalDetails) {
		
		
		Page<Board> boards = boardService.인기게시슬(pageable);
		
		model.addAttribute("boards", boards);
		model.addAttribute("likes", boardService.좋아요증가(principalDetails.getUser().getId()));

		return "layout/community/mainBoard";
	}
	
	@GetMapping("/community/humor")
	public String findHumorAll(Model model, @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 5) Pageable pageable,
			@AuthenticationPrincipal PrincipalDetails principalDetails, String type) {
		
		type = "유머";
		
		Page<Board> boards = boardService.커뮤니티타입리스트(type, pageable);
		model.addAttribute("boards", boards);
		model.addAttribute("likes", boardService.좋아요증가(principalDetails.getUser().getId()));

		return "layout/community/humorBoard";
	}
	
	@GetMapping("/community/humor/hot")
	public String findHotHumorAll(Model model, @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 5) Pageable pageable,
			@AuthenticationPrincipal PrincipalDetails principalDetails, String type) {
		
		type = "유머";
		
		Page<Board> boards = boardService.인기타입게시슬(type, pageable);
		model.addAttribute("boards", boards);
		model.addAttribute("likes", boardService.좋아요증가(principalDetails.getUser().getId()));

		return "layout/community/humorBoard";
	}
	
	@GetMapping("/community/free")
	public String findFreeAll(Model model, @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 5) Pageable pageable,
			@AuthenticationPrincipal PrincipalDetails principalDetails, String type) {
		
		type = "자유";
		
		Page<Board> boards = boardService.커뮤니티타입리스트(type, pageable);
		model.addAttribute("boards", boards);
		model.addAttribute("likes", boardService.좋아요증가(principalDetails.getUser().getId()));

		return "layout/community/freeBoard";
	}
	
	@GetMapping("/community/free/hot")
	public String findHotFreeAll(Model model, @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 5) Pageable pageable,
			@AuthenticationPrincipal PrincipalDetails principalDetails, String type) {
		
		type = "자유";
		
		Page<Board> boards = boardService.인기타입게시슬(type, pageable);
		model.addAttribute("boards", boards);
		model.addAttribute("likes", boardService.좋아요증가(principalDetails.getUser().getId()));

		return "layout/community/freeBoard";
	}
	
	
	@GetMapping("/community/writeBoard")
	public String writeForm() {
		return "layout/community/writeBoard";
	}
	
	// 게시글 작성
	@PostMapping("/board")
	public String write(BoardWriteReqDto boardWriteReqDto, @AuthenticationPrincipal PrincipalDetails principalDetails, String commType) {
		Board board = boardWriteReqDto.toEntity();
		board.setUser(principalDetails.getUser());
		commType = board.getCommunityType();
		board.setCommunityType(commType);
		
		Board boardEntity = boardService.글작성하기(board);
		
		if(boardEntity == null) {
			return "/community/writeBoard";
		} else {
			return "redirect:/community";
		}
	}

	
	@GetMapping("/board/{id}")
	public String detailBoard(@PathVariable int id, Model model,@AuthenticationPrincipal PrincipalDetails principalDetails, @PageableDefault(sort = "id", direction = Sort.Direction.DESC, size = 5) Pageable pageable) {
		Board boardEntity = boardService.글상세보기(id);
		boardEntity.setReplyCount(boardService.댓글갯수뽑기(id));
		model.addAttribute("board", boardEntity);
		model.addAttribute("view", boardService.조회수증가(id));
		model.addAttribute("replys", replyService.댓글개수(id));
		
		model.addAttribute("likes", boardService.좋아요증가(principalDetails.getUser().getId()));
		Page<Reply> replylist = replyService.댓글리스트11(id, pageable);

		model.addAttribute("replylist", replylist);
		
		System.out.println("좀 되라 : " + id);
		return "layout/community/detailBoard";
	}
	
	@DeleteMapping("/board/{id}") 
	public @ResponseBody CMRespDto<?> deleteById(@PathVariable int id) {
		boardService.글삭제하기(id);
		return new CMRespDto<>(1,Script.reload("삭제에 성공하였습니다."), null);
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
		return new CMRespDto<>(1,Script.reload("수정에 성공하였습니다.") ,null);
	}
	
	@PostMapping("/board/{boardId}/likes")
	public @ResponseBody CMRespDto<?> like(@AuthenticationPrincipal PrincipalDetails principalDetails, @PathVariable int boardId){
		likesService.좋아요(boardId, principalDetails.getUser().getId());
		
		return new CMRespDto<>(1, null);
	}
	
	@DeleteMapping("/board/{boardId}/likes")
	public @ResponseBody CMRespDto<?> unLike(@AuthenticationPrincipal PrincipalDetails principalDetails, @PathVariable int boardId){
		likesService.싫어요(boardId, principalDetails.getUser().getId());
		return new CMRespDto<>(1, null);
	}
}
