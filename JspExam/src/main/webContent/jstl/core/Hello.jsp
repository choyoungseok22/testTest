<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>Hello.jsp</title>
</head>
<body>
     <h1>인사말</h1>
     <h2>안녕하세요, <c:out value="${param.ID}" default="Guest"/>님</h2>
</body>
</html>