<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>TwoHundred.jsp</title>
</head>
<body>
     <%
     int sum = 0;
     for(int i = 0; i <= 100; i++)
    	 sum += i;
     %>
     <h2>1 부터 100 까지의 합은 => <%=sum %></h2>
     
     <%
     for(int i = 101; i <= 200; i++)
    	 sum += i;
     %>
     <h2>1 부터 200 까지의 합은 => <%=sum %> </h2>
</body>
</html>



