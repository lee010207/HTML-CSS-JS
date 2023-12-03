package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex01Ajax
 */
@WebServlet("/ajax")
public class Ex01Ajax extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String data = request.getParameter("data");
		String txt = request.getParameter("txt");
		
		System.out.println("서버에 요청이 들어옴");
		System.out.println("첫번째 데이터 : " + data);
		System.out.println("두번째 데이터 : " + txt);
		
		
		// 요청한 곳으로 데이터 응답해주기
		PrintWriter out = response.getWriter();
		// out.print("success");
		
		// JSON 형식으로 데이터 응답해주기
		// JSON 형식 : {"data" : "Hello","num":1234,"bool":true,...)
		// - key는 반드시 문자열로 정의해야 한다.
		
		// 큰따옴표 앞에 이스케이프 문자 \를 붙여줘서 큰따옴표 분리
		out.print("{\"data\":\"Hello\", \"num\":1234}");
		
	}

}
