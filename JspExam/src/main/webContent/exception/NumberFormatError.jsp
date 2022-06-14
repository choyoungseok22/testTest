<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" 
    isErrorPage="true"%>
<%  response.setStatus(200); %>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>NumberFormatError.jsp</title>
</head>
<body>
     <h1>숫자 포맷 에러 페이지</h1>
     <h2>숫자 포맷이 잘못되었습니다.</h2>
     <h2>상세 에러 메시지 1 : <%=exception.getMessage() %></h2>    
</body>
</html>