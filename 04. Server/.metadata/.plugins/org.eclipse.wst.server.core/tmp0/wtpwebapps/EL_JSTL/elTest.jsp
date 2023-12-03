<%@page import="com.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	 <%-- 
	 	EL = ǥ���� <%= %>
	 	
	 	* EL ����
	 	  - EL�� java�� ����� �ƹ� ������ ���� ������ �� �� �ִ� ���� �ƴ϶�
	 	    Scope�� ����� ���� ������ ����� �� ����
	 	    -> Scope ������ ������ ���� �� �� EL ��� ����
	 	    �� Scope���� : page(�ϳ��� ���������� ����Ǵ� ����), request, session, application
	  --%>
	<%
		session.setAttribute("id", "leelee");
		String id = (String)session.getAttribute("id");
		// session�� �⺻������ object ���� -> �ٿ�ĳ��������ߵ�
	%>
	<!-- session�� ����� id��� �̸��� ���� ���������� ǥ���ϱ� -->
	${id}�� ȯ���մϴ�!
	
	
	<%-- 
		EL�� ������
		
	 --%>
	 <%
	 	pageContext.setAttribute("num",17);
	 	pageContext.setAttribute("isCheck",true);
	 
	 %>
	 ${num} <br>
	 ${num + 10} <br>
	 ${num - 5} <br>
	 ${num * 3} <br>
	 ${num / 2} ${num div 2} <br>
	 ${num % 3} ${num mod 3} <br>
	 ${num > 5 && num > 3} ${num > 5 and num > 3}<br>
	 ${num > 20 || num > 10 } ${num > 20 or num > 10 }<br>
	 
	 ${isCheck } <br>
	 ${!isCheck } ${not isCheck} <br>
	 ${num > 3 } ${num gt 3} <br>
	 ${num < 20} ${num lt 20} <br>
	 ${num >= 5 } ${num ge 5} <br>
	 ${num <= 10} ${num le 10} <br>
	 
	 ${num == 10} ${num eq 10} <br>
	 ${num != 20} ${num ne 20} <br>	 
	 
	 <%-- EL���� DTO, VO�� ���������� ��� �ؾ��ұ� --%>
	 <%
	 	MemberDTO dto = new MemberDTO("lee", "lee123","LeeLee","���ѹα�");
	 	pageContext.setAttribute("dto",dto);
	 	MemberDTO info = (MemberDTO)pageContext.getAttribute("dto");
	 			
	 %>
	 <%=info.getId() %>
	 <%=info.getPw() %>
	 <%=info.getNick() %>
	 <%=info.getAddr() %>
	 
	 <br>
	 <hr>
	 
	 <%-- ${page�� ����� name��(dto��).����������� �ʵ�� --%>
	 ${dto.id}
	 ${dto.pw}
	 ${dto.nick}
	 ${dto.addr}
	 
	 <!-- ���� el�� ���� ���� �������� ��� �ɱ� : null -->
	 ${empty good}
	 <!-- ����ִ��� �Ǵ� : empty -> �������(True) , �Ⱥ������(False)  -->
	 ${not empty good} <br>
	 
	 <!-- 
	 	���࿡ ������ �̸��� ���� ���� ������ ���ִٸ�
	 	EL������ ��� ���� �����ñ�
	 	
	 	: EL�� ���� ���� ��������(pageContext) ���� �ִ��� ã��
	 	  - ���� ������ �ٷ� �װ��� ����ϰ� ����
	 	  - page -> request -> session -> application
	 	  
	 	EL���� Ư������������ ���� ã����(Ư�� ������ ���� ����������) �� ��
	 	: name �տ� Ư�� �����̸�Scope �� �ٿ���
	 	ex) ${sessionScope.name}
	 	
	  -->
	 
	 <% 
	 	pageContext.setAttribute("name", "llleee");
	 	request.setAttribute("name", "ssseee");
	 	session.setAttribute("name", "ttteee");
	 	application.setAttribute("name", "zzzeee");
	 %>
	 ${sessionScope.name}
	 
</body>
</html>