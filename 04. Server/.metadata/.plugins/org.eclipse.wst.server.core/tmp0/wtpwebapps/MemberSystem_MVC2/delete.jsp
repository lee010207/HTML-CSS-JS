<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Join</title>
<style type="text/css">
	#wrap, table, fieldset{
		margin: auto;
		text-align: center;
		font-size: 20px;
	}

</style>
</head>
<body>
	<fieldset>
	<legend>Info Delete</legend>
	<div id="wrap">
		<form action="DeleteService" method="post">
			<table>
				<tr>
					<td>ID</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td>PW</td>
					<td><input type="password" name="pw"></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="ȸ��Ż��Ϸ�">
						<input type="reset">
					</td>
				</tr>
			
			</table>
		</form>
	</div>
	</fieldset>
</body>
</html>