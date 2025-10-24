import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import pojo.UserPojo;

@WebServlet("/UserRegistration")
public class UserRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserRegistration() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserPojo p = new UserPojo();
		p.setName(request.getParameter("name"));
		p.setEmail(request.getParameter("email"));
		p.setPassword(request.getParameter("password"));
			
		new UserDao().InsertUser(p);
		
		response.sendRedirect("JSP/UserIndex.jsp");
	}
	

}
