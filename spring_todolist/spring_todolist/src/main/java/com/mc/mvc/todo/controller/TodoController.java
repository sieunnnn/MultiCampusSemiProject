package com.mc.mvc.todo.controller;

import java.nio.charset.Charset;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.FileSystemResource;
import org.springframework.http.ContentDisposition;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mc.mvc.todo.dto.TodoList;
import com.mc.mvc.todo.service.TodoService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("todo")
public class TodoController {
	
	private final TodoService todoService;
	
//	@GetMapping("todo-list")
//	public void todoList() {
//		
//	}
//	
	@GetMapping("todo-list")
	public String todoList(Model model) {
		Map<String, Object> commandMap = todoService.selectTodoContentByTodoIdx();
		model.addAllAttributes(commandMap);
		System.out.println(commandMap);
		return "/todo/todo-list";
	}

	@PostMapping("addTodo")
    public String addTodo(TodoList todoList){
        //System.out.println(todo);

        todoList.setUserId("bjh");
        todoService.insertTodo(todoList);

        return "redirect:/todo/todo-list";
    }
	
	@PostMapping("remove")
	public String remove(int todoIdx) {
		todoService.deleteTodoByTodoIdx(todoIdx);
		return "redirect:/todo/todo-list";
	}
	
	
	//private final BoardService boardService;
	
//	@GetMapping("board-form")
//	public void boardForm() {}
//	
//	
//	@GetMapping("list")
//	public String boardList(Model model, @RequestParam(required = false, defaultValue = "1") int page) {
//		model.addAllAttributes(boardService.selectBoardList(page));
//		return "/board/board-list";
//	}
//	
//	@GetMapping("detail")
//	public String boardContent(int bdIdx, Model model) {
//		Map<String, Object> commandMap = boardService.selectBoardContentByBdIdx(bdIdx);
//		model.addAllAttributes(commandMap);
//		return "board/board-contents";
//	}
//	
//	@PostMapping("upload")
//	public String upload(@RequestParam List<MultipartFile> files,  Board board, @SessionAttribute Member auth) {
//		
//		board.setUserId(auth.getUserId());
//		boardService.insertBoard(board, files);
//		return "redirect:/board/list";
//	}
//	
//	@GetMapping("download")
//	public ResponseEntity<FileSystemResource> downloadFile(String flIdx){
//		
//		FileInfo fileInfo = boardService.selectFileInfo(flIdx);
//		
//		HttpHeaders headers = new HttpHeaders();
//		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
//		headers.setContentDisposition(ContentDisposition.builder("attachment")
//				.filename(fileInfo.getOriginFileName(), Charset.forName("utf-8"))
//				.build());
//		
//		FileSystemResource fsr = new FileSystemResource(fileInfo.getFullPath());
//		return ResponseEntity.ok().headers(headers).body(fsr);
//	}
//
//	@PostMapping("remove")
//	public String remove(int bdIdx) {
//		boardService.deleteBoardByBdIdx(bdIdx);
//		return "redirect:/index";
//	}
//	
//	@GetMapping("modify")
//	public String modify(int bdIdx, Model model) {
//		Map<String, Object> commandMap = boardService.selectBoardContentByBdIdx(bdIdx);
//		model.addAllAttributes(commandMap);
//		return "board/board-modify";
//	}
//	
//	@PostMapping("modify")
//	public String modify(Board board
//						, @RequestParam List<MultipartFile> fileList
//						, @RequestParam(name="delFiles", required = false) Optional<List<String>> delFilesOpt
//						, @SessionAttribute("auth") Member member) {
//		
//		List<String> delFiles = delFilesOpt.orElse(List.of());
//		board.setUserId(member.getUserId());
//		
//		boardService.updateBoard(board, fileList, delFiles);
//		
//		
//		return "redirect:/board/detail?bdIdx="+board.getBdIdx();
//		
//	}
	
	
	
	
	
	
	
	
	
	
	
	
}
