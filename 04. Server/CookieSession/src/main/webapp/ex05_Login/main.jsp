<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = (String)session.getAttribute("id");
	%>
	<h1><%=id %>�� ȯ���մϴ�.</h1>
	<a href="../LogoutService">�α׾ƿ�</a>
</body>
</html>