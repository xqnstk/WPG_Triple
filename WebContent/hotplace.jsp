<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="cs.css">
<title>Insert title here</title>
</head>
<style>
#showtable {
	width: 700px;
	height: 700px;
	background-color: white;
}
</style>
<body>
	<jsp:include page="top.jsp" flush="false"></jsp:include>
<form class="loginform">
	<%
	request.setCharacterEncoding("utf-8"); 
	int cnt=0;
	String sql;
	ResultSet rs;
	try {
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/travel";
	Connection con = DriverManager.getConnection(url, "admin", "1234");
	Statement stat = con.createStatement();
	Statement st = con.createStatement();
 	
  	sql = "SELECT active, script, money FROM hongdae order by rand()"; //메뉴별로 1개씩 랜덤 출력
	stat.execute(sql);
	rs = stat.getResultSet();
	    
	while (rs.next()) {
		cnt++;
		out.println("#"+cnt +" "+rs.getString(1) + " -> "+ rs.getString(2) + ", "+ rs.getString(3)+"원"+"<br>"); //결과 출력
	}
	  
	rs.close();

	} catch (Exception e) {
		out.println(e);
	}
%>
	<br>
</form>
</body>
</html>