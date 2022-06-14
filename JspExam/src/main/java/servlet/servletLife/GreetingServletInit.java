package servlet.servletLife;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//----------------------------------------------------------------------------------------------------------------------------
//public class GreetingServletInit extends HttpServlet
//----------------------------------------------------------------------------------------------------------------------------
public class GreetingServletInit extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PrintWriter logFile;
	
	//----------------------------------------------------------------------------------------------------------------------------
	//public void init() throws ServletException
	//init()
	//----------------------------------------------------------------------------------------------------------------------------
    public void init() throws ServletException {
    	System.out.println("init() 메서드가 실행되었습니다.");
    	// web.xml에서 초기 파라미터 값을 가져온다.
    	String fileName = getInitParameter("FILE_NAME");
    	try {
    		// logFile = new PrintWriter(new FileWriter("c:\\data\\log.txt, true"));
    		logFile = new PrintWriter(new FileWriter(fileName, true));
    	} catch (IOException e) {
    		throw new ServletException(e);
    	}
    	
    }// End - public void init() throws ServletException
	
    //----------------------------------------------------------------------------------------------------------------------------
    //public void doGet(HttpServletRequest request, HttpServletResponse response)
    //doGet()
    //----------------------------------------------------------------------------------------------------------------------------
    public void doGet(HttpServletRequest request, HttpServletResponse response)
       throws IOException, ServletException {
    	
    	String name      = request.getParameter("NAME");
    	String greeting  = "안녕하세요?" + name + "님, 오래간만입니다.";
    	
    	if(logFile != null) {
    		GregorianCalendar now = new GregorianCalendar();
    		logFile.printf("%TF %TT - %s %n", now, now, greeting);
    	}
    	
    	response.setContentType("text/html;charset=utf-8");
    	PrintWriter out = response.getWriter();
    	
    	out.println("<html>");
    	out.println("<head>");
    	out.println("<title>인사하기</title>");
    	out.println("</head>");
    	out.println("<body>");
    	out.println("<h1>인사하기</h1>");
    	out.println("<h2>" + greeting + "</h2>");
    	out.println("</body>");
    	out.println("</html>");
    	
    }// End - public void doGet(HttpServletRequest request, HttpServletResponse response)
    
    
    //----------------------------------------------------------------------------------------------------------------------------
    //public void destroy()
    //destroy()
    //파라미터가 없어야 하고, 리턴 타입은  void이어야 하고, public으로 선언해야 합니다.
    // throws절은 쓸 수가 없습니다.
    //----------------------------------------------------------------------------------------------------------------------------
    public void destroy() {
    	System.out.println("destroy()메서드가 실행되었습니다.");
    	if(logFile != null) {
    		logFile.close();   // 파일을 닫는다.
    	}
    }// End - public void destroy()
    
}// End - public class GreetingServletInit extends HttpServlet














