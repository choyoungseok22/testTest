<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Cookie cookie = new Cookie("NAME", "Dooley");
response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>CookieDataWriter.jsp</title>
</head>
<body>
     <h1>쿠키 생성하기</h1>
     <h2>쿠키 값이 설정되었습니다.</h2>
</body>
</html>