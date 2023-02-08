package com.mc.mvc.common.code;

public enum Code {
	
	DOMAIN("http://localhost:8080"),
	SMTP_FROM("rkqtl_@naver.com"),
	
	// 배포시 servlet-context.xml의 resources 경로도 함께 수정
	STORAGE_PATH("E:\\Program Files\\CODE\\storage\\");

	public String desc;
	
	Code(String desc) {
		this.desc = desc;
	}
	
	@Override
	public String toString() {
		return desc;
	}
	
}
