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
		//��ũ��Ʈ��
		String c = request.getParameter("c");
		String r = request.getParameter("r");
		
		int cc = Integer.parseInt(c);
		int rr = Integer.parseInt(r);
	%>
	<h2><%=c %>��</h2>
	<h2><%=r %>��</h2>

	<table border="1px solid black">
	<%
		for(int i = 1; i <= cc; i++){
			out.print("<tr>");
			for(int j= 0; j < rr; j++){
				out.print("<td>" + j +"</td>");
			}
			out.print("</tr>");
		}
	
	%>
	
	</table>


<%-- 
	<%
		int c = Integer.parseInt(request.getParameter("c"));
		int r = Integer.parseInt(request.getParameter("r"));
		
		String result = "";
		
		for(int j = 0; j < c; j++){
			result += "<tr>";
			for(int i = 0; i < r; i++){
				result += "<td>"+ i + "</td>";
			}
			result += "</tr>";
		}
		

	%>
	<h2><%=c %> ��</h2>
	<h2><%=r %> ��</h2>
	<table border = "1px solid black">	<%=result %></table>
--%>
</body>
</html>