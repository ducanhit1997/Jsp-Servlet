package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.KhachHangDao;

@WebServlet("/DoiMatkhauController")
public class DoiMatKhauController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DoiMatKhauController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String action = request.getParameter("action");
		
		
		//System.out.println(layMaXacNhan);
		System.out.println(action);
		if (action.equals("nhapemail")) {
			String layEmail = request.getParameter("email");
			//System.out.println(layEmail);
			String maXacNhan = System.currentTimeMillis() + "";
			//System.out.println(maXacNhan);
			new KhachHangDao().sendMaXacNhan(layEmail, maXacNhan);
			HttpSession ss = request.getSession();
			ss.setAttribute("getMaXacNhan", maXacNhan);
			ss.setAttribute("getEmail", layEmail);
			response.sendRedirect("Project/Webbanhang/xacnhan.jsp");
		}
		if (action.equals("xacnhan")) {
			String maXacNhanOld = request.getParameter("maXacNhanOld");
			String layMaXacNhan = request.getParameter("maXacNhanNew");
			String email =request.getParameter("email");
			System.out.println(email);
			System.out.println(layMaXacNhan);
			System.out.println(maXacNhanOld);
			if (layMaXacNhan.equals(maXacNhanOld)) {
				HttpSession ss = request.getSession();
				ss.setAttribute("getlayMaXacNhan", layMaXacNhan);
				response.sendRedirect("Project/Webbanhang/doimatkhau.jsp");
			}
		}
			if (action.equals("doimatkhau")) {
				String layMatKhauMoi = request.getParameter("newpass");
				String email = request.getParameter("email");
				System.out.println(email);
				System.out.println(layMatKhauMoi);
				new KhachHangDao().doiMatKhau(email, layMatKhauMoi);
				response.sendRedirect("Project/Webbanhang/dangnhap.jsp");
			}
		}

	
}
