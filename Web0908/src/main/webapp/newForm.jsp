<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<a href='./list.jsp'><input type='button' value='ȸ������ƮȮ��'/></a>

	<form method='post' action='formSave.jsp'>
	<table>
		<tr>
			<td>ID</td>
			<td><input type='text' placeholder='ID�� �Է��ϼ���' name='id'/></td>
		</tr>
		
		<tr>
			<td>PW</td>
			<td><input type='password' placeholder='4�� �̻�' name='pw'/></td>
		</tr>
		
		<tr>
			<td>�̸�</td>
			<td><input type='text' placeholder='�̸�' name='name'/></td>
		</tr>
		
		<tr>
			<td>����</td>
			<td><input type='text' placeholder='id�� �Է��ϼ���' name='age'/></td>
		</tr>
		
		<tr>
			<td colspan=2'><input type='submit' value='ȸ�������ϱ�'/></td>
		</tr>
		
	</table>
	</form>
</body>
</html>