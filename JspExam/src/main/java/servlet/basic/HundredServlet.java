package servlet.basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//-------------------------------------------------------------------------------------------------
//public class HundredServlet extends HttpServlet
//-------------------------------------------------------------------------------------------------
public class HundredServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int total = 0;
		for(int cnt = 1; cnt <= 100; cnt++) {
			total += cnt;
		}
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<HTML>");
		out.println("<HTML>");
		out.println("<TITLE>1부터 100까지의 합은?</TITLE>");
		out.println("</HTML>");
		out.println("<BODY>");
		out.println("<H1>1부터 100까지의 합은 얼마일까요?</H1><BR>");
		out.printf("<H2>%d</H2>", total);
		out.println("</BODY>");
		out.println("</HTML>");
		
	}// End - protected void doGet(HttpServletRequest request, HttpServletResponse response)

}// End - public class HundredServlet extends HttpServlet











