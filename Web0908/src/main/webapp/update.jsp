<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>

<%
	
		String  jdbcDriver = "com.mysql.jdbc.Driver";
		//���� �ٲ������
		String dbUr1 = "jdbc:mysql://localhost/db01?useSSL=false"; 
		String username = "root";
		String password = "1234";
		
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
			<td><input type='text' placeholder='ID�� �Է��ϼ���' disabled name='id' value=<%=usrID %>></td>
		</tr>
		
		<tr>
			<td>PW</td>
			<td><input type='text' placeholder='4�� �̻�' disabled name='pw' value=<%=usrPW %> ></td>
		</tr>
		
		<tr>
			<td>�̸�</td>
			<td><input type='text' placeholder='�̸�' disabled name='name' value=<%=usrName %> ></td>
		</tr>
		
		<tr>
			<td>����</td>
			<td><input type='text' placeholder='���̸� �Է��ϼ���' name='age' value=<%=usrAge %>></td>
		</tr>
		
		<tr>
			<td colspan=2'><input type='submit' value='�����ϱ�'/></td>
		</tr>
		
	</table>
	</form>
		
		
		
		<%
		
		
		
		
		con.close();
		
		
		
		
				
%>



