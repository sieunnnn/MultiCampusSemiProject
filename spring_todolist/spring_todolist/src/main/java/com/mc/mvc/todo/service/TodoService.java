package com.mc.mvc.todo.service;

import java.util.Map;

import com.mc.mvc.todo.dto.TodoList;

public interface TodoService {

	void insertTodo(TodoList todolist);

//	FileInfo selectFileInfo(String fIdx);
//
	Map<String, Object> selectTodoContentByTodoIdx();
//
//	Map<String, Object> selectBoardContentByBdIdx(int bdIdx);
//
	void deleteTodoByTodoIdx(int bdIdx);
//
//	void updateBoard(Board board, List<MultipartFile> fileList, List<String> delFiles);

}
