<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<% 
	String  jdbcDriver = "com.mysql.jdbc.Driver";
		String dbUr1 = "jdbc:mysql://localhost/userTable?useSSL=false";
		String username = "root";
		String password = "1234";
		
		String usrID = request.getParameter("id");
		String usrPW = request.getParameter("pw");
		String usrName = request.getParameter("name");
		String usrAge = request.getParameter("age");
	
		
		Connection con = null;
		java.sql.Statement st = null;
		ResultSet rs = null;
		Class.forName(jdbcDriver);//.newInstance();
		con=DriverManager.getConnection(dbUr1, username, password);
		st = con.createStatement();
		
		
		rs = st.executeQuery("Select * from userTable");
		//st.executeUpdate("insert into userTable values('id1', '1234', 'name', 30)");
		System.out.println("데이터 .");
		
		%>
		<table border ='1' >
		<tr>
			<th>id</th>
			<th>pw</th>
			<th>name</th>
			<th>age</th>
		</tr>
		<% 
		while(rs.next()){
			String id = rs.getString(1);
			String pw = rs.getString(2);
			String name = rs.getString(3);
			int age = rs.getInt(4);
		%>
		<tr>
			<td><%=id%></td>
			<td><%=pw%></td>
			<td><%=name%></td>
			<td><%=age%></td>
		</tr>
		<%
		}
		%>
		</table>
		<%
		
		con.close();
		%>			

		<a href = "newForm.jsp">홈으로</a>
			
			
			
		

</body>
</html>