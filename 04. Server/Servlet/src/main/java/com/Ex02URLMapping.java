package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex02URLMapping
 */
@WebServlet("/yaho")
// --> 자바파일 + URL
// 여기 값을 바꿔서 URL mapping값 수정가능(Servlet 주소를 바꿔줄 수 있음)
public class Ex02URLMapping extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Hello");
		
		// URL에 있어야 웹에서 실행됨 
		// --> URL Mapping : 자바파일에 URL을 연결시키는 것
		// 자바파일을 웹에서 실행할 수 있게 URL을 달아주는 것
		// URLMapping : 클래스명과 똑같이 설정됨
		// --> 생성 시에  URL mappings 더블클릭해서 수정할 수 있음
		
	}

}
