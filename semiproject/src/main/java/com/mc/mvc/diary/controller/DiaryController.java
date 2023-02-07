package com.mc.mvc.diary.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

@RequestMapping(value="diary")
public class DiaryController {
	@GetMapping("/diary")
	public void todo() {
		
	}
	
}
