<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Cookie cookie = new Cookie("GENDER", "MALE");
cookie.setMaxAge(0);
response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>DeleteCookie.jsp</title>
</head>
<body>
	<h1>GENDER 쿠키가 삭제되었습니다.</h1>
</body>
</html>