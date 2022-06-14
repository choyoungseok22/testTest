<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>LunchMenu.jsp</title>
</head>
<body>
     <h1>오늘의 점심 식단</h1><hr>
     <h2>설렁탕</h2>
     <h2>김치찌개</h2>
     <h2>콩나물 비빔밥</h2>
     <h2>짜장면</h2>
     
     <%
     // out.flush() => 이 명령이 쓰여지기 전의 내용을 강제적으로 화면에 뿌려주는 기능을 제공한다.
     out.flush();
     RequestDispatcher dispatcher = request.getRequestDispatcher("Now.jsp");// include할 페이지
     dispatcher.include(request, response);
     %>
</body>
</html>