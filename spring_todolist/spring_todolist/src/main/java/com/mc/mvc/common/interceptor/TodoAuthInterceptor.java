package com.mc.mvc.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;

import com.mc.mvc.board.dto.Board;
import com.mc.mvc.board.repository.BoardRepository;
import com.mc.mvc.common.code.ErrorCode;
import com.mc.mvc.common.exception.AuthException;
import com.mc.mvc.common.exception.HandlableException;
import com.mc.mvc.member.dto.Member;
import com.mc.mvc.todo.repository.TodoRepository;

import lombok.RequiredArgsConstructor;

public class TodoAuthInterceptor implements HandlerInterceptor{
	
	@Autowired
	private TodoRepository todoRepository;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		
		String[] uriArr = request.getRequestURI().split("/");
		
		switch (uriArr[2]) {
		case "todo-list":
			if(session.getAttribute("auth") == null) throw new AuthException(ErrorCode.UNAUTHORIZED_REQUEST);
			break;
		
		case "addTodo":
			if(session.getAttribute("auth") == null) throw new AuthException(ErrorCode.UNAUTHORIZED_REQUEST);
			break;
		
		case "remove":
			if(session.getAttribute("auth") == null) throw new AuthException(ErrorCode.UNAUTHORIZED_REQUEST);
			
			
		default:
			break;
		}

		return true;
	}

	
	
	
	
	
	
	
}
