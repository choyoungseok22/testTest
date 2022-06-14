<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>Operators.jsp</title>
</head>
<body>
     <h1>익스프레션 언어의 연산자</h1><hr>
     <h3>X = ${param.NUM1 }, Y = ${param.NUM2 }</h3>
     <h3>X + Y = ${param.NUM1 + param.NUM2 }</h3>
     <h3>X - Y = ${param.NUM1 - param.NUM2 }</h3>
     <h3>X x Y = ${param.NUM1 * param.NUM2 }</h3>
     <h3>X / Y = ${param.NUM1 / param.NUM2 }</h3>
     <h3>X % Y = ${param.NUM1 % param.NUM2 }</h3>
     <h3>X가 Y보다 큰가요?        ${param.NUM1 - param.NUM2 > 0 }</h3>
     <h3>Y가 X보다 큰가요?        ${param.NUM1 - param.NUM2 < 0 }</h3>
     <h3>X와 Y는 모두 양수입니까? ${param.NUM1 > 0 && param.NUM2 > 0 }</h3>
     <h3>X와 Y는 같은가요?        ${param.NUM1 == param.NUM2 ? "예" : "아니오" }</h3>
</body>
</html>