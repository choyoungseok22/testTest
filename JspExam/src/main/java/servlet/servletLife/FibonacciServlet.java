package servlet.servletLife;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//----------------------------------------------------------------------------------------------------------------------------
//public class FibonacciServlet extends HttpServlet
//----------------------------------------------------------------------------------------------------------------------------
public class FibonacciServlet extends HttpServlet {
    private BigInteger arr[];
	
	//----------------------------------------------------------------------------------------------------------------------------
	//public void init(ServletConfig config) throws ServletException
	//init() 메서드는 파라미터가 없는 메서드로 선언해야하고,
	//리턴 타입은 void로 지정해야 하며,
	//public으로 선언해야 한다.
	//ServletException은 필요하지 않다면 throws절 전체를 생략해도 된다.
	//----------------------------------------------------------------------------------------------------------------------------
	public void init() throws ServletException {
		System.out.println("init() 메서드가 실행되었습니다......");
		arr    = new BigInteger[100];
		arr[0] = new BigInteger("1");
		arr[1] = new BigInteger("1");
		
		for(int cnt = 2; cnt < arr.length; cnt++) {
			arr[cnt] = arr[cnt-2].add(arr[cnt-1]);
		}
	}// End - public void init(ServletConfig config) throws ServletException
	
	//----------------------------------------------------------------------------------------------------------------------------
	//protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	//----------------------------------------------------------------------------------------------------------------------------
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 몇 번째까지의 수를 나타낼지 입력받는 매개변수
		String str = request.getParameter("NUM");
		int    num = Integer.parseInt(str);
		
		if(num > 100)
			num = 100;
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title>피보나치 수열</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>피보나치 수열의 결과</h1>");
		
		for(int cnt = 0; cnt < num; cnt++)
			out.println(arr[cnt] + ",");
		
		out.println("</body>");
		out.println("</html>");
		
	}// End - protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	
	//----------------------------------------------------------------------------------------------------------------------------
	//public void destroy()
	//----------------------------------------------------------------------------------------------------------------------------
	public void destroy() {
		System.out.println("destroy() 메서드가 실행되었습니다.");
		
	}// End - public void destroy()

}// End - public class FibonacciServlet extends HttpServlet




















