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
		ID�� PW���� ���� ������ ����,
		ID�� PW�� ��ġ�ϴ� ȸ���� ������ ����,
		
		���� ���� -> main.jsp �̵�
		���� ���� -> delete.jsp �̵�
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
			System.out.println("���� ����");
		}else{
			System.out.println("���� ����");
		}
		
		
		String sql = "DELETE FROM MEMBER WHERE ID = ? AND PW = ?";
		
		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, id);
		psmt.setString(2, pw);
		
		cnt = psmt.executeUpdate();
		
		if(psmt != null) {
			psmt.close();
		}
		// ������ �ݾ��� �ʿ� �����ϱ� null �ƴ� ���� �ݾ��ֱ�
		if(conn != null) {
			conn.close();
		}
		
		
		if(cnt > 0) {		
			// response.sendRedirect --> �޼ҵ��� return�̶� ��� : ������� ��ȯ, �޼ҵ带 ����
			response.sendRedirect("main.jsp");
			System.out.println("ȸ��Ż�� �Ϸ�Ф�");
		}else {
			response.sendRedirect("delete.jsp");
			System.out.println("ȸ��Ż�� ����..");
		
		}
	%>
</body>
</html>