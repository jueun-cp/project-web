<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1> save form</h1>
	
	<%
	String  jdbcDriver = "com.mysql.jdbc.Driver";
	//���� �ٲ������
	String dbUr1 = "jdbc:mysql://localhost/userdb?useSSL=false";
	String username = "root";
	String password = "1216";
	
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
	
	
	st.executeUpdate("insert into usertable values('"+usrID+"', '"+usrPW+"', '"+usrName+"', "+usrAge+")");
	
	System.out.println("������ ���� �Ϸ�");
	con.close();
	%>
	
	<a href = "list.jsp"> ����Ʈ���� </a> 
	
</body>
</html>