<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% // 에러 페이지에 전달되는 익셉션 객체가 없으므로 page 지시자의 isErrorPage="true"를 지정할 필요는 없다. %>
<%  response.setStatus(200); %>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>NotFoundError.jsp</title>
</head>
<body>
     <h1>사용할 페이지가 없는 에러(404)</h1>
     <h2>해당 페이지를 찾을 수가 없습니다.</h2>
</body>
</html>