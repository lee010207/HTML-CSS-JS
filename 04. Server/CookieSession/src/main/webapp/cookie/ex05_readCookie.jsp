<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>저장된 상품</h1>
	
	<%
		Cookie [] cookies = request.getCookies();
		
		if(cookies != null){
			for(int i =0; i<cookies.length; i++){
				// JSESSIONID를 제외한 쿠키정보만 출력
				if(!cookies[i].getName().equals("JSESSIONID")){
					out.print(cookies[i].getValue());
				}
				
			}
		}
	
	%>
	
	<a href = "ex05_deleteCookie.jsp">상품삭제</a>
</body>
</html>