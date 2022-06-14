<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% // Hundred.jsp
// 1. 1 부터 100까지 누적시킨 값을 구한다.
int sum = 0;
for(int cnt = 1; cnt <= 100; cnt++) {
	sum += cnt;
}
// 2. request 내장변수를 이용하여 RESULT에 누적 시킨 값을 저장시킨다.
request.setAttribute("RESULT", new Integer(sum));

// 아래의 내용과  <jsp:forward page="HundredResult.jsp"/>은 같다.
// RequestDispatcher dispatcher = request.getRequestDispatcher("HundredResult.jsp");
// dispatcher.forward(request, response);
%>
<jsp:forward page="HundredResult.jsp"/>