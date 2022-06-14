<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>PetsResult.jsp</title>
</head>
<body>
     <h1>내가 키우고 있는 애완동물</h1>
     <h2>아이디 : ${param.ID}</h2>
     <h3>내가 키우는 애완동물 : 
          1.${paramValues.ANIMAL[0]}&nbsp;
          2.${paramValues.ANIMAL[1]}&nbsp;
          3.${paramValues.ANIMAL[2]}&nbsp;
          4.${paramValues.ANIMAL[3]}&nbsp;
          5.${paramValues.ANIMAL[4]}&nbsp;</h3>
</body>
</html>