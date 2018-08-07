<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="cs.css">
<title>마이페이지</title>
</head>
<style>
</style>
<body>
	<jsp:include page="top.jsp" flush="false"></jsp:include>
	<form class="csform">
		<%
			String user_id = (String) session.getAttribute("id");
			Boolean isLogin = false;
			String pt = "";
			String[] prt;
			int cnt=0;

			try {
				Class.forName("com.mysql.jdbc.Driver");
				String url = "jdbc:mysql://localhost:3306/travel";
				Connection con = DriverManager.getConnection(url, "admin", "1234");
				Statement stat = con.createStatement();
				String sql;
				ResultSet rs;

				String query = "SELECT result from member where id='" + user_id + "'";
				stat.execute(query);
				rs = stat.getResultSet();
				cnt++;
				
				if (rs.next()) {
					pt = rs.getString(1);
					prt = pt.split(",");
					out.write("-----------------------------------------------------");
					for (int i = 1; i < prt.length; i++) {
						out.write(" "+prt[i] + "<br>");
					}
					out.write("-----------------------------------------------------");
				} else {
		%>
		<script>
			alert("로그인 후 이용해주세요.");
			history.go(-1);
		</script>
		<%
			}
				stat.close();
				rs.close();
				con.close();
			} catch (Exception e) {
				out.println(e);
			}
		%>

	</form>
</body>
</html>