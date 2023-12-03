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
	<%-- �Ѿ�� �����͸� �������� JDBC�� ���� ���̺� �� �ֱ�
		- �������� �Ѿ���� ������
			: id, pw, nick, email, phone, gender, age
	 --%>
	<%
		// JDBC ����
		// 0. DBMS ����̹� ���� ������Ʈ�� �ֱ�
		// 1. ����̹� �����ε�
		// 2. Ŀ�ؼ� ����
		// 3. SQL�� ����
		// 4. ��������
	
		// ȸ������ �� main �������� ���ư���!
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
		
		// JSP�� try-catch�� �ʿ� X : �ڵ����� ����ó������
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
		
		
		String sql = "INSERT INTO MEMBER VALUES(?,?,?,?,?,?,?)";
		
		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, id);
		psmt.setString(2, pw);
		psmt.setString(3, nick);
		psmt.setString(4, email);
		psmt.setString(5, phone);
		psmt.setString(6, gender);
		psmt.setInt(7, age);
		
		// sql�� ����!
		// ���̺� ���� ��ȭ�� ����� executeupdate()
		// �ܼ��� ���°� -> executequery() : select�� ������ ���� ���!
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
			System.out.println("ȸ������ ����!");
		}else {
			System.out.println("ȸ������ ����...");
		
		}
			
		
		
	%>
	
	
</body>
</html>