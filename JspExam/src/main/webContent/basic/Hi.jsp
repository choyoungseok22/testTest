<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>Hi.jsp</title>
</head>
<body>
     <h2>안녕하세요.</h2><br>
     <h2><%=request.getParameter("YOURNAME") %> 님 오래간만 입니다.</h2><br>
     <h2><%=request.getParameter("FRIENDNAME") %> 님도 안녕하세요?</h2>
</body>
</html>