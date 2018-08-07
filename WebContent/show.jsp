<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="cs.css">
<title>모아보기</title>
</head>
<style>
#showtable{
	margin-left:200px;
	margin-top:50px;
	background-color:black;
}


#showtable img{
	width:1500px;
	height:300px;
	opacity:0.7;
}
font{
	size:16;
}
</style>
<body>
<jsp:include  page="top.jsp" flush="false"></jsp:include>
	<table id="showtable">
		<tr>
			<td><a href="hotplace.jsp"><img src="image/hotple.PNG"></a></td>
		</tr>
		<tr>
			<td><a href="nature.jsp"><img src="image/hang.PNG"></a></td>
		</tr>
		<tr>
			<td><a href="trip.jsp"><img src="image/won.PNG"></a></td>
		</tr>
	</table>
	
	
</body>
</html>