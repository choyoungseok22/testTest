<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>BBSPostNewResult.jsp</title>
</head>
<body>
     <h2>게시판 글쓰기 결과</h2><hr>
     <%
     String msg = request.getParameter("RESULT");
     
     if(msg.equals("SUCCESS")) {
    	 out.println("<h3>파일이 저장되었습니다.</h3>");
     } else if(msg.equals("FAIL")) {
    	 out.println("<h3>파일에 데이터를 기록할 수가 없습니다.</h3>");
     } else {
    	 out.println("<h3>알 수 없는 예외가 발생하였습니다.</h3>");
     }
     %>
</body>
</html>