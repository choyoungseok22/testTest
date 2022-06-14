<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String str1   = request.getParameter("NUM1");
String str2   = request.getParameter("NUM2");
int    num1   = Integer.parseInt(str1);
int    num2   = Integer.parseInt(str2);
%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>Divide.jsp</title>
</head>
<body>
     <h1>나누기 프로그램</h1>
     <c:catch var="e">
         <% int result = num1 / num2; %>
         <h2><%=num1%> 나누기 <%=num2%> 나누셈의 결과는 ? <%=result%></h2>   
     </c:catch>
     <c:if test="${e != null}">
          에러 메시지 : ${e.message}
     </c:if>
</body>
</html>











