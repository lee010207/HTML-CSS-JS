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
	
	<%-- ${param."name값"} --%>
	${param.food}
	${param["food"]}
	
	<%-- 동일한 name으로 여러개값을 보냈을 때 꺼내는 방법 
		없는 값은 걍 null(아무것도 안나옴) : 반복문 돌릴 필요 없음
	--%>
	
	${paramValues.fish[0]}
	${paramValues.fish[1]}
	${paramValues.fish[2]}
	${paramValues.fish[3]}
	${paramValues.fish[4]}
	
</body>
</html>