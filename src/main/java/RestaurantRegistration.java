

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RestaurantDao;
import pojo.RestaurantPojo;
@WebServlet("/RestaurantRegistration")
public class RestaurantRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RestaurantRegistration() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	String a = request.getParameter("name");
	String b =	request.getParameter("email");
	String c =	request.getParameter("password");
		
		RestaurantPojo p = new RestaurantPojo();
		
		p.setName(a);
		p.setEmail(b);
		p.setPassword(c);
		
		RestaurantDao.RestaurantRegister(p);
		response.sendRedirect("JSP/RestaurantHomepage.jsp");
		
		
	}

}
