<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	div, h2, fieldset, input{
		margin-top: 10px;
		margin : auto;
		text-align:center;
	}
</style>

</head>
<body>
	<h1>랜덤당첨작성</h1>
		<fieldset>
			<legend>Write</legend>
				<%
				request.setCharacterEncoding("EUC-KR");
				String tit = request.getParameter("tit"); %>
				<h3><%=tit %></h3>
				
				<% 
				Random rd = new Random();
				
				String[] item = request.getParameterValues("item");
				int i = rd.nextInt(item.length);
				out.print(item[i]);
				%>
							
				
		</fieldset>
</body>
</html>