<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>BookInfo.jsp</title>
</head>
<body>
     <h1>자바 책 소개</h1>
     <h2>제목 : 자바로 프로그램을 잘 만들기</h2>
     <h2>저자 : 김 자바</h2>
     <h2>페이지 수 : 937페이지</h2>
     <h2>가격 : 27,000원</h2>
     <jsp:include page="./Copyright.html"/>
     <%@ include file="./Copyright.html" %>
</body>
</html>