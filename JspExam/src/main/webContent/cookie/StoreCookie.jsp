<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
response.addCookie(new Cookie("NAME",   "둘리"));
response.addCookie(new Cookie("GENDER", "중성"));
response.addCookie(new Cookie("AGE",    "18"));
%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>StoreCookie.jsp</title>
</head>
<body>
     <h1>쿠키가 저장되었습니다.</h1>
</body>
</html>