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
				// ����� �ڹ� : for�� ����
				for(int i = 0; i <10; i++ ){%>
				<!-- ����� HTML : �ݺ����� �����ǵ� HTML �ڵ带 �ݺ��� ���๮����
						ǥ���� ����ؼ� �ڹ� for�� �� �̿� -->
						<td><%=i+1 %></td> 
				<% // ����� �ڹ� : for�� �ݾ��ֱ�
					};%>
			 --%>

				<%
					String td = "";
				for(int i =1; i<=10; i++){
					// String td�ȿ� �������Ѽ� ������ ���ڿ� ���
					td += "<td>"+ i + "</td>";
				}
				%>
			
			</tr>
		</table>
	</form>
</body>
</html>