<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
    isErrorPage="true"%>
<%  // isErrorPage="true" <== exception 내장 변수가 생기도록 만드는 애트리뷰트(속성) 값
    // 인위적으로 HTTP 상태 코드의 값을 200(정상)으로 설정한다.
    response.setStatus(200);
%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>DataErrorNew.jsp</title>
</head>
<body>
     <h1>잘못된 데이터를 입력하셨습니다.</h1><hr>
     <h2>상세 에러 메시지 : <%=exception.getMessage() %></h2>
</body>
</html>