<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>Greeting.jsp</title>
</head>
<body>
     <% 
     int count = 1;
     switch (count) {
     case    0: break;
     case    1: break;
     default:   break;
     }
     %>
     <c:choose>
          <c:when test="${param.NUM == 0}">
              <h2>반갑습니다. 처음 방문하셨군요.</h2>
          </c:when>
          <c:when test="${param.NUM == 1}">
              <h2>다시 만나뵙게되어 반갑습니다.</h2>
          </c:when>
          <c:otherwise>
              <h3>자주 오시는 군요.</h3>
          </c:otherwise>
     </c:choose>
</body>
</html>