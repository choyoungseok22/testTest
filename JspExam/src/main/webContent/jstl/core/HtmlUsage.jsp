<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>HtmlUsage.jsp</title>
</head>
<body>
     <h1>폰트 태그에 대해 알아봅시다.</h1>
     <c:out value="<FONT size=7>커다란 글씨</FONT>는 아래와 같이 출력됩니다."/>
     <hr>
     <%-- escapeXml="false" 
          출력할 데이터에 포함된 기호가 태그의 일부로서 제기능을 하게된다.--%>
     <c:out value="<FONT size=7>커다란 글씨</FONT>는 아래와 같이 출력됩니다." excapeXml="false"/>
</body>
</html>