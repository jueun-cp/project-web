<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>

<%
	
		String  jdbcDriver = "com.mysql.jdbc.Driver";
		String dbUr1 = "jdbc:mysql://localhost/userdb?useSSL=false"; 
		String username = "root";
		String password = "1216";
		
	
		
		Connection con = null;
		java.sql.Statement st = null;
		ResultSet rs = null;
		Class.forName(jdbcDriver);//.newInstance();
		con=DriverManager.getConnection(dbUr1, username, password);
		st = con.createStatement();
		
		rs = st.executeQuery("select *from userTable");
		
		%>
		<table border='1' cellpadding='0' cellspacing='0' width='500'>
			<tr>
				<td width='200'>���̵�</td>
				<td width='100'>�̸�</td>
				<td width='100'>����</td>
				<td width='100'>����</td>
				
			</tr>
<%
			while(rs.next())
			{
				String id = rs.getString(1);
				String name = rs.getString(3);
				String age = rs.getString(4);
				
				%>
				<tr>
					<td><a href='update.jsp?id=<%=id %>'><%=id %></a></td>
					<td><%=name %></td>
					<td><%=age %></td>
					<td><a href='delete.jsp?id=<%=id %>''>����</a></td>
				</tr>
				<%
			}
				
%>
			

		</table>
		
		
		<%
		
		con.close();
				
%>
	

