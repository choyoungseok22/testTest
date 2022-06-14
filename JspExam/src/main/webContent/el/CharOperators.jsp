<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>CharOperators.jsp</title>
</head>
<body>
     <h1>익스프레션 언어 연습</h1>
     <h3>${param.NUM1}을 ${param.NUM2}로 나눈 몫은? ${param.NUM1 div param.NUM2 }</h3> <%-- div : / --%>
     <h3>나머지는 ? ${param.NUM1 mod param.NUM2 }</h3>                                 <%-- mod : % --%>
     <h3>둘 다 양수입니까? ${(param.NUM1 gt 0) and (param.NUM2 gt 0) }</h3>            <%-- gt  : > --%>
     <h3>둘 다 음수입니까? ${(param.NUM1 lt 0) and (param.NUM2 lt 0) }</h3>            <%-- lt  : < --%>
</body>
</html>