<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean class="servlet.standard.ClothingInfo" id="pinfo" scope="request"/>
<jsp:setProperty name="pinfo" property="code"	value="50001"/>
<jsp:setProperty name="pinfo" property="name"	value="반팔 티셔츠"/>
<jsp:setProperty name="pinfo" property="price"	value="15000"/>
<jsp:setProperty name="pinfo" property="size"	value="M"/>
<jsp:setProperty name="pinfo" property="color"	value="노랑"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ClothingInfoSaver.jsp</title>
</head>
<body>
	<h2>의류 정보</h2>
	<jsp:include page="ProductInfo.jsp"></jsp:include>
	<h3>사이즈 : <jsp:getProperty property="size"  name="pinfo"/></h3>
	<h3>색상   : <jsp:getProperty property="color" name="pinfo"/></h3>
</body>
</html>