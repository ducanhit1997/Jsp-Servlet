package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/DaNgonNgu")
public class DaNgonNgu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DaNgonNgu() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String lang =request.getParameter("lang");
	HttpSession session=request.getSession();
	session.setAttribute("lang",lang);
	response.sendRedirect("Project/Webbanhang/dangnhap.jsp");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
