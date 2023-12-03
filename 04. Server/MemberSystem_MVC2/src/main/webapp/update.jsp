<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Update</title>
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
	<legend>회원정보수정</legend>
	<div id="wrap">
		<form action="UpdateService" method="post">
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
					<td>NICKNAME</td>
					<td><input type="text" name="nick"></td>
				</tr>
				<tr>
					<td>E-MAIL</td>
					<td><input type="email" name="email"></td>
				</tr>
				<tr>
					<td>PHONE NUMBER</td>
					<td><input type="tel" name="phone"></td>
				</tr>
				<tr>
					<td>GENDER</td>
					<td>
						남<input type="radio" name="gender" value="MAN">
						여<input type="radio" name="gender" value="WOMAN">
					</td>
				</tr>
				<tr>
					<td>AGE</td>
					<td><input type="number" name="age"></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="회원정보수정완료">
						<input type="reset">
					</td>
				</tr>
			
			</table>
		</form>
	</div>
	</fieldset>
</body>
</html>