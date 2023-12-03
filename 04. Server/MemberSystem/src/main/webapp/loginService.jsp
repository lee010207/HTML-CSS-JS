<%@page import="java.net.URLEncoder"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Login 중</title>
</head>
<body>
	<%-- 
		ID, PW 두개의 정보를 받아와서
		로그인을 한 다음
		로그인 성공한 사람의 닉네임 콘솔에 출력
	 --%>
	 
	 <%
	 	request.setCharacterEncoding("EUC-KR");
	 	String id = request.getParameter("id");
	 	String pw = request.getParameter("pw");
	 	String nick = null;
	 	
	 	Connection conn = null;
	 	PreparedStatement psmt = null;
	 	ResultSet rs = null;
	 	
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
		
		
		String sql = "SELECT NICK FROM MEMBER WHERE ID = ? AND PW = ?";
		// String sql = "SELECT * FROM MEMBER WHERE ID = ? AND PW = ?";
		
		psmt = conn.prepareStatement(sql);
		
	 	psmt.setString(1, id);
	 	psmt.setString(2, pw);
	 	
	 	rs = psmt.executeQuery();
	 	
		if(rs.next()) {
			System.out.println("로그인 성공!");
			nick = rs.getString(1);
			// System.out.println(rs.getString(1));
			
			// System.out.println(rs.getString("NICK"));
			// System.out.println(rs.getString(3));
			// sql 데이터(테이블)는 인덱스 1부터 시작
		}else {
			System.out.println("로그인 실패...");
		
		}
		
		if(nick != null){
			// get방식(url뒤에 데이터가 붙어서) => 쿼리스트링 방식(형태)
			nick = URLEncoder.encode(nick, "EUC-KR");
			response.sendRedirect("loginSuccess.jsp?nick="+nick);
		}else{
			response.sendRedirect("login.jsp");
		}

	 	
		if(rs != null){
			rs.close();
		}
	 	if(psmt != null) {
			psmt.close();
		}
		// 무조건 닫아줄 필요 없으니까 null 아닐 때만 닫아주기
		if(conn != null) {
			conn.close();
		}
		
		

	 %>
	 
</body>
</html>