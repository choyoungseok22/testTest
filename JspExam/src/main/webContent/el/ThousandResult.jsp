<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
int sum = 0;
for(int cnt = 1; cnt <= 10; cnt++) 
	sum += cnt;
pageContext.setAttribute("RESULT", new Integer(sum));
%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>ThousandResult.jsp</title>
</head>
<body>
     <h1>1부터 1000까지의 합은? - 자바변수 사용</h1>
     <h2><%=sum %></h2>
     <hr>
     <h1>1부터 1000까지의 합은? - Expression Language</h1>
     <h2>${RESULT}</h2>
     <hr>
     <h1>1부터 1000까지의 합은? - Request Scope</h1>
     <h2>${requestScope.RESULT}</h2>
</body>
</html>