<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>NumberFormat.jsp</title>
</head>
<body>
     <h1>숫자 형식</h1>
     <%-- groupingUsed="true" : 3자리 마다 ,쉼표를 준다. --%>
     <h2>첫번째 : <fmt:formatNumber value="12345678900" groupingUsed="true"/> 원</h2>
     <%--#.## : 소수점 2자리에서 끊는다. --%>
     <h2>두번째 : <fmt:formatNumber value="3.14158"     pattern="#.##"/></h2>
     <h2>세번째 : <fmt:formatNumber value="10.5"        pattern="#.00"/></h2> <%--10.50 --%>
</body>
</html>
















