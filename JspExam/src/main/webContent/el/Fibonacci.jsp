<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="m" uri="http://localhost/math-function.tld" %>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>Fibonacci.jsp</title>
</head>
<body>
     <h1>피보나치 수열</h1>
     <h2>${param.NUM1} 과 ${param.NUM2} 로 부터 시작하는 피보나치 수열의  ${param.NUM3}의 값은 ?</h2>
     <h2>정답 : ${m:fibonacci(param.NUM1, param.NUM2, param.NUM3}입니다. </h2>
</body>
</html>