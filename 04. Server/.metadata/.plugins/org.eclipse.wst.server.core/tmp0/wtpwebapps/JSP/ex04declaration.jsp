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
		���� <%! %>
		- JSP�ȿ��� �ʵ� �Ǵ� �޼ҵ带 ����� ���� �� ���
	 --%>
	 
	 <%!
	 	// ����(�ʵ�, �޼ҵ� ����)
	 	public String name = "�ں���"; //--> �ʵ�� ��
	 	public int plus(int num1, int num2){
	 		return num1 + num2;
	 	}
	 %>
	 <%-- �ܼ� ����, �Լ� ��� : ��ũ��Ʈ��, ǥ���� --%>
	 <% 
	 	// ��ũ��Ʈ�� --> service()�޼ҵ� �ȿ� ��!
	 	// �޼ҵ� �ȿ����� ���� ������ �� : ���� ���� --> ���������� X
	 	String name2 = "ȫ�浿";
	 %>
	 <%= plus(30,40) %>
	 <%-- ǥ���Ŀ����� ���ϰ��� �����ϴ� �Լ� ����� ����!, �����ݷ� �Ⱦ� --%>
</body>
</html>