<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%-- <%@ %> : 지시자 --%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>JSP 연습</title>  
</head>
<body>
     <!-- <% %> : 스크립틀리스 - 자바언어를 사용시 <% %> 안에 입력-->
     <%                                                                                 
     int total = 0;
     for(int cnt = 1; cnt <= 100; cnt++) {
         total += cnt++;
     }
     %>
     <!-- <%= %> : 익스프레션 - <% %> 안에 입력한 내용을 출력할때는 <%= %> 안에 입력-->
     <h1>1 부터 100까지 더하는 결과는 ?</h1><br>
     <h2><%=total%></h2>                                                               
</body>
</html>