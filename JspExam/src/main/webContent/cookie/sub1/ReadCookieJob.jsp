<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% Cookie cookies[] = request.getCookies(); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ReadCookieJob.jsp</title>
</head>
<body>
	<h1>sub1 직업은 무엇입니까?</h1>
	<h2><%=getCookieValue(cookies, "JOB") %></h2>
</body>
</html>

<%!
// 쿠키와 변수이름을 넘겨받아서 변수이름에 해당하는 쿠키 값을 찾아서 돌려주는 메서드
private String getCookieValue(Cookie[] cookies, String name) {
	String value = null;
	if(cookies == null)
		return null;
	/*
	for(int i = 0; i < cookies.length; i++) {
		if(cookies[i].getName().equals(name))
			return cookies[i].getValue();
	}
	*/
	for(Cookie cookie : cookies) {
		if(cookie.getName().equals(name))
			return cookie.getValue();
	}
	return null;
}
	/*	향상된 for문
		for(Cookie cookie : cookies) ==> cookies에 데이터가 없을 때까지 반복된다.
		cookies에 들어있는 데이터를 1건을 읽어서 cookie에 대입한다.
		cookie를 가지고 프로그램을 처리한다.
	*/
%>

