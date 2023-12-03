<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- (1) <%@ page import="java.util.Random" %> --%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- 
		<%@ page language="java" contentType="text/html; charset=EUC-KR"
    		pageEncoding="EUC-KR"%> : 지시자
    		=> 지시자 안에 있는 코드가 자바 코드로 바뀌면서 실행됨
	 --%>
	오늘은 월요일입니다.
	<br>
	당신의 행운의 숫자는?
	<br>
	<%
		// import 하는 방법
		// (1) 직접 작성 (2)자동완성
		Random rd = new Random();
		int lucky = rd.nextInt(10) + 1;
	
	%>
	
	<strong><%=lucky %></strong>
	입니다.
	
</body>
</html>