<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:remove var="PRICE"/>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>ProductInfoView.jsp</title>
</head>
<body>
     <h1>상품 정보</h1>
     <h2>상품코드 : ${CODE}</h2>
     <h2>상 품 명 : ${NAME}</h2>
     <h2>상품가격 : ${PRICE}</h2>
</body>
</html>