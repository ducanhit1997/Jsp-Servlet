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
 * Servlet implementation class XuliXacNhanDangKi
 */
@WebServlet("/XuliXacNhanDangKi")
public class XuliXacNhanDangKi extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public XuliXacNhanDangKi() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		System.out.println(action);
		HttpSession session =request.getSession();
		String maXacNhanOld = request.getParameter("maXacNhanOld");
		String layMaXacNhan = request.getParameter("maXacNhanNew");
		KhachHang khachHang = (KhachHang)session.getAttribute("khachHang");
		String email = request.getParameter("email");
		System.out.println(layMaXacNhan);
		System.out.println(maXacNhanOld);
		if (layMaXacNhan.equals(maXacNhanOld)) {
			new KhachHangDao().xuLiDangKi(email);
			response.sendRedirect("Project/Webbanhang/dangnhap.jsp");
		
	}
	}

}
