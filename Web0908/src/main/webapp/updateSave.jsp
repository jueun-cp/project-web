<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>

<%
	
		String  jdbcDriver = "com.mysql.jdbc.Driver";
		//¿©±â ¹Ù²ãÁà¾ßÇÔ
		String dbUr1 = "jdbc:mysql://localhost/db01?useSSL=false"; 
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
		
		//st.executeUpdate("insert into userTable values('"+usrID+"', '"+usrPW+"', '"+usrName+"', "+usrAge+")");
		st.executeUpdate("update userTable set age='" +usrAge+ "' where id='" +usrID+"'" );
		
		System.out.println("µ¥ÀÌÅÍ »ðÀÔ ¿Ï·á");
		con.close();
		
		response.sendRedirect("./list.jsp");
				
%>
	

