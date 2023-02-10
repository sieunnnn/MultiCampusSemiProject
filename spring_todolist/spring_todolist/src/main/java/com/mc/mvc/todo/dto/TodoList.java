package com.mc.mvc.todo.dto;


import lombok.Data;

@Data
public class TodoList {

	private Integer todoIdx;
	private String userId;
	private String todo;
	private Boolean isClear;

}
