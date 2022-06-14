<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>CookieDataReader.jsp</title>
</head>
<body>
     <h1>쿠키 데이터 출력하기</h1>
     <h2>NAME 쿠키 데이터의 값은> ${cookie.NAME}</h2>
     <hr>
     <h2>NAME 쿠키 데이터의 값은> ${cookie.NAME.value}</h2>
     <h2>NAME 쿠키 데이터의 값은> ${cookie.NAME["value"]}</h2>
     <h2>NAME 쿠키 데이터의 값은> ${cookie["NAME"]["value"]}</h2>
     <h2>NAME 쿠키 데이터의 값은> ${cookie["NAME"].value}</h2>
</body>
</html>