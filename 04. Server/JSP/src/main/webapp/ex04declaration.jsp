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
		선언문 <%! %>
		- JSP안에서 필드 또는 메소드를 만들고 싶을 때 사용
	 --%>
	 
	 <%!
	 	// 선언문(필드, 메소드 생성)
	 	public String name = "박병관"; //--> 필드로 감
	 	public int plus(int num1, int num2){
	 		return num1 + num2;
	 	}
	 %>
	 <%-- 단순 변수, 함수 사용 : 스크립트릿, 표현식 --%>
	 <% 
	 	// 스크립트릿 --> service()메소드 안에 들어감!
	 	// 메소드 안에서만 쓰는 변수로 감 : 지역 변수 --> 접근제한자 X
	 	String name2 = "홍길동";
	 %>
	 <%= plus(30,40) %>
	 <%-- 표현식에서는 리턴값이 존재하는 함수 사용이 가능!, 세미콜론 안씀 --%>
</body>
</html>