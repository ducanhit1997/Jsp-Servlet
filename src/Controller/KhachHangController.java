package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.KhachHangDao;
import Model.KhachHang;

/**
 * Servlet implementation class KhachHangController
 */
@WebServlet("/KhachHangController")
public class KhachHangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public KhachHangController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String mataikhoan = request.getParameter("mataikhoan");
		String action = request.getParameter("action");
		HttpSession session = request.getSession();
		if (action.equals("xoa")) {
			new KhachHangDao().xoaTaiKhoan(mataikhoan);
			response.sendRedirect("Project/Admin/production/quanlikhachhang.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String action = request.getParameter("action");
		String layMaKhachHang = "KH"+System.currentTimeMillis()+"";
		String makhachhang = request.getParameter("makhachhang");
		String layTenKhachHang = request.getParameter("tenkhachhang");
		String layEmail = request.getParameter("email");
		String layPass = request.getParameter("matkhau");
		String maHoaPass = KhachHangDao.md5(layPass);
		String layGioTinh = request.getParameter("gioitinh");
		
		System.out.println(action);
		KhachHang kh = new KhachHang(layMaKhachHang, layTenKhachHang, layEmail, maHoaPass, layGioTinh);
		System.out.println(kh);
		/*if(new KhachHangDao().themTaiKhoan(kh)){
			response.sendRedirect("Project/Admin/production/quanlikhachhang.jsp");
		}*/
		if(action.equals("them")){
			new KhachHangDao().themTaiKhoan(kh);
			response.sendRedirect("Project/Admin/production/quanlikhachhang.jsp");
		}
		if(action.equals("sua")){
			new KhachHangDao().suaTaiKhoan(kh, makhachhang);
			response.sendRedirect("Project/Admin/production/quanlikhachhang.jsp");
		}
	}

}
