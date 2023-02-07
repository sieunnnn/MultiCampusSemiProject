package com.mc.mvc.member.dto;

import java.time.LocalDateTime;
import lombok.Data;

@Data
public class Member {
	
	private String userId;
	private String password;
	private String email;
	private String grade;
	private String tell;
	private Boolean isLeave;
	private LocalDateTime regDate;
	private LocalDateTime rentableDate;
	
}
