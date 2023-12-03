package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex01Mypage
 */
// 얘를 실행하면 HTML 문서를 만들어냄
@WebServlet("/Ex01Mypage")
public class Ex01Mypage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 메인메서드
		System.out.println("이땡떙님의 홈페이지");
		
		// for 한글 인코딩
		// 응답객체(response)에 인코딩을 먼저 적용해줘야 함
		response.setCharacterEncoding("EUC-KR");
		
		// 요청한 사람의 ip주소 꺼내오기(request에 요청 정보 다 담겨있음)
		String ip = request.getRemoteAddr();
		// 페이지를 요청한 client의 ip 획득
		System.out.println(ip);
		// 누가 웹페이지를 요청했는지에 따라 웹페이지가 바뀜 : 동적인 웹페이지
		// --> 웹서버가 필요!!
		
		
		// 웹페이지에 텍스트 및 태그를 사용하기 위해서는 
		// out객체 가 필요!!
		// out객체 : 글을 쓸 수 있는 객체( 응답할 때 글을 써줌 --> response 이용해 생성 )
		PrintWriter out = response.getWriter();
			
		out.print("<html>");
		out.print("<body>");
		
		if(ip.equals("192.168.0.98")){
			out.print("<h1>보배언니☺️</h1>");
			out.print("<img src='b.jpg'>");
		}else if(ip.equals("192.168.0.59")) {
			out.print("<h1>병관쌤 환영합니다.</h1>");
			out.print("<img src='bb.jpg'>");
		}else {
			out.print("<h1>GUEST님 어서오세요</h1>");
			out.print("<img src='bb.jpg'>");
		}
		
		out.print("</body>");
		out.print("</html>");
		
		
	}

}
