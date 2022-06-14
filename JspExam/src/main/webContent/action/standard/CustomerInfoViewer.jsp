<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>CustomerInfoViewer.jsp</title>
</head>
<body>
     <h2>회원 정보</h2>
     <jsp:useBean class="servlet.standard.PersonalInfo" id="pInfo" scope="request"/>
     <h3>이름 : <jsp:setProperty name="pInfo" property="name"/></h3>
     <h3>성별 : <jsp:setProperty name="pInfo" property="gender"/></h3>
     <h3>나이 : <jsp:setProperty name="pInfo" property="age"/></h3>
</body>
</html>