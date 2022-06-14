<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--ProductInfo.jsp --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CODE"  value="99881"   scope="request"/>
<c:set var="NAME"  value="운동화"  scope="request"/>
<c:set var="PRICE" value="25000"   scope="request"/>
<c:remove var="NAME" scope="request"/>
<jsp:forward page="ProductInfoView.jsp"/>