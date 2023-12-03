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
		//Request Scope
		// - 하나 이상의 JSP 페이지에서 정보를 유지시키는 영역
		// - forward방식으로 이동할 떄 정보를 유지시킬 수 있음
		request.setAttribute("nickName","스코프");
	
		// 다음 페이지로 이동하는 방법 : redirect
		// - 페이지 이동시킬 때 : 단순이동, 데이터베이스에 변화를 주는 이동(회원가입, 게시글 등록 등)
		// - 요청이 두번 발생 --> 정보 유지가 안됨(정보 전달 x)
		// - 내부 , 외부 페이지 모두 접근 가능
		// response.sendRedirect("ex04_getRequestScope.jsp"); --> 리다이렉트 방식으로는 정보 전달 안돼 only 페이지 이동
		
		
		// 다음 페이지로 정보를 전달할 떄 사용하는 방법 : forward
		// - 정보 조회할 떄 사용(정보 유지가 필요할 때)
		// - 요청이 한 번만 발생 : 정보 유지 가능
		// - 내부 페이지만 접근 가능
		// 포워드 방식 사용 : RequestDispatcher 객체 생성 -> 포워드 메소드 호출
		RequestDispatcher dp = request.getRequestDispatcher("ex04_getRequestScope.jsp");
		dp.forward(request, response);
		
	%>

</body>
</html>