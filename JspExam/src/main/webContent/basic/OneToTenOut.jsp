<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>OneToTenOut.jsp</title>
</head>
<body>
     <h1>1부터 10까지 순서대로 보여주기</h1>
     <% for(int cnt=1; cnt <= 10; cnt++){
    	 out.println("<h3>" + cnt + "</h3>");
     }
     %>
</body>
</html>