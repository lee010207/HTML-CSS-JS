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
		// ��Ű(Cookie)
		// : ������� ������ ������Ű�� ���� ���
		// - ����� PC�� ���� (key, value ������ ���� �� ���Ϸ� ����)
		// - value���� Ÿ���� ���ڿ��� ����(�ѱ۵����� -> ���ڵ�)
		// URLEncoder.encode() Ȱ��
		
		// ��Ű �����ϴ� ���
		Cookie cookie = new Cookie("name","Gildong");
		
		// ��Ű�� �����Ⱓ �����ϴ� ���
		// cookie.setMaxAge(30);
		// �� ������ ���� ����
		// ex) cookie.setMaxAge(30); -> 30�� ����
		// ������ ����â �� ���ΰ�ħ�ϸ� �����
		
		
		// ������ ��Ű�� ����ڿ��� ����
		response.addCookie(cookie);
		
		Cookie cookie2 = new Cookie("name2", "Jason");
		Cookie cookie3 = new Cookie("name3", "Jon");
		
		response.addCookie(cookie2);
		response.addCookie(cookie3);
	%>
	<h1>��Ű�����Ϸ�!</h1>
</body>
</html>