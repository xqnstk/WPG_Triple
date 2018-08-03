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
#showtable{
	width:700px;
	height:700px;
	background-color:white;
}

</style>
<body>
<jsp:include  page="top.jsp" flush="false"></jsp:include>

	show페이지다 !
	
	<table id="showtable">
		<tr>
			<td><a href="hotplace.jsp">핫플</a></td>
			<td><a href="nature.jsp">자연</a></td>
		</tr>
		<tr>
			<td><a href="trip.jsp">여행</a></td>
			<td>맛집</td>
		</tr>
	</table>
	
	
</body>
</html>