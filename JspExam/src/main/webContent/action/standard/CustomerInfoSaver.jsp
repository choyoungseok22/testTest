<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% // CustomerInfoSaver.jsp 
   // scope="request" 가 받을 페이지와 보내는 페이지에 있어야 가능하다.
%>
<jsp:useBean class="servlet.standard.PersonalInfo" id="pInfo" scope="request"/>
<jsp:setProperty property="name"   name="pInfo" value="춘향이"/>
<jsp:setProperty property="gender" name="pInfo" value="여"/>
<jsp:setProperty property="age"    name="pInfo" value="18"/>
<jsp:forward page="CustomerInfoViewer.jsp"/> <%-- jsp에서 jsp 페이지로 넘어갈 때 (넘어갈 다음 페이지) --%>