<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Info Delete</title>
</head>
<body>

	<%-- 
		ID와 PW값을 먼저 가져온 다음,
		ID와 PW가 일치하는 회원의 정보를 삭제,
		
		삭제 성공 -> main.jsp 이동
		삭제 실패 -> delete.jsp 이동
 	--%>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
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
		
		
		String sql = "DELETE FROM MEMBER WHERE ID = ? AND PW = ?";
		
		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, id);
		psmt.setString(2, pw);
		
		cnt = psmt.executeUpdate();
		
		if(psmt != null) {
			psmt.close();
		}
		// 무조건 닫아줄 필요 없으니까 null 아닐 때만 닫아주기
		if(conn != null) {
			conn.close();
		}
		
		
		if(cnt > 0) {		
			// response.sendRedirect --> 메소드의 return이랑 비슷 : 결과값을 반환, 메소드를 끝냄
			response.sendRedirect("main.jsp");
			System.out.println("회원탈퇴 완료ㅠㅠ");
		}else {
			response.sendRedirect("delete.jsp");
			System.out.println("회원탈퇴 실패..");
		
		}
	%>
</body>
</html>