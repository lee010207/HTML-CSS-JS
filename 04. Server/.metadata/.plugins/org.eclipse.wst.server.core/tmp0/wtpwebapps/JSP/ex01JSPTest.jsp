<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
/* CSS 주석 */
</style>

<script type="text/javascript">
// JS 주석
</script>

</head>
<body>
<!-- HTML 주석 -->
<!-- JSP 주석 -->
	<h1>오늘은 금요일</h1>
	
	<%
	// 여기는 자바공간
		int num = 100;
		String name = "호두야";
	
	%>
	<!-- 표현식 : 자바 결과값을 웹페이지에 출력 -->
	<%=name %>
	
	<%
		int age = 20;
		int size = 20;
		String color = "yellow";
	%>
	<!-- 구분선 태그 -->
	<hr size="<%=size %>" color="<%=color%>">
	
</body>
</html>