<%@page import="java.util.ArrayList"%>
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
		// ����(Session)
		// : ������� ������ ���������ִ� ���
		// - ���� PC�� ����
		// - �پ��� �ڷ��� �����͸� ���� --> Object��ü�� ��ȯ�Ǿ� ����
		// - ������ ���� ��, ������ �뷮�� ������ ����(���� �뷮�� ���� �޶��� �� ����)
		// - �� �������� �������� ����
		// * ���ǿ� �����͸� �κк��ϰ� �����ϸ� �ȵ�!
		// ����ڰ� ���񽺸� �̿��ϴµ� �ʿ��� �������� �����ؾ� ��
		// ex) �α��� ����
		
		
		
		// ���ǿ����� �����͸� �����ϴ� ���
		//  : setAttribute(name, value)
		// - name�� ���ڿ�
		// - value�� �⺻�ڷ���, ������ ��� ���� ����
		session.setAttribute("name", "Joy");
		session.setAttribute("age", 23);
		session.setAttribute("age1",100);
		
		ArrayList<String> list = new ArrayList<String>();
		list.add("cookie");
		list.add("session");
		
		session.setAttribute("list", list);
		
		
		
	%>
	<h1>���ǿ����� ������ ���� �Ϸ�</h1>
</body>
</html>