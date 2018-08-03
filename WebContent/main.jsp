<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="cs.css">
<title>Insert title here</title>
</head>
<body>
<%
	String user_id = (String)session.getAttribute("id"); 
	if(!(user_id.equals(null))) { //회원만 메뉴바 보이게
%>
		<jsp:include  page="top.jsp" flush="false"></jsp:include>
<%
	} 
%>
	<form id="mainform">
	<br><br>
		<h1>Triple</h1>
		<p>사용자 최적의 서울 여행지를 추천해드립니다.</p>
		<p>시작하기를 클릭하세요.</p> <br><br><br><br><br>
		회원이십니까 ? <a href="loginForm.jsp">로그인</a> <br>
		비회원이십니까? <a href="joinForm.jsp">회원가입</a> <br> 
		바로 시작하기 -> <a href="start.jsp">시작하기</a>
	</form>
</body>
</html>