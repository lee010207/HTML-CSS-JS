<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="ex09scoreResult.jsp" method="post">
		<fieldset>
			<legend>����Ȯ�����α׷�</legend>
			<table style="margin: auto; text-align: center;">
				<tr>
					<td>�̸�</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>�ڹ�����</td>
					<td><input type="text" name="java"></td>
				</tr>
				<tr>
					<td>Web����</td>
					<td><input type="text" name="web"></td>
				</tr>
				<tr>
					<td>Iot����</td>
					<td><input type="text" name="iot"></td>
				</tr>
				<tr>
					<td>Android����</td>
					<td><input type="text" name="android"></td>
				</tr>
				<tr>
					<td colspan ="2">
					<!-- value ���� ���ָ� "����" -->
					<input type="submit" value="���Ȯ��">
					</td>
				</tr>
			
			</table>
			
		</fieldset>
	
	</form>
</body>
</html>