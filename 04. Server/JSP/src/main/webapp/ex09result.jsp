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
	 // JSP �ȿ����� ������ ���� �� ����! --> ���� ��ü request �̿�!
		String text = request.getParameter("text");
	%>
	
	<%= text %>
</body>
</html>