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
		request.setCharacterEncoding("euc-kr");
		String food = request.getParameter("food"); 
		
	%>
	
	<%=food %>
	
	<%-- ${param."name��"} --%>
	${param.food}
	${param["food"]}
	
	<%-- ������ name���� ���������� ������ �� ������ ��� 
		���� ���� �� null(�ƹ��͵� �ȳ���) : �ݺ��� ���� �ʿ� ����
	--%>
	
	${paramValues.fish[0]}
	${paramValues.fish[1]}
	${paramValues.fish[2]}
	${paramValues.fish[3]}
	${paramValues.fish[4]}
	
</body>
</html>