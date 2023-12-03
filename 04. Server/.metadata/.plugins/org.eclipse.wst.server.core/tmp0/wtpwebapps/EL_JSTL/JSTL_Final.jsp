<%@page import="com.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%-- �±� ���̺귯���� �߰��ϰڴٰ� �����ڸ� �߰������ �� -> JSTL ��밡�� --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<% 
		ArrayList<String> idol = new ArrayList<String>();
		idol.add("����ȩ");
		idol.add("����");
		idol.add("����");
		idol.add("����");
		idol.add("���̸�");
		pageContext.setAttribute("idol", idol);
		
	%>
	<c:forEach items="${idol }" var="name">
		${name}
	</c:forEach>
	<br>
	<%
		MemberDTO dto1 = new MemberDTO("lee", "12345","LEE","����");
		MemberDTO dto2 = new MemberDTO("qee", "101010","QEE","����");
		MemberDTO dto3 = new MemberDTO("bee", "5252","BEE","����");
		MemberDTO dto4 = new MemberDTO("gee", "34536","GEE","�λ�");
		MemberDTO dto5 = new MemberDTO("vee", "9191","VEE","����");

		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		list.add(dto1);
		list.add(dto2);
		list.add(dto3);
		list.add(dto4);
		list.add(dto5);
	
		pageContext.setAttribute("list", list);
		
	%>
	
	<table border="1px">
		<tr>
			<th>��ȣ</th>
			<th>���̵�</th>
			<th>��й�ȣ</th>
			<th>�г���</th>
			<th>�ּ�</th>
		</tr>
			<c:forEach varStatus="i" items="${list }" var="info">
				<tr>
				<td>${i.count}</td>
				<td>${info.id}</td>
				<td>${info.pw}</td>
				<td>${info.nick}</td>
				<td>${info.addr}</td>
				</tr>
		</c:forEach>
	</table>
	
</body>
</html>