<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- ������ ������ ��ǰ���� ��Ű�� ����ǵ��� ��� ����
		- �Ѱܹ��� value���� ��Ű�� name���� ���
	 -->
	<%
		String[] pdlist = request.getParameterValues("pd");
		if(pdlist != null){
			for(int i = 0; i < pdlist.length; i++){
				// ��Ű�̸��� �ϳ��� �����ϰ� �Ǹ� �������� ����� ���� ��Ű�� �����ȴ�
				// ���� ��ǰ���� ����ǰ� �Ϸ��� ��Ű�̸��� �ߺ��Ǹ� �ȵȴ�.
				Cookie cookie = new Cookie(pdlist[i],pdlist[i]);
				response.addCookie(cookie);
			}
		}
		response.sendRedirect("product_list.jsp");
	
	%>
</body>
</html>