<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String result = request.getParameter("RESULT"); %>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>Result.jsp</title>
</head>
<body>
     <h1>회원 가입 결과</h1>
     <%
     if(result.equals("SUCCESS")) {
    	 out.println("<h3>회원 가입을 축하드립니다.</h3>");
    	 out.println("<img src='../../images/congraturation.jpg'>");
     } else if(result.equals("ERROR")) {
    	 out.println("<h3>회원 가입을 처리하는 중에 문제가 발생하였습니다.</h3>");
     } else {
    	 out.println("<h3>회원 가입이 되지 않았습니다. 잠시 후에 다시 해주십시오.</h3>");
     }
     %>
</body>
</html>