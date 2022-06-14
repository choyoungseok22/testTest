package servlet.standard;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//----------------------------------------------------------------------------------------------------------------------------------------
//public class PersonalInfoServlet
//----------------------------------------------------------------------------------------------------------------------------------------
public class PersonalInfoServlet extends HttpServlet{
	
	//----------------------------------------------------------------------------------------------------------------------------------------
	//public void doGet(HttpServletRequest request, HttpServletResponse response)
	//----------------------------------------------------------------------------------------------------------------------------------------
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	    throws IOException, ServletException {
		
		PersonalInfo obj = new PersonalInfo();
		obj.setName("향단이");
		obj.setGender('여');
		obj.setAge(15);
		
		request.setAttribute("pInfo", obj);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/action/standard/CustomerInfoViewer.jsp");
		dispatcher.forward(request, response);
		
	}// End - public void doGet(HttpServletRequest request, HttpServletResponse response)

}// End - public class PersonalInfoServlet
