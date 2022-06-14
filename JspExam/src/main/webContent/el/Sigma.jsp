<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="m" uri="http://localhost/math-function.tld" %>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>Sigma.jsp</title>
</head>
<body>
     <h1>주어진 범위의 합을 구하기</h1>
     <h2>${param.NUM1} 부터 ${param.NUM2} 까지의 합은?</h2>
     <h2>정답 : ${m:total(param.NUM1, param.NUM2)}</h2>     
</body>
</html>