package servlet.basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//-------------------------------------------------------------------------------------------------
//public class BBSPostServlet extends HttpServlet
//-------------------------------------------------------------------------------------------------
public class BBSPostServlet extends HttpServlet {       
   
	//-------------------------------------------------------------------------------------------------
	//protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	//-------------------------------------------------------------------------------------------------
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request
		request.setCharacterEncoding("utf-8");
		String name     = request.getParameter("NAME");
		String title    = request.getParameter("TITLE");
		String content  = request.getParameter("CONTENT");
		
		// response
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<HTML>");
		out.println("<head>");
		out.println("<title>게시글 올리기 결과</title>");
		out.println("</head>");
		out.println("<body>");
		out.printf("이름 : %s <br>", name);
		out.printf("제목 : %s <br>", title);
		out.println("-----------------------------------------------------");
		out.printf("<pre>%s</pre>", content);
		out.println("-----------------------------------------------------");
		out.println("</body>");
		out.println("</HTML>");
		
	}// End - protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException

}// End - public class BBSPostServlet extends HttpServlet






