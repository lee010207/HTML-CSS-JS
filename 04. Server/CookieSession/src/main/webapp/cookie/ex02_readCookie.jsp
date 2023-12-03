<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키정보확인</h1>
	<%
		// 쿠키정보를 가져오는 방법
		// 사용자가 접속했을 때 꺼내올 수 있음
		// 많은 저장된 쿠키 중 내가 원하는 거를 꺼내오려면
		// 배열 형태로 쿠키를 받아와서 원하는 쿠키만 선택
		
		Cookie[] cookies = request.getCookies();
		
		// 예외처리
	 	if(cookies != null){
	 		for(int i =0; i <cookies.length; i++){
	 			out.print("쿠키이름 : " + cookies[i].getName()+"<br>");
	 			out.print("쿠키값 : " + cookies[i].getValue()+"<br>");
	 			out.print("유지기간 : " + cookies[i].getMaxAge()+"<br>");
	 			out.print("<hr>");
	 		}
	 	}
	
	%>
</body>
</html>