<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% // 전 페이지에서 넘겨준 정보들을 가져온다.
request.setCharacterEncoding("utf-8");

String  id         = request.getParameter("ID");
String  password   = request.getParameter("PASSWORD");
String  name       = request.getParameter("NAME");

session.setAttribute("ID",        id);
session.setAttribute("PASSWORD",  password);
session.setAttribute("NAME",      name);
%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>Agreement.jsp</title>
</head>
<body>
     <h1>회원 약관</h1><hr>
     --------------------------------------------------------------------------------------------<br>
     1. 회원정보는 웹 사이트의 운영을 위해서만 사용이 됩니다.<br>
     2. 개인정보는 외부에 누출이 되지 않습니다.<br>
     3. 개인정보는 교육, 선물증정 등에 사용될 수 있습니다.<br>
     --------------------------------------------------------------------------------------------<br>
     <form action="Subscribe.jsp" method="post">
          <h3>위의 약관에 동의하십니까</h3>
          <h4><input type=radio name="AGREE" value="YES">동의함&emsp;
              <input type=radio name="AGREE" value="NO">동의하지 않음</h4><hr>
          <input type="submit" value="확인">
     </form>
</body>
</html>















