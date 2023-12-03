package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex07RadioCheckbox
 */
@WebServlet("/Ex07RadioCheckbox")
public class Ex07RadioCheckbox extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("EUC-KR");
		
		String mrg = request.getParameter("marriage");
		System.out.println(mrg);
		
		// 파라미터는 제일 앞에 값 하나만 받아옴
		// String hobby = request.getParameter("hobby");
		
		// 동일한 name으로 여러개의 데이터를 받는 방법 : .getParameterValues()
		// --> 리턴값이 문자열 "배열"
		String[] hobby = request.getParameterValues("hobby");
		// 체크박스에 체크한 취미 데이터가 담긴 배열 데이터 출력
		for(int i=0; i < hobby.length; i++) {
			System.out.print(hobby[i] + "\t");
		}
	}

}
