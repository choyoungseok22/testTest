<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% // DinnerMenu.jsp
String arr[]  = {"김치찌개", "설렁탕", "순대국", "콩국수", "오므라이스"};
request.setAttribute("MENU", arr);
%>
<jsp:forward page="DinnerView.jsp"/>