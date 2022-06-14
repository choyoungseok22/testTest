<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Cookie cookie = new Cookie("JOB", "Programmer");
// 쿠키를 한정된 경로에만 설정한다.
cookie.setPath("/cookie/sub1/");
response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>StoreCookieJob.jsp</title>
</head>
<body>
	<h1>쿠키가 생성되었습니다.</h1>
</body>
</html>