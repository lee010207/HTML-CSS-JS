package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex04ImgSelect
 */
@WebServlet("/Ex04ImgSelect")
public class Ex04ImgSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("EUC-KR");
		
		String select = request.getParameter("select");
		System.out.println(select);
		
		PrintWriter out =response.getWriter();
		
		out.print("<html>");
		out.print("<body>");
		
		String path ="";
		
		if(select.equals("1")) {
			out.print("<h1>배불러 배 두웅두웅<h1>");
			path = "img/a.jpg";
		}else if(select.equals("2")) {
			out.print("<h1>에베베레레레레<h1>");
			path = "img/b.jpg";
		}else if(select.equals("3")) {
			out.print("<h1>히얍 이얍<h1>");
			path = "img/c.jpg";
		}
		out.print("<img src='"+path+"'>");
		
		
		out.print("</body>");
		out.print("</html>");
		
		// select(name)를 정수형으로 형변환해서 조건문에 쓸 수도 있음
		
		
		
		
	}

}
