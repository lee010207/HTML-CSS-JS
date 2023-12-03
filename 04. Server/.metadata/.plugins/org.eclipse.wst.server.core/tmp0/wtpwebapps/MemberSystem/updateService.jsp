<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- id, pw, nick, email, phone, gender, age
		 위의 값을 먼저 다 가져온 다음
		 id와 pw가 일치하는 계정을 찾아
		 입력한 nick, email, phone, gender, age를 수정하시오
		 
		 수정 성공시 -> main.jsp 이동
		 수정 실패시 -> update.jsp 이동	
	 --%>
	<%
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
		
		
		String sql = "UPDATE MEMBER SET NICK = ?, EMAIL = ?, PHONE = ?, GENDER =?, AGE=? WHERE ID = ? AND PW =? ";
		
		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, nick);
		psmt.setString(2, email);
		psmt.setString(3, phone);
		psmt.setString(4, gender);
		psmt.setInt(5, age);
		psmt.setString(6, id);
		psmt.setString(7, pw);
		
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
			System.out.println("회원정보수정 성공!");
		}else {
			response.sendRedirect("update.jsp");
			System.out.println("회원정보수정 실패...");
		
		}
	%>
</body>
</html>