package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex08Join
 */
@WebServlet("/Ex08Join")
public class Ex08Join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("EUC-KR");
		response.setCharacterEncoding("EUC-KR");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String gender = request.getParameter("gender");
		String birthday = request.getParameter("birthday");
		String color = request.getParameter("color");
		String country = request.getParameter("country");
		String talk = request.getParameter("talk");
		String []hobby = request.getParameterValues("hobby");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		out.print("<body>");
		out.print("<h3>ID : " + id + "</h3>");
		out.print("<h3>PW : " + pw + "</h3>");
		out.print("<h3>NAME : " + name + "</h3>");
		out.print("<h3>E-MAIL : " + email + "</h3>");
		out.print("<h3>TEL : " + tel + "</h3>");
		out.print("<h3>GENDER : " + gender + "</h3>");
		out.print("<h3>HOBBY : ");
		for(int i = 0; i < hobby.length; i++) {
			out.print(hobby[i] + "\t");
		}
		out.print("</h3>");
		out.print("<h3>BIRTHDAY : " + birthday + "</h3>");
		out.print("<h3>COLOR : " + color + "</h3>");
		out.print("<h3>COUNTRY : " + country + "</h3>");
		out.print("<h3>하고싶은말 : " + talk + "</h3>");

		out.print("</body>");
		out.print("</html>");
		
		
	}

}
