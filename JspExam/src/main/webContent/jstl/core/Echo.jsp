<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>Echo.jsp</title>
</head>
<body>
     <h1>반복문</h1>
     <c:forEach begin="1" end="5">
          <h3>야호!!!</h3>
     </c:forEach>
     <hr>
     <c:forEach var="cnt" begin="1" end="6">
          <font size="${cnt}">야호!!!</font><br/>
     </c:forEach>
     <hr>
     <!-- 짝수일 경우만 야호를 출력해주세요. -->
     <c:forEach var="cnt" begin="1" end="6">
          <c:if test="${cnt % 2 == 0}">
               <font size="${cnt}">야호!!!</font><br/>
          </c:if>         
     </c:forEach>
     <hr>
     <!-- 홀수일 경우에는 배경색을 #F26522로, 짝수일 경우에는 #827B00로 출력하자.-->
     <c:forEach var="cnt" begin="1" end="6">
          <c:if test="${cnt % 2 != 0}">              
               <font size=${cnt}, style="background-color:#F26522">야호!!!</font><br/>
          </c:if>  
          <c:if test="${cnt % 2 == 0}">
               <font size=${cnt}, style="background-color:#827B00">야호!!!</font><br/>
               <p style="background-color:#EBEBEB;">
                  <font size="${cnt}">야호~~~~~~~</font>
               </p>
          </c:if>       
     </c:forEach>
     <hr>
     <!-- step="2" : 2개씩 건너뛰어서 -->
     <c:forEach var="cnt" begin="1" end="10" step="2">
          <font size="${cnt}">${cnt} 안녕하세요?</font><br>
     </c:forEach>
     <hr>
</body>
</html>











