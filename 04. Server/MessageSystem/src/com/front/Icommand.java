package com.front;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Icommand {

	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	// 추상메서드 : 이름만 있는 메서드 , 기능(내용) 구현 X : { } 없이 ;으로 끝나는 메서드
}
