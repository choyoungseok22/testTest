<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% Cookie[] cookies = request.getCookies(); %>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>ReadCookie.jsp</title>
</head>
<body>
     <h1>쿠키 데이터를 읽어오기</h1>
     <h2>이름 : <%=getCookieValue(cookies, "NAME") %></h2>
     <h2>성별 : <%=getCookieValue(cookies, "GENDER") %></h2>
     <h2>나이 : <%=getCookieValue(cookies, "AGE") %></h2>
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
	
	/*  향상된 for문
	    for(Cookie cookie : cookies) => cookies에 데이터가 없을 때 까지 반복한다.
	    cookies에 들어 있는 데이터를 1건을 읽어서 cookie에 대입한다.
	    cookie를 가지고 프로그램을 처리한다.
	*/
}
%>





