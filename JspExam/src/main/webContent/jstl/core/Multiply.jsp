<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="num1" value="12"/>
<c:set var="num2" value="15"/>
<c:set var="sum" value="${num1*num2}"/>

<% int num11 = 11, num22 = 22; %>
<c:set var = "sum00" value="<%=num11 + num22 %>" />

<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>Multiply.jsp</title>
</head>
<body>
     <h1>두수의 곱한 값은?</h1>
     <h2>${num1} x ${num2} = ${sum}</h2>
     <%--<c:set> 커스텀 액션을 이용해서 선언한 변수는 자바 변수가 되는 것이 아니라,
         page 데이터 영역의 Attribute로 된다. --%>
         
     <h2>${sum00}</h2>
         
</body>
</html>