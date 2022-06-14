<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% // Redirect.jsp %>
<c:redirect url="Multiply.jsp">
       <c:param name="NUM1" value="30"/>
       <c:param name="NUM2" value="5"/>
</c:redirect>