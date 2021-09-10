<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
		String  jdbcDriver = "com.mysql.jdbc.Driver";
		//여기 바꿔줘야함
		String dbUr1 = "jdbc:mysql://localhost/db00?useSSL=false";
		String username = "root";
		String password = "1216";
		
		String usrID = request.getParameter("id");
		
		Connection con = null;
		java.sql.Statement st = null;
		ResultSet rs = null;
		Class.forName(jdbcDriver);//.newInstance();
		con=DriverManager.getConnection(dbUr1, username, password);
		st = con.createStatement();
		
		//st.executeUpdate("insert into userTable values('"+usrID+"', '"+usrPW+"', '"+usrName+"', "+usrAge+")");
		st.executeUpdate("delete from user where id='" +usrID+ "'");
		
		con.close();
		
		response.sendRedirect("./list.jsp");
				
%>
	

