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
	 // JSP 안에서도 데이터 받을 수 있음! --> 내장 객체 request 이용!
		String text = request.getParameter("text");
	%>
	
	<%= text %>
</body>
</html>