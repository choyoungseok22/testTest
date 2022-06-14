<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="date" value="<%=new Date() %>"/>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>DateTimeFormat.jsp</title>
</head>
<body>
     <h1>현재의 시각</h1>
      <%-- type="both" : 날짜와 시간 모두 --%>
     <h3>[S] <fmt:formatDate value="${date}" type="both" dateStyle="short" timeStyle="short"/> </h3> 
     <h3>[M] <fmt:formatDate value="${date}" type="both" dateStyle="medium" timeStyle="medium"/> </h3>
     <h3>[L] <fmt:formatDate value="${date}" type="both" dateStyle="long" timeStyle="long"/> </h3>
     <h3>[F] <fmt:formatDate value="${date}" type="both" dateStyle="full" timeStyle="full"/> </h3>
</body>
</html>














