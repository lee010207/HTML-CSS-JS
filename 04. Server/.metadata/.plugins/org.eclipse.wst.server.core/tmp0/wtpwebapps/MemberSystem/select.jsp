<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원목록</title>
</head>
<body>
	<%
		request.setCharacterEncoding("EUC-KR");
	 	
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
		
		
		String sql = "SELECT ID,NICK,EMAIL,PHONE,GENDER,AGE FROM MEMBER";
		
		psmt = conn.prepareStatement(sql);
		
		rs = psmt.executeQuery();
		
		// 관리자 계정 제외하고 출력하는 방법(1) : 커서를 한번 이동시켜주기
		rs.next();
		
		out.print("<table border ='1'>");
		out.print("<tr><th>ID</th><th>NICK</th><th>EMAIL</th><th>PHONE</th><th>GENDER</th><th>AGE</th></tr>");
		
		while(rs.next()){
			String id = rs.getString(1);
			String nick = rs.getString(2);
			String email = rs.getString(3);
			String phone = rs.getString(4);
			String gender = rs.getString(5);
			int age = rs.getInt(6);
			
			// System.out.println(id + " / " + nick + " / " + email +" / " + phone +" / " + gender + "/ " + age);
			
			// 관리자 계정 제외하고 출력하는 방법(2) : 조건문 사용
			// if(!id.equals("admin")){
			out.print("<tr>");
			out.print("<td>"+id +"</td>");
			out.print("<td>"+nick +"</td>");
			out.print("<td>"+email+"</td>");
			out.print("<td>"+phone+"</td>");
			out.print("<td>"+gender+"</td>");
			out.print("<td>"+age+"</td>");
			out.print("</tr>");
			//}
			
		}//end while
		out.print("</table>");
		
	
	%>
</body>
</html>