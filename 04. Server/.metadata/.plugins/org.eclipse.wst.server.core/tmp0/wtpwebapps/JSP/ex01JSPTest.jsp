<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
/* CSS �ּ� */
</style>

<script type="text/javascript">
// JS �ּ�
</script>

</head>
<body>
<!-- HTML �ּ� -->
<!-- JSP �ּ� -->
	<h1>������ �ݿ���</h1>
	
	<%
	// ����� �ڹٰ���
		int num = 100;
		String name = "ȣ�ξ�";
	
	%>
	<!-- ǥ���� : �ڹ� ������� ���������� ��� -->
	<%=name %>
	
	<%
		int age = 20;
		int size = 20;
		String color = "yellow";
	%>
	<!-- ���м� �±� -->
	<hr size="<%=size %>" color="<%=color%>">
	
</body>
</html>