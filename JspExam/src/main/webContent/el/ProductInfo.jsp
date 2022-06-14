<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- servlet.el.ProductInfo를 사용하기 위해서 import시킨다.--%>
<%@ page import="servlet.el.ProductInfo" %>
<% // ProductInfo.jsp
// ProductInfo를 사용해서 데이터를 다음 페이지로 넘기기 위해서 먼저 생성을 시킨다.
ProductInfo product = new ProductInfo();

product.setName("초코케이크 4호");
product.setValue(23000);

request.setAttribute("PRODUCT", product);
RequestDispatcher dispatcher = request.getRequestDispatcher("ProductInfoView.jsp");
dispatcher.forward(request, response);
%>