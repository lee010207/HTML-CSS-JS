package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex05MakeTable
 */
@WebServlet("/Ex05MakeTable")
public class Ex05MakeTable extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String room = request.getParameter("room");
		PrintWriter out = response.getWriter();
		int num = Integer.parseInt(room);
		
		out.print("<html>");
		out.print("<body>");
		out.print("<table border='1px soild black'>");
		out.print("<tr>");
		for(int i=1; i<num+1; i++) {
			out.print("<td>"+i+"</td>");
		}
		/*
		 	for(int i=1; i<num+1; i++) {
				out.print("<td>");
				out.print(i);
				out.print("</td>");
			}
		 */
		out.print("</tr>");
		out.print("</table>");
		out.print("</body>");
		out.print("</html>");
	}

}
