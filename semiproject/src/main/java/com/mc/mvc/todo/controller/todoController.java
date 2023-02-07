package com.mc.mvc.todo.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("todo")
public class todoController {

	@GetMapping("/todo")
	public void todo() {
		
	}
	
	@GetMapping("calendar")
	public String calendar() {
		
		return "todo/calendar"; 
			
	}
	
	
}