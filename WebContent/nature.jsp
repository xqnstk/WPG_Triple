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
<form class="resultform">
<h2>한강 </h2>
	<table>
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>설명</td>
			<td>요금</td>
		</tr>
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
 	
  	sql = "SELECT active, script, money FROM hangang order by rand()"; //메뉴별로 1개씩 랜덤 출력
	stat.execute(sql);
	rs = stat.getResultSet();
	  
	while (rs.next()) {
		cnt++;
		out.println("<tr><td>#"+cnt +"</td> <td>"+rs.getString(1) + "</td><td>"+ rs.getString(2) + "</td><td>"+ rs.getString(3)+"원</td></tr>"); //결과 출력
	}

	rs.close();

	} catch (Exception e) {
		out.println(e);
	}
%>
	</table>
	<br><br><br>
	<a href="main.jsp">메인으로</a>
	<br><br><br>
</form>

</body>
</html>