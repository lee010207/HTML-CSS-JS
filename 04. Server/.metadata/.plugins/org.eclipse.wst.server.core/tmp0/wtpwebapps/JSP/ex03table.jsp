<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form>
		<table border ="1px" solid black>
			<tr>
			
			<%-- 
				<%
				// 여기는 자바 : for문 돌려
				for(int i = 0; i <10; i++ ){%>
				<!-- 여기는 HTML : 반복문을 돌릴건데 HTML 코드를 반복문 실행문으로
						표현식 사용해서 자바 for문 값 이용 -->
						<td><%=i+1 %></td> 
				<% // 여기는 자바 : for문 닫아주기
					};%>
			 --%>

				<%
					String td = "";
				for(int i =1; i<=10; i++){
					// String td안에 누적시켜서 통으로 문자열 담기
					td += "<td>"+ i + "</td>";
				}
				%>
			
			</tr>
		</table>
	</form>
</body>
</html>