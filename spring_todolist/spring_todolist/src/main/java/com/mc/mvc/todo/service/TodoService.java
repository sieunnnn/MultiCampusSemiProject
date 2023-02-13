package com.mc.mvc.todo.service;

import java.util.Map;

import com.mc.mvc.member.dto.Member;
import com.mc.mvc.todo.dto.TodoList;

public interface TodoService {

	void insertTodo(TodoList todolist);

//	FileInfo selectFileInfo(String fIdx);
//
	Map<String, Object> selectTodoContentByTodoIdx(String userId);
//
//	Map<String, Object> selectBoardContentByBdIdx(int bdIdx);
//
	void deleteTodoByTodoIdx(int todoIdx);
//
//	void updateBoard(Board board, List<MultipartFile> fileList, List<String> delFiles);

}
