package com.mc.mvc.todo.repository;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.mc.mvc.todo.dto.TodoList;

@Repository
public interface TodoRepository {

	@Insert("insert into todo(user_id, todo) values(#{userId}, #{todo})")
	@Options(useGeneratedKeys = true, keyProperty = "todoIdx")
	void insertTodo(TodoList todolist);

	
}
