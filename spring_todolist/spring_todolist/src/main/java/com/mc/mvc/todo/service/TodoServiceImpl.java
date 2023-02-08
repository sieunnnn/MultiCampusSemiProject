package com.mc.mvc.todo.service;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mc.mvc.board.dto.Board;
import com.mc.mvc.board.repository.BoardRepository;
import com.mc.mvc.common.code.Code;
import com.mc.mvc.common.code.ErrorCode;
import com.mc.mvc.common.exception.AuthException;
import com.mc.mvc.common.exception.HandlableException;
import com.mc.mvc.common.file.FileInfo;
import com.mc.mvc.common.file.FileRepository;
import com.mc.mvc.common.file.FileUtil;
import com.mc.mvc.common.paging.Paging;
import com.mc.mvc.todo.dto.TodoList;
import com.mc.mvc.todo.repository.TodoRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class TodoServiceImpl implements TodoService{

	private final TodoRepository todoRepository;
	@Override
	public void insertTodo(TodoList todolist) {
		todoRepository.insertTodo(todolist);
	}
	
	
	@Override
	public Map<String, Object> selectTodoContentByTodoIdx() {
		List<TodoList> todolist = todoRepository.selectTodo();
		
		return Map.of("todo", todolist);
	}
	
	
	@Override
	public void deleteTodoByTodoIdx(int todoIdx) {
		
		// 1. 삭제
		todoRepository.deleteTodoByTodoIdx(todoIdx);
		
	}
	
	
	
	
	
	
	
	
	
	
}
