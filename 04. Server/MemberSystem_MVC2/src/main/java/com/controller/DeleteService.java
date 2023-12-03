package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;
import com.model.MemberDTO;

/**
 * Servlet implementation class DeleteService
 */
@WebServlet("/DeleteService")
public class DeleteService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		// MemberDTO dto = new MemberDTO(id, pw);
		
		// JDBC를 사용하는 기능(MemberDAO 메소드 활용)은 전부 dao가 처리 
		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.delete(new MemberDTO(id, pw));
		
		if(cnt > 0) {
			response.sendRedirect("main.jsp");
		}else {
			response.sendRedirect("delete.jsp");
		}
		
	}

}
