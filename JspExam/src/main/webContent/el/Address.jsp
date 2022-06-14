<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% // Address.jsp
HashMap <String, String> map    = new HashMap<String, String>();
map.put("향단이", "남원");
map.put("춘향이", "대전");
map.put("꺽정이", "청석골");

request.setAttribute("ADDRESS", map);
RequestDispatcher dispatcher = request.getRequestDispatcher("AddressView.jsp");
dispatcher.forward(request, response);
%>