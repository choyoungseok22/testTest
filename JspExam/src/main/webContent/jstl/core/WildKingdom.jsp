<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>WildKingdom.jsp</title>
</head>
<body>
     <h1>호랑이님의 생일잔치에는 누가 왔을까요?</h1>
     <c:set var="guests" value="토끼^^거북이~사슴*고양이~강아지#늑대^참새#원숭이"/>
     <c:forTokens var="animal" items="${guests}" delims="^~#*">
          <h2>"${animal}"</h2>
     </c:forTokens>
</body>
</html>