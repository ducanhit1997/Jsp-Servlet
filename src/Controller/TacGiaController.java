package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.KhachHangDao;
import Dao.TacGiaDao;
import Model.TacGia;

/**
 * Servlet implementation class TacGiaController
 */
@WebServlet("/TacGiaController")
public class TacGiaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public TacGiaController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String maTacGia = request.getParameter("maTacGia");
		String action = request.getParameter("action");
		if (action.equals("xoa")) {
			new TacGiaDao().xoaTacGia(maTacGia);
			response.sendRedirect("Project/Admin/production/quanlitacgia.jsp");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String action = request.getParameter("action");
		String layMaTacGia = "TG"+System.currentTimeMillis()+"";
		String maTacGia = request.getParameter("maTacGia");
		String layTenTacGia = request.getParameter("tenTacGia");
		String layMaNhaXuatBan =request.getParameter("manhaxuatban");
		TacGia tacgia = new TacGia(layMaTacGia, layTenTacGia,layMaNhaXuatBan);
		System.out.println(tacgia);
		if(action.equals("them")){
			new TacGiaDao().themTacGia(tacgia);
			response.sendRedirect("Project/Admin/production/quanlitacgia.jsp");
		}
		if(action.equals("sua")){
			new TacGiaDao().suaTacGia(tacgia, maTacGia);
			response.sendRedirect("Project/Admin/production/quanlitacgia.jsp");
		}
		
	}

}
