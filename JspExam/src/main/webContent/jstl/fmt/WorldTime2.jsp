<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="date" value="<%= new Date() %>"/>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>WorldTime2.jsp</title>
</head>
<body>
     <h1>세계 시간</h1>
     <h2>서울의 시간</h2>
     <h3><fmt:formatDate value="${date}" type="both"/></h3>
     <h2>홍콩의 시간</h2>
     <fmt:setTimeZone value="Asia/Hong_Kong"/>
         <h3><fmt:formatDate value="${date}" type="both"/></h3>
     <h2>런던의 시간</h2>
     <fmt:setTimeZone value="Europe/London"/>
         <h3><fmt:formatDate value="${date}" type="both"/></h3>
     <h2>뉴욕의 시간</h2>
     <fmt:setTimeZone value="America/New_York"/>
         <h3><fmt:formatDate value="${date}" type="both"/></h3>
</body>
</html>















