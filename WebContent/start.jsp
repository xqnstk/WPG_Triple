<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	start페이지다 !
	
	<form action="startProc.jsp" method="post">
	<h2>성별</h2>
		<input type="radio" name="gender" value="woman" checked> 여자 <br>
  		<input type="radio" name="gender" value="man"> 남자 <br>
	<h2>연령</h2>
  		<input type="radio" name="age" value="one"> 청소년 <br>
  		<input type="radio" name="age" value="two"> 어른 <br>
  		<input type="radio" name="age" value="three"> 아저씨 <br>   
  	<h2>테마</h2>
  		<input type="radio" name="area" value="hotplace"> 핫플 <br>
  		<input type="radio" name="area" value="quiet"> 한적 <br>   
  		<input type="radio" name="area" value="itaewon"> 자연 <br> 
  		<input type="radio" name="area" value="sinchon"> 맛집 <br>      
  	<h2>돈</h2>
  		<input type="radio" name="fee" value="no"> 무자본 <br>
  		<input type="radio" name="fee" value="small"> 만원 <br>
  		<input type="radio" name="fee" value="normal"> 5만원 <br>   
  		<input type="radio" name="fee" value="big"> 10만원 <br>   
  		
  		<input type="submit" value="결과 보기"> 
		<input type="reset" value="취소">
  		
	</form>
	
</body>
</html>