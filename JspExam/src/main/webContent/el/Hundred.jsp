<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% // Hundred.jsp
int sum = 0;
// 1부터 100까지 정수를 누적 시킨다.
for(int cnt = 1; cnt <= 100; cnt++) {
	sum += cnt;
}

request.setAttribute("RESULT", new Integer(sum));
RequestDispatcher dispatcher = request.getRequestDispatcher("HundredResult.jsp");
dispatcher.forward(request,response);
%>