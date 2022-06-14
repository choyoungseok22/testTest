<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="date" value="<%= new Date() %>"/>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>WorldFormat.jsp</title>
</head>
<body>
     <%-- 국가별 시간 --%>
     <h1>우리나라의 포맷</h1>
     <fmt:setLocale value="ko_kr"/>
     금액 : <fmt:formatNumber  value="123456789" type="currency"/><br/>
     일시 : <fmt:formatDate    value="${date}" type="both" dateStyle="full" timeStyle="full"/>
     
     <h1>미국의 포맷</h1>
     <fmt:setLocale value="en_us"/>
     금액 : <fmt:formatNumber  value="123456789" type="currency"/><br/>
     일시 : <fmt:formatDate    value="${date}" type="both" dateStyle="full" timeStyle="full"/>
     
     <h1>?의 포맷</h1>
     <fmt:setLocale value="fr_CA"/>
     금액 : <fmt:formatNumber  value="123456789" type="currency"/><br/>
     일시 : <fmt:formatDate    value="${date}" type="both" dateStyle="full" timeStyle="full"/>
</body>
</html>


