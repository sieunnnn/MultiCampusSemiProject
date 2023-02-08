package com.mc.mvc.todo.repository;

import java.util.List;

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
	
//	@Select("select * from todo where is_clear = 0 and todo_idx = #{todoIdx}")
//	TodoList selectTodoByTodoIdx(int todoIdx);
	
	@Select("select * from todo where is_clear = 0")
	List<TodoList> selectTodo();
	
	@Update("update todo set is_clear = 1 where todo_idx = #{todoIdx}")
	void deleteTodoByTodoIdx(int todoIdx);
	
	@Select("select count(*) from todo where is_clear = 0")
	int countAllTodo();

	
}
