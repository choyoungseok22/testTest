<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>NumberType.jsp</title>
</head>
<body>
     <h1>숫자 형식</h1>
     <%-- type="currency"     : 주어진 수치를 금액으로 표시하여 출력 --%>
     <%-- type="percent"      : 주어진 수치를 퍼센트로 출력 --%>
     <%-- currencySymbol=" "  : " " 안에있는 원하는 심볼을 숫자 앞에 출력 --%>
     <h3>금액   : <fmt:formatNumber value="123456789000" type="currency"/></h3>
     <h3>금액   : <fmt:formatNumber value="123456789000" type="currency"
                                                         currencySymbol="＄"/></h3>
     <h3>퍼센트 : <fmt:formatNumber value="0.75" type="percent"/></h3>
</body>
</html>