package com.model;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginService
 */
@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String ID = "monday";
		String PW = "12345";
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		// 세션객체 생성하는 방법
		HttpSession session = request.getSession();
		
		if(id.equals(ID) && pw.equals(PW)) {
			session.setAttribute("id", id);
			
			// 서블릿에서 특정 폴더 내에 있는 HTML 또는 JSP파일을 접근할 경우
			// '폴더명/파일명.확장자'로 정의해줘야 함
			response.sendRedirect("ex05_Login/main.jsp");
		}else {
			response.sendRedirect("ex05_Login/loginForm.html");
		}
		
		
	}

}
