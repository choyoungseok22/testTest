<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ page import="servlet.standard.ProductInfo" %>
<%@ page import="servlet.standard.BookInfo" %>
<%@ page import="servlet.standard.ClothingInfo" %> --%>
<%
/* 다형성
ProductInfo pinfo = new BookInfo();
            pinfo = new ClothingInfo(); 
*/
%>

<jsp:useBean class="servlet.standard.BookInfo" id="pinfo" scope="request"/>
<jsp:setProperty name="pinfo" property="code"   value="30001"/>
<jsp:setProperty name="pinfo" property="name"   value="의뢰인"/>
<jsp:setProperty name="pinfo" property="price"  value="23000"/>
<jsp:setProperty name="pinfo" property="writer" value="존그리샴"/>
<jsp:setProperty name="pinfo" property="page"   value="805"/>

<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>BookInfoSaver.jsp</title>
</head>
<body>
     <h2>책 정보</h2>
     <jsp:include page="ProductInfo.jsp"></jsp:include>
     <h3>저자   : <jsp:getProperty property="writer" name="pinfo"/></h3>
     <h3>페이지 : <jsp:getProperty property="page  " name="pinfo"/></h3>
</body>
</html>


















