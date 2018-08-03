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
h4{color:white;}
</style>
<body>
<jsp:include  page="top.jsp" flush="false"></jsp:include>
<form id="mainform"> <br><br><br><br>
<%
	try {
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/travel";
	Connection con = DriverManager.getConnection(url, "admin", "1234");
	Statement stat = con.createStatement();
	Statement st = con.createStatement();

	String sql;
    ResultSet rs, re;
    String user_gender= request.getParameter("gender");
    String user_age= request.getParameter("age");
    String user_area= request.getParameter("area");
    String user_fee= request.getParameter("fee");
    String[] user_todo= request.getParameterValues("todo");
    String[] result = new String[5];
    String place="", query="", resultDB="", j="";
    String id = (String)session.getAttribute("id");
    int sum=0, cnt=0;
 	
    if(user_area.equals("hotplace")) {
    	place="hongdae";
    } else if(user_area.equals("nature")) {
    	place="hangang";
    } else if(user_area.equals("trip")) {
    	place="itaewon";
    } 
    	
    for(int i=1; i<=3; i++) {
	
	    sql = "SELECT active, script, money FROM "+place+" WHERE menu="+i+" and age="+user_age+" order by rand()"; //메뉴별로 1개씩 랜덤 출력
	    stat.execute(sql);
	    rs = stat.getResultSet();
	    
	  	while (rs.next()) {
			cnt++;
			sum += Integer.parseInt(rs.getString(3));
			out.println("'"+rs.getString(1) + "' -> "+ rs.getString(2) + ", "+ rs.getString(3)+"원"+"<br>"); //결과 출력
			j = j+", "+rs.getString(1);
			break; //1줄씩 받아오기 위해 break사용
		}
	  	
		query = "SELECT result from member where id='"+id+"'"; //DB에서 저장되어 있는 기존의 result값 가져오기
		st.executeQuery(query);
		re = st.getResultSet();
		while (re.next()) {
			resultDB = re.getString(1) + ", " + j; //가져온 기존 result값에 새로운 result값 추가하여 String에 저장
		}
		out.write("<br>");
		rs.close();
		re.close();

	} //for
    
	query = "UPDATE member SET result='" + resultDB + "' where id='"+id+"'"; //resultDB문자열을 DB에 업데이트
	stat.executeUpdate(query);

    
	out.println("지출 합계 : " + sum);
	sum = 0;

	//response.sendRedirect("loginForm.jsp");

	} catch (Exception e) {
		out.println(e);
	}
%> <br>
<a href="myPage.jsp">마이페이지로</a>

</form>
</body>
</html>