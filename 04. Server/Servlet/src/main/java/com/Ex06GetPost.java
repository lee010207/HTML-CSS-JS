package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex06GetPost
 */
@WebServlet("/Ex06GetPost")
public class Ex06GetPost extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// get방식, post방식에 따라 기능을 다르게 호출할 수 있음
	// service는 get,post 둘다 같이 호출
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Get방식 메서드 호출");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Post방식 메서드 호출");
		// Post방식의 인코딩
		req.setCharacterEncoding("EUC-KR");
		String post = req.getParameter("post");
		System.out.println(post);

	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		
//		String get = request.getParameter("get");
//		System.out.println(get);
//	}

}
