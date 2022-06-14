<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>TenMultiply.jsp</title>
     <!-- 이것은 jsp에 의해서 생성한 html문서 입니다. -->
     <!-- 1부터 10까지 곱한 결과를 보여줍니다. -->
</head>
<body>
     <h1>1부터 10까지 곱하기</h1>
     <%-- 다음은 1부터 10까지 곱하기를 처리하는 스크립틀릿입니다. --%>
     <% int result = 1; // 곱하기를 저장할 변수
        /* 1부터 10까지 곱하는 반복문 */
        for(int cnt = 1; cnt <= 10; cnt++) {
    	 result *= cnt;
     }
     %>
     <h2>1부터 10까지 곱한 값은 <%=result %>입니다.</h2>
</body>
</html>