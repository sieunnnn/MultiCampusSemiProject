package com.mc.mvc.todo.service;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.mc.mvc.member.dto.Member;
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
	public Map<String, Object> selectTodoContentByTodoIdx(String userId) {
		List<TodoList> todolist = todoRepository.selectTodo(userId);
		System.out.println(userId);
		return Map.of("todo", todolist);
	}
	
	
	@Override
	public void deleteTodoByTodoIdx(int todoIdx) {
		
		// 1. 삭제
		todoRepository.deleteTodoByTodoIdx(todoIdx);
		
	}
	
	
	
	
	
	
	
	
	
	
}
