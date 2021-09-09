<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
	
		String  jdbcDriver = "com.mysql.jdbc.Driver";
		//여기 바꿔줘야함
		String dbUr1 = "jdbc:mysql://localhost/userdb?useSSL=false";
		String username = "root";
		String password = "1216";
		
		String userName = request.getParameter("id");
	
		
		Connection con = null;
		java.sql.Statement st = null;
		ResultSet rs = null;
		Class.forName(jdbcDriver);//.newInstance();
		con=DriverManager.getConnection(dbUr1, username, password);
		st = con.createStatement();
		
		rs =  st.executeQuery("select *from usertable where id='"+userName + "'");
		
		rs.next();
	
		
		String usrID = rs.getString(1);
		String usrPW = rs.getString(2);
		String usrName = rs.getString(3);
		String usrAge = rs.getString(4);
		%>
		
		<form method='post' action='updateSave.jsp'>
		<table>
			<tr>
				<td>ID</td>
				<td><input type='text' placeholder='ID를 입력하세요'   name='id' value=<%=usrID %>></td>
			</tr>
			
			<tr>
				<td>PW</td>
				<td><input type='text' placeholder='4자 이상' disabled name='pw' value=<%=usrPW %> ></td>
			</tr>
			
			<tr>
				<td>이름</td>
				<td><input type='text' placeholder='이름' disabled name='name' value=<%=usrName %> ></td>
			</tr>
			
			<tr>
				<td>나이</td>
				<td><input type='text' placeholder='나이를 입력하세요' name='age' value=<%=usrAge %>></td>
			</tr>
			
			<tr>
				<td colspan=2'><input type='submit' value='수정하기'/></td>
			</tr>
			
		</table>
	</form>
		
		<%
		
		con.close();			
		%>
	


