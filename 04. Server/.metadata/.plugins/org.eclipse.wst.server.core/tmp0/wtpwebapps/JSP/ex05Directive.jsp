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
    		pageEncoding="EUC-KR"%> : ������
    		=> ������ �ȿ� �ִ� �ڵ尡 �ڹ� �ڵ�� �ٲ�鼭 �����
	 --%>
	������ �������Դϴ�.
	<br>
	����� ����� ���ڴ�?
	<br>
	<%
		// import �ϴ� ���
		// (1) ���� �ۼ� (2)�ڵ��ϼ�
		Random rd = new Random();
		int lucky = rd.nextInt(10) + 1;
	
	%>
	
	<strong><%=lucky %></strong>
	�Դϴ�.
	
</body>
</html>