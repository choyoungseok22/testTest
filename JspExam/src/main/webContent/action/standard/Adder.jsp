<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>Adder.jsp</title>
</head>
<body>
     <jsp:scriptlet> 
     String str1     = request.getParameter("NUM1");
     String str2     = request.getParameter("NUM2");
     int    num1     = Integer.parseInt(str1);
     int    num2     = Integer.parseInt(str2);
     int    sum      = add(num1, num2);
     </jsp:scriptlet>
     <h1>두 수의 합은 <jsp:expression>sum</jsp:expression>입니다.</h1>
</body>
</html>

<jsp:declaration>
private int add(int num1, int num2) {
	return num1 + num2;
}
</jsp:declaration>