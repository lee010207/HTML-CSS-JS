package com.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;

/**
 * Servlet implementation class loginService
 */
@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// 사용자가 입력한 id, pw를 가져오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = null;
		
		// id,pw를 이용해서 데이터베이스 조회하기
		// 회원데이터가 있다면 nick데이터 가져오기
		MemberDAO dao = new MemberDAO();
		
		nick = dao.login(id, pw);
		
		if(nick != null){
			// get방식(url뒤에 데이터가 붙어서) => 쿼리스트링 방식(형태)
			nick = URLEncoder.encode(nick, "EUC-KR");
			response.sendRedirect("loginSuccess.jsp?nick="+nick);
		}else{
			response.sendRedirect("login.jsp");
		}
		
		
	}

}
