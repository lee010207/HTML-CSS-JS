<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <%-- include 지시자 : 따로 만들어놓은 파일을 불러다가 사용할 수 있음 --%>
 <%-- 외부에 있는 페이지를 내꺼 안에 포함시키는 태그 --%>	
	<%@ include file="ex07menubar.jsp" %>
	<iframe src="ex07menubar.jsp"></iframe>
	<%-- <iframe>태그 : 단순히 보여주기(제어 X)
		 include : 내꺼 안에 진짜로 넣어줌(제어가능)
		 --%>
</body>
</html>