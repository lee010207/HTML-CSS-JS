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
		 ���� ���� ���� �� ������ ����
		 id�� pw�� ��ġ�ϴ� ������ ã��
		 �Է��� nick, email, phone, gender, age�� �����Ͻÿ�
		 
		 ���� ������ -> main.jsp �̵�
		 ���� ���н� -> update.jsp �̵�	
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
			System.out.println("���� ����");
		}else{
			System.out.println("���� ����");
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
		// ������ �ݾ��� �ʿ� �����ϱ� null �ƴ� ���� �ݾ��ֱ�
		if(conn != null) {
			conn.close();
		}
		
		
		if(cnt > 0) {
			response.sendRedirect("main.jsp");
			System.out.println("ȸ���������� ����!");
		}else {
			response.sendRedirect("update.jsp");
			System.out.println("ȸ���������� ����...");
		
		}
	%>
</body>
</html>