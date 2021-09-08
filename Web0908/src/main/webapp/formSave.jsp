<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%
	
		String  jdbcDriver = "com.mysql.jdbc.Driver";
		String dbUr1 = "jdbc:mysql://localhost:3306/db01";
		String username = "root";
		String password = "123456789";
		
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
		
		st.executeUpdate("insert into userTable values('"+usrID+"', '"+usrPW+"', '"+usrName+"', '"+usrAge+"')");
		System.out.println("데이터 삽입 완료");
		con.close();
				
%>