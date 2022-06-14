<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>Maximum.jsp</title>
</head>
<body>
     <%
     String str1    = request.getParameter("NUM1");
     String str2    = request.getParameter("NUM2");
     int    num1    = Integer.parseInt(str1);
     int    num2    = Integer.parseInt(str2);
     if(num1 > num2) {
    	 System.out.println(num1 + "이 더 큽니다.");
     }
     %>
     <h1>최대값 구하기</h1>
     <c:if test="${param.NUM1 - param.NUM2 >= 0 }">
          <h2>${param.NUM1}</h2>
     </c:if>
     <c:if test="${param.NUM1 - param.NUM2 < 0 }">
          <h2>${param.NUM2}</h2>
     </c:if>
     
     <c:if test="true">
          <h2>이 문장은 항상 출력이 됩니다.</h2>
     </c:if>
     <c:if test="false">
          <h2>이 문장은 절대로 출력이 되지 않습니다.</h2>
     </c:if>
</body>
</html>















