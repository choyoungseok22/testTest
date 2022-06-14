<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%  // Subscribe.jsp
String agree   = request.getParameter("AGREE");
System.out.println("동의 여부 : " + agree);

String result  = null; // 작업 결과를 다음 페이지에 넘겨줄 변수

// 회원가입에 동의를 하였으면 회원정보를 파일로 만든다.
if(agree.equals("YES")) { // 회원가입에 동의한 경우
	// 세션에 담겨있는 값들을 가져온다.
	String  id       = (String) session.getAttribute("ID");
    String  password = (String) session.getAttribute("PASSWORD");
    String  name     = (String) session.getAttribute("NAME");
    
    PrintWriter writer = null;
    
	// 회원정보를 파일로 만든다.
	try {
		// 아이디.txt 파일을 만든다.
		String filePath = application.getRealPath("/WEB-INF/" + id + ".txt");
		writer = new PrintWriter(filePath);
		writer.println("회원 가입 정보");
		writer.println("===============================================");
		writer.println("아 이 디 : " + id);
		writer.println("비밀번호 : " + password);
		writer.println("이    름 : " + name);
		writer.println("===============================================");
		writer.println("회원 가입이 완료되었습니다.");		
		result = "SUCCESS";
		
	} catch(IOException ioe) {
		result = "ERROR";
	} finally {
		
	} try {
		writer.close();
	} catch (Exception e) {
		
	}
	
} else { //회원가입에 동의를 하지 않은 경우
	result = "FAIL";
}

session.invalidate();    // 세션을 종료시킨다.
response.sendRedirect("Result.jsp?RESULT=" + result); // 결과값을 가지고 다음 페이지로 이동한다.
%>







