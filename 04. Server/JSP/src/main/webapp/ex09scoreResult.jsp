<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("EUC-KR"); 
		String name = request.getParameter("name");
		int java = Integer.parseInt(request.getParameter("java"));
		int web = Integer.parseInt(request.getParameter("web"));
		int iot = Integer.parseInt(request.getParameter("iot"));
		int android = Integer.parseInt(request.getParameter("android"));
		
		double mean = (java + web + iot + android)/4.0;
		
		String hac = "";
		if(mean >= 95){
			hac = "A+";
		}else if(mean >= 85){
			hac = "A";
		}else if(mean >= 80){
			hac = "B+";
		}else if(mean >= 70){
			hac = "C";
		}else{
			hac = "F";
		}
	%>
	<fieldset>
	 	<legend>학점결과</legend>
	 	<table>
	 		<tr>
	 			<td>이름</td>
				<td><%=name %></td>
	 		</tr>
	 		<tr>
	 			<td>Java 점수</td>
				<td><%=java %></td>
	 		</tr>
	 		<tr>
	 			<td>Web 점수</td>
				<td><%=web %></td>
	 		</tr>
	 		<tr>
	 			<td>Iot 점수</td>
				<td><%=iot %></td>
	 		</tr>
	 		<tr>
	 			<td>Android 점수</td>
				<td><%=android %></td>
	 		</tr>
	 		<tr>
	 			<td>평균</td>
	 			<td><%=mean %></td>
	 		</tr>
	 		<tr>
	 			<td>학점</td>
	 			<td><h2><%=hac%></h2></td>
	 		</tr>
	 		
		</table>
	</fieldset>
</body>
</html>