<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="m" uri="http://localhost/math-function.tld" %>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>SquareRoot.jsp</title>
</head>
<body>
     <h1>제곱근 구하기</h1>
     <h2>${param.NUM}의 제곱근은 ? ${m:squareroot(param.NUM) }</h2>
</body>
</html>