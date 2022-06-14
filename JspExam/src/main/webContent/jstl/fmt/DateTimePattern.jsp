<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="date" value="<%= new Date() %>"/>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>DateTimePattern.jsp</title>
</head>
<body>
     <h1>오늘의 시각</h1>
     <h2>[오늘의 날짜]<fmt:formatDate value="${date}" type="date" pattern="yyyy MM/dd (E)"/></h2> <%-- (E) : 요일 --%> 
     <h2>[오늘의 날짜]<fmt:formatDate value="${date}" type="time" pattern="(a)hh:mm:ss"/></h2> <%-- (a) : 오전,오후 표시 --%> 
     
</body>
</html>














