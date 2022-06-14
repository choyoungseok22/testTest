<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>CustomerInfoNew.jsp</title>
</head>
<body>
     <jsp:useBean id="pinfo" class="servlet.standard.PersonalInfo"/>
     <jsp:setProperty property="name"   name="pinfo" param="NAME"/>
     <jsp:setProperty property="gender" name="pinfo" param="GENDER"/>
     <jsp:setProperty property="age"    name="pingo" param="AGE"/>
     <h3>이름 : <jsp:getProperty property="name"   name="pinfo" /></h3>
     <h3>성별 : <jsp:getProperty property="gender" name="pinfo"/></h3>
     <h3>나이 : <jsp:getProperty property="age"    name="pinfo"/></h3>
</body>
</html>