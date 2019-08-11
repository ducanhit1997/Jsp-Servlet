package Controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.mail.handlers.message_rfc822;

import Dao.ThongKeDao;
import Model.HoaDon;
@WebServlet("/ThongKeController")
public class ThongKeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ThongKeController() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String action = request.getParameter("action");
		System.out.println(action);
		String month = request.getParameter("thang");
		System.out.println(month);
		Map<String, HoaDon> map = new ThongKeDao().thongKeTheoThang(month);
		String okthang ="none";
		if(map.size()!=0){
			HttpSession session = request.getSession();
			response.sendRedirect("Project/Admin/production/thongke.jsp");
			session.setAttribute("okthang", okthang);
			session.setAttribute("month", month);
			
		}
			
		}
	

}
