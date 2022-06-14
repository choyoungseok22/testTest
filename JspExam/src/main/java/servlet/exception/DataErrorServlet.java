package servlet.exception;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//----------------------------------------------------------------------------------------------------
//public class DataErrorServlet extends HttpServlet
//----------------------------------------------------------------------------------------------------
public class DataErrorServlet extends HttpServlet {
	 
	//----------------------------------------------------------------------------------------------------
	//protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	//----------------------------------------------------------------------------------------------------
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title>에러 처리 화면</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h2>잘못된 데이터를 입력하셨습니다.</h2>");
		out.println("</body>");
		out.println("</html>");
		
	}// End - protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException

}// End - public class DataErrorServlet extends HttpServlet









