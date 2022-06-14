<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ page import="servlet.standard.PersonalInfo" --%>
<% // CustomerInfo.jsp
// PersonalInfo pInfo = new PersonalInfo();
// pInfo.getAge();
// pInfo.setAge(18);
// 위와 같이 작성 하여 값을 입력해도 가능하다.

// useBean 사용
%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>CustomerInfo.jsp</title>
</head>
<body>
     <%-- 위의 PersonalInfo pInfo = new PersonalInfo();와 같은 의미 --%>
     <jsp:useBean class="servlet.standard.PersonalInfo" id="pInfo">
       <jsp:setProperty name="pInfo" property="name"   value="홍길동"/>
       <jsp:setProperty name="pInfo" property="gender" value="여"/>
       <jsp:setProperty name="pInfo" property="age"    value="18"/>
     </jsp:useBean>
     
     <h3>이름 : <jsp:getProperty name="pInfo" property="name" /></h3>
     <h3>성별 : <jsp:getProperty name="pInfo" property="gender" /></h3>
     <h3>나이 : <jsp:getProperty name="pInfo" property="age" /></h3>
</body>
</html>