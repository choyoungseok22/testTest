<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% //Winners.jsp
String winners[]   = new String[3];
winners[0] = "향단이";
winners[1] = "방자";
winners[2] = "춘향이";

request.setAttribute("WINNERS", winners); // setAttribute : 담기 위해서
RequestDispatcher dispatcher = request.getRequestDispatcher("WinnersView.jsp");
dispatcher.forward(request, response);
%>