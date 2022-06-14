package servlet.session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//-----------------------------------------------------------------------------------------------------------
// public class AnimalServlet extends HttpServlet
//-----------------------------------------------------------------------------------------------------------
public class AnimalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//-----------------------------------------------------------------------------------------------------------
	// protected void doGet(HttpServletRequest request, HttpServletResponse response)
	//-----------------------------------------------------------------------------------------------------------
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 전페이지에서 넘겨 받은 음식을 가져온다.
		String	food	= request.getParameter("FOOD");
		System.out.println("FOOD : " + food);
		
		HttpSession session = request.getSession();
		session.setAttribute("FOOD", food);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title>내가 좋아하는 동물</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h2>내가 좋아하는 동물은 무엇인가요?</h2>");
		out.println("<form action='/result'>");
		out.println("<input type='text' name='ANIMAL'>");
		out.println("<input type='reset' value='취소'>");
		out.println("<input type='submit' value='확인'>");
		out.println("</form>");
		out.println("</body>");
		out.println("</html>");
	} // End - protected void doGet(HttpServletRequest request, HttpServletResponse response)

} // End - public class AnimalServlet extends HttpServlet













