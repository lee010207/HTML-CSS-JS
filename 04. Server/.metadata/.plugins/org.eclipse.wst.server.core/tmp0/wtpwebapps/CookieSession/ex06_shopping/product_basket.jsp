<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>장바구니</h1>
	<fieldset>
		<legend>담긴 상품</legend>
		<!--  쿠키에 저장된 상품을 출력하는 기능 구현 -->
		<ul></ul>
		<%
			Cookie[] cookies = request.getCookies();
		
			if(cookies != null){
			
		 		for(int i =0; i <cookies.length; i++){
		 			if(cookies[i].getName().contains("pd")){
		 				// "pd"를 포함한 쿠키이름만 가져옴 : 문자열에 해당 문자열이 들어있는지 비교 -> .contains	
		 			
		 			out.print("<li>" + cookies[i].getValue().replace("pd", "상품") +"</li>");
		 			}
		 		}
		 	}
		%>
		</ul>
	</fieldset>
	<p><a href="product_list.jsp">쇼핑 계속하기</a></p>
	<p><a href="product_deleteAll.jsp">모든 상품 삭제</a></p>
</body>
</html>