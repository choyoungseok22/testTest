<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>CustomerInfoNewer.jsp</title>
</head>
<body>
     <h1>회원 정보</h1>
     <jsp:useBean id="pinfo" class="servlet.standard.PersonalInfo"/>
     <jsp:setProperty property="*" name="pinfo"/>
     <h3>이름 : <jsp:getProperty property="name"    name="pinfo"/></h3>
     <h3>성별 : <jsp:getProperty property="gender"  name="pinfo"/></h3>
     <h3>나이 : <jsp:getProperty property="agd"     name="pinfo"/></h3>
</body>
</html>