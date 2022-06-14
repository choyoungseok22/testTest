package servlet.basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//-------------------------------------------------------------------------------------------------
//public class AdderServlet extends HttpServlet
//-------------------------------------------------------------------------------------------------
public class AdderServlet extends HttpServlet {
	
	//-------------------------------------------------------------------------------------------------
	//AdderInput.html에서 2개의 숫자를 받아서 더한 결과를 보여주자!
	//-------------------------------------------------------------------------------------------------
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 요청받은 파라메터를 받아서 변수에 저장한다.
		String str1 = request.getParameter("NUM1");
		String str2 = request.getParameter("NUM2");
		
		// request로 받은 값은 문자이므로 숫자로 변환시켜서 계산한다.
		int num1    = Integer.parseInt(str1);
		int num2    = Integer.parseInt(str2);
		int sum     = num1 + num2;
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<HTML>");
		out.println("<HEAD>");
		out.println("<TITLE> 덧셈 프로그램</TITLE>");
		out.println("</HEAD>");
		out.println("<BODY>");
		out.println("<h1>두 수의 더한 값은 얼마인가요?</h1>");
		out.printf("<h2>%d + %d = %d</h2>",num1, num2, sum);
		out.println("</BODY>");
		out.println("</HTML>");
		
	}// End - protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException

}// End - public class AdderServlet extends HttpServlet 











