<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% // ProductInfo.jsp %>
<jsp:useBean class="servlet.standard.ProductInfo" id="pinfo" scope="request"/>
<h3>코드   : <jsp:getProperty property="code"  name="pinfo"/></h3>
<h3>제품명 : <jsp:getProperty property="name"  name="pinfo"/></h3>
<h3>가격   : <jsp:getProperty property="price" name="pinfo"/></h3>