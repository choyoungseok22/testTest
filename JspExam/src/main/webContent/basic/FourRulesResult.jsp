<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>FourRulesResult.jsp</title>
</head>
<body>
     <h2>사칙연산 결과보기</h2>
     <%
     out.println("<h3>사칙연산의 결과를 보여줍니다.</h3>");
     out.println("<h3>더하기 결과 : " + request.getAttribute("PLUS") + "</h3>");
     %>
     <h2>입력된 수 : <%=request.getParameter("NUM1") %>, <%=request.getParameter("NUM2") %></h2>
     <h3>더하기 결과 : <%=request.getAttribute("PLUS") %></h3>
     <h3>빼  기 결과 : <%=request.getAttribute("MINUS") %></h3>
     <h3>곱하기 결과 : <%=request.getAttribute("MULTIPLY") %></h3>
     <h3>나누기 결과 : <%=request.getAttribute("DIVIDE") %></h3>
</body>
</html>