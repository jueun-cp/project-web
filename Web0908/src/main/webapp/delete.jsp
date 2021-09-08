<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>

<%
	
		String  jdbcDriver = "com.mysql.jdbc.Driver";
		//¿©±â ¹Ù²ãÁà¾ßÇÔ
		String dbUr1 = "jdbc:mysql://localhost/db01?useSSL=false"; 
		String username = "root";
		String password = "1234";
		
		String usrID = request.getParameter("id");
		
	
		
		Connection con = null;
		java.sql.Statement st = null;
		ResultSet rs = null;
		Class.forName(jdbcDriver);//.newInstance();
		con=DriverManager.getConnection(dbUr1, username, password);
		st = con.createStatement();
		
		//st.executeUpdate("insert into userTable values('"+usrID+"', '"+usrPW+"', '"+usrName+"', "+usrAge+")");
		st.executeUpdate("delete from userTable where id='" +usrID+ "'");
		
		con.close();
		
		response.sendRedirect("./list.jsp");
				
%>
	

