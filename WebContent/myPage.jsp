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
</style>
<body>
<jsp:include  page="top.jsp" flush="false"></jsp:include>
<form class="loginform">
<%
		request.setCharacterEncoding("utf-8"); 
	
		//POST로 Input.html로부터 입력받은 내용을 변수화
		String user_id = (String)session.getAttribute("id"); 
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
	    Boolean isLogin = false;
	    String pt="";
		String[] prt;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/travel";
			Connection con = DriverManager.getConnection(url, "admin", "1234");
			Statement stat = con.createStatement();
			String sql;
		    ResultSet rs;

			String query = "SELECT result from member where id='" + user_id  + "'";
			stat.execute(query);
			rs = stat.getResultSet();
			
			if (rs.next()) {
				pt = rs.getString(1);
				prt = pt.split(",");
				for(int i=0; i<prt.length; i++)
					out.write(prt[i]+"<br>");
			} else {
		        %> <script> alert("로그인 후 이용해주세요."); history.go(-1); </script> <%            
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