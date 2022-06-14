<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>ApplicationTest.jsp</title>
</head>
<body>
     <%
     String appPath  = application.getContextPath();
     String filePath = application.getRealPath("/basic/YourName.html");
     %>
     <h2>application 내장 변수</h2><hr>
     <h3>웹 어플리케이션의 URL 경로명 : <%=appPath %></h3><br>
     <h3>/basic/YourName.html의 파일 경로명 : <%=filePath %></h3>
</body>
</html>