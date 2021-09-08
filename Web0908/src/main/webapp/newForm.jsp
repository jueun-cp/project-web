<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<a href='./list.jsp'><input type='button' value='회원리스트확인'/></a>

	<form method='post' action='formSave.jsp'>
	<table>
		<tr>
			<td>ID</td>
			<td><input type='text' placeholder='ID를 입력하세요' name='id'/></td>
		</tr>
		
		<tr>
			<td>PW</td>
			<td><input type='password' placeholder='4자 이상' name='pw'/></td>
		</tr>
		
		<tr>
			<td>이름</td>
			<td><input type='text' placeholder='이름' name='name'/></td>
		</tr>
		
		<tr>
			<td>나이</td>
			<td><input type='text' placeholder='id를 입력하세요' name='age'/></td>
		</tr>
		
		<tr>
			<td colspan=2'><input type='submit' value='회원가입하기'/></td>
		</tr>
		
	</table>
	</form>
</body>
</html>