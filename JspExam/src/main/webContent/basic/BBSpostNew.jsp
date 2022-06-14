<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.util.Date"  %> <!-- 입출력이 필요 하므로 java.io -->
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>BBSpostNew.jsp</title>
</head>
<body>
     <h2>게시글 쓰기</h2>
     <%
     request.setCharacterEncoding("utf-8");
     // 이전 페이지에서(BBSInputJSp.html)에서 넘겨준 데이터를 가져와서 변수에 저장한다.
     String name    = request.getParameter("NAME");
     String title   = request.getParameter("TITLE");
     String content = request.getParameter("CONTENT");
     
     System.out.println(name + ":" + title + ":" + content);
     
     // 넘겨받은 데이터를 파일로 만들 때 파일이름이 겹치지 않게 하기 위해서 날짜를 이용하자
     // getTime(): 현재 시각을 밀리세컨드 단위로 가져오는 메서드
     Date      date       = new Date();
     Long      time       = date.getTime();
     String    filename   = time + ".txt";
     System.out.println("Time : " + time); //1644909035254.txt
     
     PrintWriter writer   = null;
     
     //파일의 작성 결과를 저장할 변수를 만든다.
     String result;
     
     try {
    	 String filePath = application.getRealPath("/WEB-INF/bbs/" + filename);
    	 writer = new PrintWriter(filePath);
    	 writer.printf("제목 : %s %n", title);
    	 writer.printf("이름 : %s %n", name);
    	 writer.println("내용");
    	 writer.println(content);
    	 
    	 result = "SUCCESS";
     } catch (IOException ioe) {
    	 result = "FAIL";
     } finally {
    	try {
    		writer.close();
    	} catch(Exception e) {}
     }
     
     // 실행결과를 다음 페이지로 전송한다.
     response.sendRedirect("BBSPostNewResult.jsp?RESULT=" + result);
     %>
</body>
</html>











