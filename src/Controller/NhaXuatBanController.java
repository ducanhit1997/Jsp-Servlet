package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.KhachHangDao;
import Dao.NhaXuatBanDao;
import Model.NhaXuatBan;

/**
 * Servlet implementation class NhaXuatBanController
 */
@WebServlet("/NhaXuatBanController")
public class NhaXuatBanController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public NhaXuatBanController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String manhaxuatban = request.getParameter("manhaxuatban");
		String action = request.getParameter("action");
		if (action.equals("xoa")) {
			new NhaXuatBanDao().xoaNhaXuatBan(manhaxuatban);
			response.sendRedirect("Project/Admin/production/quanlinhaxuatban.jsp");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String action = request.getParameter("action");
		String layMaNhaXuatBan = "NXB"+System.currentTimeMillis()+"";
		String manhaxuatban = request.getParameter("manhaxuatban");
		String layTenNhaXuatBan = request.getParameter("tennhaxuatban");
		String hoanTac = request.getParameter("hoantac");
		NhaXuatBan nxb = new NhaXuatBan(layMaNhaXuatBan, layTenNhaXuatBan);
		System.out.println(nxb);
		if(action.equals("them")){
			new NhaXuatBanDao().themNhaXuatBan(nxb);
			response.sendRedirect("Project/Admin/production/quanlinhaxuatban.jsp");
		}
		if(action.equals("sua")){
			new NhaXuatBanDao().suaNhaXuatBan(nxb, manhaxuatban);
			response.sendRedirect("Project/Admin/production/quanlinhaxuatban.jsp");
		}
		
	}

}
