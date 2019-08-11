package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.SanPhamDao;
import Dao.TacGiaDao;
import Model.SanPham;
import Model.TacGia;
@WebServlet("/SanPhamController")
public class SanPhamController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SanPhamController() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String action = request.getParameter("action");
		String layMaTruyen = request.getParameter("maTruyen");
		if(action.equals("xoa")){
			new SanPhamDao().xoaSanPham(layMaTruyen);
			response.sendRedirect("Project/Admin/production/quanlisanpham.jsp");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String action = request.getParameter("action");
				String layMaSanPham = "SP"+System.currentTimeMillis()+"";
		//System.out.println(layMaSanPham);
		String layTenSanPham = request.getParameter("tentruyen");
		//System.out.println(layTenSanPham);
		String laySoCuon =request.getParameter("socuon");
		int c = Integer.parseInt(laySoCuon);
		//System.out.println(c);
		String hinhAnh =request.getParameter("hinhanh");
		String layHinhAnh = "img/"+hinhAnh;
		//System.out.println(layHinhAnh);
		String layGia =request.getParameter("gia");
		int a = Integer.parseInt(layGia);
		//System.out.println(a);
		String layMaNhaXuatBan = request.getParameter("manhaxuatban");
		//System.out.println(layMaNhaXuatBan);
		String layMaTacGia = request.getParameter("matacgia");
		//System.out.println(layMaTacGia);
		
		SanPham sp = new SanPham(layMaSanPham, layTenSanPham, c, layHinhAnh, a, layMaTacGia, layMaNhaXuatBan);
		if(action.equals("them")){
			new SanPhamDao().themSanPham(sp);
			response.sendRedirect("Project/Admin/production/quanlisanpham.jsp");
		}
		if(action.equals("sua")){
			String matruyen = request.getParameter("matruyen");
			new SanPhamDao().suaSanPham(sp, matruyen);
			response.sendRedirect("Project/Admin/production/quanlisanpham.jsp");
		}
		
	}

}
