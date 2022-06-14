package servlet.session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//-----------------------------------------------------------------------------------------------------------
// public class ResultServlet extends HttpServlet
//-----------------------------------------------------------------------------------------------------------
public class ResultServlet extends HttpServlet {
	//-----------------------------------------------------------------------------------------------------------
	// protected void doGet(HttpServletRequest request, HttpServletResponse response)
	//-----------------------------------------------------------------------------------------------------------
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		// session.getAttribute("FOOD")는 객체타입이므로 사용을 하려면 형변환을 하여야 한다.
		String	food	= (String)session.getAttribute("FOOD");
		
		String	animal	= request.getParameter("ANIMAL");
		
		// 세션을 종료한다.
		session.invalidate();
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title>내가 좋아하는 것들</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>내가 좋아하는 음식과 동물</h1><hr>");
		out.printf("<h2>당신은 %s와 %s를 좋아하는 성격입니다.</h2>", food, animal);
		out.println("</body>");
		out.println("</html>");
		
	} // End - protected void doGet(HttpServletRequest request, HttpServletResponse response)

} // End - public class ResultServlet extends HttpServlet





