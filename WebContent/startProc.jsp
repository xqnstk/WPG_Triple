<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
try {
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/travel";
	Connection con = DriverManager.getConnection(url, "admin", "1234");
	Statement stat = con.createStatement();
	String sql;
    ResultSet rs;
    String user_gender= request.getParameter("gender");
    String user_age= request.getParameter("age");
    String user_area= request.getParameter("area");
    String user_fee= request.getParameter("fee");
    String[] user_todo= request.getParameterValues("todo");
    String place="";
    for(int i=0; i<user_todo.length; i++) {
        if(user_todo[i]=="eat") {
        	String user_eat;
        } else if(user_todo[i]=="see") {
        	String user_see;
        } else if(user_todo[i]=="do") {
        	String user_do;
        }
    }
    
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
	    
	    while(rs.next()){ 
	    	  out.println(i+" : " + rs.getString(1) + ", "+ rs.getString(2) + ", "+ rs.getString(3));  
	    	  out.write("<br>");
	    	  break; //1줄씩 받아오기 위해 break사용
	    }
	    rs.close(); 
    }
    


    
} catch (Exception e) {       
    out.println(e);
}
%>



</body>
</html>