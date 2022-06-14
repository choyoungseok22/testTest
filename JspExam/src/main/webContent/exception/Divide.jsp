<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
// get방식으로 입력된 변수를 저장한다.
String str1 = request.getParameter("NUM1");
String str2 = request.getParameter("NUM2");

// 넘어오는 값은 문자형태이므로 계산하기 위해서 숫자형으로 변환하여 변수에 저장한다.
int    num1 = Integer.parseInt(str1);
int    num2 = Integer.parseInt(str2);

// 두 수를 곱한 값을 변수에 저장한다.
int    result = num1 / num2;
%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>Divide.jsp</title>
</head>
<body>
     <h1>나누기 프로그램</h1>
     <h2><%=num1 %> / <%=num2 %> = <%=result %></h2>
</body>
</html>