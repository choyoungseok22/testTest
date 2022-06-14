package servlet.exception;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//----------------------------------------------------------------------------------------------------
//public class NewAdderServlet extends HttpServlet
//----------------------------------------------------------------------------------------------------
public class NewAdderServlet extends HttpServlet {
	
	//----------------------------------------------------------------------------------------------------
	//protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//----------------------------------------------------------------------------------------------------
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			// 이 서블릿을 실행할 때 필요한 변수 2가지 : NUM1, NUM2
			String str1     = request.getParameter("NUM1");
			String str2     = request.getParameter("NUM2");
			
			// 입력 받은 매개변수를 가지고 계산을 하여야 하므로 숫자형으로 저장한다.
			int    num1     = Integer.parseInt(str1);
			int    num2     = Integer.parseInt(str2);
			int    result   = num1 + num2;
			
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			
			out.println("<html>");
			out.println("<head>");
			out.println("<title>2개의 수를 더하기</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h1>2개의 수를 더한 값은?</h1>");
			out.printf("<h2>%d + %d =%d</h2>", num1, num2, result);
			out.println("</body>");
			out.println("</html>");
			
		} catch (NumberFormatException e){
			RequestDispatcher dispatcher = request.getRequestDispatcher("data-error");
			dispatcher.forward(request, response);
		}
		
	}// End - protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

}// End - public class NewAdderServlet extends HttpServlet


















