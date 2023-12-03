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
	<div>
	<% int num = Integer.parseInt(request.getParameter("num"));	%>
		<h1>랜덤당첨작성</h1>
		<fieldset>
			<legend>Write</legend>
			<form action="Ex11randomResult.jsp" method="post">
				주제 : <input type ="text" name ="tit">
				<br>
				<%
					for(int i = 1; i <= num; i++){
						out.print("아이템" + i + " : ");
						out.print("<input name='item' type='text'><br>");
					}
				%>
				
				
				
				<%-- 
				<% 
					int num = Integer.parseInt(request.getParameter("num"));
					for(int i= 0; i < num; i++){
						out.print("아이템"+ (i+1)+" : "+"<input type='text' name='item'><br>");
					}%>
				--%>	
				<input type="submit">
		
			</form>
		</fieldset>
	</div>
</body>
</html>