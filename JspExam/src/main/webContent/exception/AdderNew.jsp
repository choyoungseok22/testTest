<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" 
    errorPage="DataErrorNew.jsp"%> <!-- 페이지 지시자에 넘어갈 페이지를 작성 jsp에서 try catch문을 이용하지 않아도 되다. -->
<% // errorPage="DataErrorNew.jsp" <== try 문을 쓰지 않고도 에러 페이지를 호출할 수 있다. 
String str1    = request.getParameter("NUM1");
String str2    = request.getParameter("NUM2");	
int    num1    = Integer.parseInt(str1);
int    num2    = Integer.parseInt(str2);
int    result  = num1 + num2;
%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>AdderNew.jsp</title>
</head>
<body>
     <h1>두 수의 더한 결과는 ?</h1>
     <h2><%=num1 %> + <%=num2 %> = <%=result %></h2>
</body>
</html>









