<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% // Thousand.jsp
int sum = 0;
// 1부터 1000까지 정수를 누적 시킨다.
for(int cnt = 1; cnt <= 1000; cnt++) {
	sum += cnt;
}

request.setAttribute("RESULT", new Integer(sum));
RequestDispatcher dispatcher = request.getRequestDispatcher("ThousandResult.jsp");
dispatcher.forward(request,response);
%>