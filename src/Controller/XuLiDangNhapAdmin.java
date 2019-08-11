package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.AdminDao;
import Dao.KhachHangDao;
import Model.Admin;

/**
 * Servlet implementation class XuLiDangNhapAdmin
 */
@WebServlet("/XuLiDangNhapAdmin")
public class XuLiDangNhapAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public XuLiDangNhapAdmin() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String layMaTaiKhoan = request.getParameter("mataikhoan");
		String layTenTaiKhoan = request.getParameter("tendangnhap");
		String layMatKhau =request.getParameter("matkhau");
		
//		System.out.println(layTenTaiKhoan);
//		System.out.println(layMatKhau);
		Admin admin = new Admin(layMaTaiKhoan, layTenTaiKhoan, layMatKhau);
		if(new AdminDao().kiemTraDangNhap(layTenTaiKhoan, layMatKhau)){
			HttpSession session = request.getSession();
			session.setAttribute("admin", admin);
			response.sendRedirect("Project/Admin/production/quanlikhachhang.jsp");
		}else{
			response.sendRedirect("Project/Admin/production/dangnhap.jsp");
	}
		
	}

}
