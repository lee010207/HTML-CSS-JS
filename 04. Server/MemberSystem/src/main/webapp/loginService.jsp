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
<title>Login ��</title>
</head>
<body>
	<%-- 
		ID, PW �ΰ��� ������ �޾ƿͼ�
		�α����� �� ����
		�α��� ������ ����� �г��� �ֿܼ� ���
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
			System.out.println("���� ����");
		}else{
			System.out.println("���� ����");
		}
		
		
		String sql = "SELECT NICK FROM MEMBER WHERE ID = ? AND PW = ?";
		// String sql = "SELECT * FROM MEMBER WHERE ID = ? AND PW = ?";
		
		psmt = conn.prepareStatement(sql);
		
	 	psmt.setString(1, id);
	 	psmt.setString(2, pw);
	 	
	 	rs = psmt.executeQuery();
	 	
		if(rs.next()) {
			System.out.println("�α��� ����!");
			nick = rs.getString(1);
			// System.out.println(rs.getString(1));
			
			// System.out.println(rs.getString("NICK"));
			// System.out.println(rs.getString(3));
			// sql ������(���̺�)�� �ε��� 1���� ����
		}else {
			System.out.println("�α��� ����...");
		
		}
		
		if(nick != null){
			// get���(url�ڿ� �����Ͱ� �پ) => ������Ʈ�� ���(����)
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
		// ������ �ݾ��� �ʿ� �����ϱ� null �ƴ� ���� �ݾ��ֱ�
		if(conn != null) {
			conn.close();
		}
		
		

	 %>
	 
</body>
</html>