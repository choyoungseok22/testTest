<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% // Now.jsp
GregorianCalendar now = new GregorianCalendar();

%>
<h2>[현재 시각] <%= String.format("%TF %TT", now, now) %></h2>