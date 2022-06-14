<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.TimeZone" %>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>TimeZoneIDs.jsp</title>
</head>
<body>
     <%-- fmt:timeZone 커스텀 액션에서 사용하는 지역이름 알아보기 --%>
     <h1>시간대 ID 목록</h1>
     <%
       String arr[]   = TimeZone.getAvailableIDs();
     for(int cnt = 0; cnt <= arr.length; cnt++) {
    	 out.println("<h4>" + arr[cnt] + "</h4>");
     }
     %>
</body>
</html>