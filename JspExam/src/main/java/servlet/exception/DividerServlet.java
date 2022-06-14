package servlet.exception;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//----------------------------------------------------------------------------------------------------
//public class DividerServlet extends HttpServlet
//----------------------------------------------------------------------------------------------------
public class DividerServlet extends HttpServlet {

	//----------------------------------------------------------------------------------------------------
	//protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	//서블릿 클래스에서 발생하는 익셉션도 web.xml에 등록한 에러 페이지를 이용해서 처리할 수 있다.
	//그렇게 하려면 서블릿 클래스를 작성할 때 doGet, doPost 메서드 안에서 발생하는 익셉션을
	//메서드 밖으로 던지도록 만들어야 한다.
	//doGet 메서드 안에서 발생하는 java.lang.ArithmeticException과 NumberFormatException을
	//try 문으로 처리하지 않았기 때문에 메서드 밖으로 던져집니다.
	//----------------------------------------------------------------------------------------------------
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String str1     = request.getParameter("NUM1");
		String str2     = request.getParameter("NUM2");
		int    num1     = Integer.parseInt(str1);
		int    num2     = Integer.parseInt(str2);
		int    result   = num1 / num2;
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title>나눗셈 프로그램</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>나누기 결과는?</h1>");
		out.printf("<h2>%d / %d = %d</h2>", num1, num2, result);
		out.println("</body>");
		out.println("</html>");
		
	}// End - protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException

}// End - public class DividerServlet extends HttpServlet









