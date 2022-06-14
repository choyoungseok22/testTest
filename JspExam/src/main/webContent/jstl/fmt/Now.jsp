<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="date" value="<%= new Date() %>"/>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>Now.jsp</title>
</head>
<body>
     <h1>현재의 시각 정보</h1>
     <h2>[오늘의 날짜] "${date}"</h2> <!-- [오늘의 날짜] "Tue Feb 22 18:09:09 KST 2022" 출력 -->
     <h2>[오늘의 날짜] <fmt:formatDate value="${date}"/></h2> <!-- 오늘 날짜만 -->
     <h2>[현재의 시각] <fmt:formatDate value="${date}" type="time"/></h2> <!-- 오늘 시간만 -->
</body>
</html>