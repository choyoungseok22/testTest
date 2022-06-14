<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>DinnerView.jsp</title>
</head>
<body>
     <h1>오늘의 저녁 메뉴</h1>
     <ul>
        <c:forEach var="dinner" items="${MENU}">
           <li><h3>"${dinner}"</h3></li>
        </c:forEach>
     </ul>
</body>
</html>