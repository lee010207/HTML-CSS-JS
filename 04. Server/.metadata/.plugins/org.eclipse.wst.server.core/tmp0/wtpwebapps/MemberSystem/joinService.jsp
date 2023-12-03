<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>joinService</title>
</head>
<body>
	<%-- 넘어온 데이터를 기준으로 JDBC를 통해 테이블에 값 넣기
		- 이쪽으로 넘어오는 데이터
			: id, pw, nick, email, phone, gender, age
	 --%>
	<%
		// JDBC 순서
		// 0. DBMS 드라이버 파일 프로젝트에 넣기
		// 1. 드라이버 동적로딩
		// 2. 커넥션 연결
		// 3. SQL문 실행
		// 4. 연결종료
	
		// 회원가입 후 main 페이지로 돌아가기!
		request.setCharacterEncoding("EUC-KR");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String email = request.getParameter("email");
		String nick = request.getParameter("nick");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		int age = Integer.parseInt(request.getParameter("age"));
		
		int cnt = 0;
		Connection conn = null;
		PreparedStatement psmt = null;
		
		// JSP는 try-catch문 필요 X : 자동으로 예외처리해줌
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "shopping";
		String db_pw = "12345";
		
		conn = DriverManager.getConnection(db_url, db_id, db_pw);
		
		if(conn != null){
			System.out.println("연결 성공");
		}else{
			System.out.println("연결 실패");
		}
		
		
		String sql = "INSERT INTO MEMBER VALUES(?,?,?,?,?,?,?)";
		
		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, id);
		psmt.setString(2, pw);
		psmt.setString(3, nick);
		psmt.setString(4, email);
		psmt.setString(5, phone);
		psmt.setString(6, gender);
		psmt.setInt(7, age);
		
		// sql문 실행!
		// 테이블 내에 변화가 생기면 executeupdate()
		// 단순히 보는거 -> executequery() : select문 실행할 때만 사용!
		cnt = psmt.executeUpdate();
		
		if(psmt != null) {
			psmt.close();
		}
		// 무조건 닫아줄 필요 없으니까 null 아닐 때만 닫아주기
		if(conn != null) {
			conn.close();
		}
		
		
		if(cnt > 0) {
			response.sendRedirect("main.jsp");
			System.out.println("회원가입 성공!");
		}else {
			System.out.println("회원가입 실패...");
		
		}
			
		
		
	%>
	
	
</body>
</html>