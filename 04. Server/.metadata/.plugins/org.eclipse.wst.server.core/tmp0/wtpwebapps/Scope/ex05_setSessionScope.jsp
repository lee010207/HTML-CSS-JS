<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Session ����</h1>
	
	<%
		//Session Scope
		// - JSESSIONID�� ����ڸ� ������
		// - �������� �����ų�, �޶����ų� ���������� �����ϸ� �� �̻� �������� �ʴ´�
		
		session.setAttribute("nick","������");
		response.sendRedirect("ex06_getSessionScope.jsp");
	%>
</body>
</html>