<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>��ٱ���</h1>
	<fieldset>
		<legend>��� ��ǰ</legend>
		<!--  ��Ű�� ����� ��ǰ�� ����ϴ� ��� ���� -->
		<ul></ul>
		<%
			Cookie[] cookies = request.getCookies();
		
			if(cookies != null){
			
		 		for(int i =0; i <cookies.length; i++){
		 			if(cookies[i].getName().contains("pd")){
		 				// "pd"�� ������ ��Ű�̸��� ������ : ���ڿ��� �ش� ���ڿ��� ����ִ��� �� -> .contains	
		 			
		 			out.print("<li>" + cookies[i].getValue().replace("pd", "��ǰ") +"</li>");
		 			}
		 		}
		 	}
		%>
		</ul>
	</fieldset>
	<p><a href="product_list.jsp">���� ����ϱ�</a></p>
	<p><a href="product_deleteAll.jsp">��� ��ǰ ����</a></p>
</body>
</html>