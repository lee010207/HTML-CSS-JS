package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;

/**
 * Servlet implementation class Ex02gson
 */
@WebServlet("/gson")
public class Ex02gson extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// response.setCharacterEncoding("UTF-8");
		
		// 요청이 들어오면 데이터가 보내지게끔 서버프로그램 만들기
		
		//JSON 객체 생성
		JsonObject jsObj = new JsonObject();
		
		// JSON 객체에 속성, 값 추가
		jsObj.addProperty("data", "Hello");
		jsObj.addProperty("data2", "JSON객체생성성공");
		
		// 생성한 JSON 객체 출력 : 속성, 값 확인
		System.out.println(jsObj);
		
		// 응답한 형식을 지정 + 한글데이터가 깨지지 않도록 설정!
		// application/json : MIME type -> 사용자에게 응답해줄 형식 정의(이런 형태로 보내겠다!)
		response.setContentType("application/json; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		out.print(jsObj);
		// out.print()에 JSON 객체 담아서 HTML 파일로 보냄(응답)
		//--> HTML 파일에서 서버가 응답을 하면 응답과 함꼐 받아온 데이터를 success의 매개변수 res에 담아서
		//--> success 함수 실행( JSON 객체 콘솔 출력 )
	}

}
