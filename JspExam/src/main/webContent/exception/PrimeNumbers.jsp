<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String str = request.getParameter("NUM");
int    num = Integer.parseInt(str);
%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>PrimeNumbers.jsp</title>
</head>
<body>
     <%
     int arr[] = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29};
     for(int cnt = 0; cnt <= num; cnt++) {
    	 out.print("<h1>" + arr[cnt] + "</h1>");
     }
     %>
</body>
</html>












