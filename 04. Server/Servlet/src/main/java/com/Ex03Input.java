package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex03Input
 */
@WebServlet("/Ex03Input")
public class Ex03Input extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// ex03input.html에서 작성 text값을 console에 출력
		// 웹에서는 데이터 타입이 존재하지 않음
		// --> 웹에서 넘어온 데이터 타입은 무조건 텍스트 형식 => 문자열 자료형
		String talk = request.getParameter("talk");
		System.out.println(talk);
		
	}

}
