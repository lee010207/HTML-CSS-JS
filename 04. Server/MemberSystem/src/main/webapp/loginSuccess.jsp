<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Login Complete</title>
</head>
<body>
	<%
		String nick = request.getParameter("nick");
	%>
	<h2><%=nick %>�� ȯ���մϴ�!</h2>
</body>
</html>