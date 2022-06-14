<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>OperatorsEmpty.jsp</title>
</head>
<body>
     <!-- empty : 데이터의 존재여부를 확인하는 단항 연산자,
                  피연산자인 데이터 이름은 empty 연산자 뒤에 써야한다. -->
     <h1>Empty 연산자</h1>
     <h2>안녕하십니까? ${empty param.ID ? "손님" : param.ID}</h2>
</body>
</html>