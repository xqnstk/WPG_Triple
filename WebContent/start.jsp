<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="cs.css">
<title>Insert title here</title>
</head>
<style>
	body{
		text-align:center;
	}
</style>
<body>
	start페이지다 !
	
	<form action="startProc.jsp" method="post" id="startform">
	<h2>연령</h2>
  		<input type="radio" name="age" value="10"> 청소년 
  		<input type="radio" name="age" value="20"> 성인 <br>
  	<h2>테마</h2>
  		<input type="radio" name="area" value="hotplace"> 핫플 <br>
  		<input type="radio" name="area" value="trip"> 여행 <br>   
  		<input type="radio" name="area" value="nature"> 자연 <br> 
  		<input type="radio" name="area" value="sinchon"> 맛집 <br>      
  	<h2>돈</h2>
  		<input type="radio" name="fee" value="10000"> 만원 <br>
  		<input type="radio" name="fee" value="50000"> 5만원 <br>   
  		<input type="radio" name="fee" value="100000"> 10만원 <br>   
  	<h2>할 것</h2>
  		<input type="checkbox" name="todo" value="eat"> 먹기 <br>
  		<input type="checkbox" name="todo" value="see"> 보기 <br>
  		<input type="checkbox" name="todo" value="do"> 하기 <br>
  		
  		
  		<input type="submit" value="결과 보기"> 
		<input type="reset" value="취소">
  		
	</form>
	<%
	out.println(session.getAttribute("id")); 
	out.println(session.getAttribute("pwd")); 
	%>
</body>
</html>