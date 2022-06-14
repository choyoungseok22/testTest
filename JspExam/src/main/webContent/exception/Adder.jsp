<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
int num1 = 0, num2 = 0, result = 0;

try {
	String str1     = request.getParameter("NUM1");
	String str2     = request.getParameter("NUM2");	
	System.out.println(str1 + ":" + str2);
	
	num1    = Integer.parseInt(str1);
	num2    = Integer.parseInt(str2); // 문자를 숫자로 변환
	result  = num1 + num2; 
} catch(NumberFormatException e) { // 넘어온 값이 숫자가 아니고 문자이면 DataError.jsp로 처리
	// 숫자형태가 아니면
	RequestDispatcher dispatcher = request.getRequestDispatcher("DataError.jsp");
	dispatcher.forward(request, response);
}
%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>Adder.jsp</title>
</head>
<body>
     <h1>두 수의 더한 결과는 ?</h1>
     <h2><%=num1%> + <%=num2%> = <%=result%></h2>
</body>
</html>