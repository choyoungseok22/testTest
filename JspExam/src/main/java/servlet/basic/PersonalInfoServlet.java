package servlet.basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//-------------------------------------------------------------------------------------------------
//public class PersonalInfoServlet extends HttpServlet
//-------------------------------------------------------------------------------------------------
public class PersonalInfoServlet extends HttpServlet {

	//-------------------------------------------------------------------------------------------------
	//protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//-------------------------------------------------------------------------------------------------
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String name            = request.getParameter("NAME");
		String id              = request.getParameter("ID");
		String password        = request.getParameter("PASSWORD");
		String gender          = request.getParameter("GENDER");
		if(gender.equals("MALE"))
			gender ="남자";
		else
			gender ="여자";
		String iNotice         = request.getParameter("INOTICE");
		String cNotice         = request.getParameter("CNOTICE");
		String dNotice         = request.getParameter("DNOTICE");
		String job             = request.getParameter("JOB");
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title>개인 정보 등록 결과</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h2>개인 정보 등록</h2>");
		out.printf("이름 : %s <br>", name);
		out.printf("아이디 : %s <br>", id);
		out.printf("비밀번호 : %s <br>", password);
		out.printf("성별 : %s <br>", gender);
		out.printf("공지 메일 : %s <br>", noticeToHangul(iNotice));
		out.printf("광고 메일 : %s <br>", noticeToHangul(cNotice));
		out.printf("배송 확인 메일 : %s <br>", noticeToHangul(dNotice));
		out.printf("직업 : %s <br>" , job);
		out.println("</body>");
		out.println("</html>");
		
	}// End - protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	//-------------------------------------------------------------------------------------------------
	//private String noticeToHangul(String notice)
	//-------------------------------------------------------------------------------------------------
	private String noticeToHangul(String notice) {
		if(notice == null)             return "받지 않음";
		else if(notice.equals("on"))   return "받음";
		else                           return notice;
		
	}// End - private String noticeToHangul(String notice)
	
}// End - public class PersonalInfoServlet extends HttpServlet








