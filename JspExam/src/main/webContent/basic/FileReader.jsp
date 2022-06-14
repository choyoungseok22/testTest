<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>FileReader.jsp</title>
</head>
<body>
     <%
     BufferedReader reader = null;
     
     try {
    	 String filePath = application.getRealPath("/WEB-INF/input.txt");
    	 reader = new BufferedReader(new FileReader(filePath));
    	 
    	 while(true) {
    		 String str = reader.readLine();
    		 if(str == null)
    			 break;
    		 out.println("<h4>" + str +"</pre><h4><br>");
    	 }
    	 
     } catch (FileNotFoundException fnfe) {
    	 out.println("파일이 존재하지 않습니다.!");
     } catch (IOException ioe) {
    	 out.println("파일은 읽을 수 가 없습니다.");
     } catch (Exception e) {
    	 out.println("예외가 발생했습니다.");
     } finally {
    	  try {
    		  reader.close();
    	  } catch (Exception e) {
    		 
    	    }
     }
     %>
</body>
</html>