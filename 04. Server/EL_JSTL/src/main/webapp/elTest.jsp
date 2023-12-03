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
	 	EL = 표현식 <%= %>
	 	
	 	* EL 조건
	 	  - EL은 java의 저장된 아무 변수의 값을 꺼내서 쓸 수 있는 것이 아니라
	 	    Scope에 저장된 값만 꺼내서 사용할 수 있음
	 	    -> Scope 영역에 저장을 먼저 한 후 EL 사용 가능
	 	    ☆ Scope영역 : page(하나의 페이지에만 적용되는 영역), request, session, application
	  --%>
	<%
		session.setAttribute("id", "leelee");
		String id = (String)session.getAttribute("id");
		// session은 기본적으로 object 형태 -> 다운캐스팅해줘야돼
	%>
	<!-- session에 저장된 id라는 이름의 값을 웹페이지에 표현하기 -->
	${id}님 환영합니다!
	
	
	<%-- 
		EL의 연산자
		
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
	 
	 <%-- EL에서 DTO, VO를 가져오려면 어떻게 해야할까 --%>
	 <%
	 	MemberDTO dto = new MemberDTO("lee", "lee123","LeeLee","대한민국");
	 	pageContext.setAttribute("dto",dto);
	 	MemberDTO info = (MemberDTO)pageContext.getAttribute("dto");
	 			
	 %>
	 <%=info.getId() %>
	 <%=info.getPw() %>
	 <%=info.getNick() %>
	 <%=info.getAddr() %>
	 
	 <br>
	 <hr>
	 
	 <%-- ${page에 저장된 name값(dto명).가져오고싶은 필드명 --%>
	 ${dto.id}
	 ${dto.pw}
	 ${dto.nick}
	 ${dto.addr}
	 
	 <!-- 만약 el에 없는 값을 가져오면 어떻게 될까 : null -->
	 ${empty good}
	 <!-- 비어있는지 판단 : empty -> 비어있음(True) , 안비어있음(False)  -->
	 ${not empty good} <br>
	 
	 <!-- 
	 	만약에 동일한 이름의 값이 여러 영역에 들어가있다면
	 	EL에서는 어떻게 값을 가져올까
	 	
	 	: EL은 가장 작은 영역부터(pageContext) 값이 있는지 찾음
	 	  - 값이 있으면 바로 그값을 출력하고 종료
	 	  - page -> request -> session -> application
	 	  
	 	EL에서 특정영역에서만 값을 찾고자(특정 영역의 값을 가져오고자) 할 때
	 	: name 앞에 특정 영역이름Scope 를 붙여줌
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