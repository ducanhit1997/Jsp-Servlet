package Controller;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.KhachHangDao;
import Model.KhachHang;

@WebServlet("/XuLiDangKi")
public class XuLiDangKi extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public XuLiDangKi() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		String mataikhoan = "TK" + System.currentTimeMillis() + "";
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String maHoaPass = KhachHangDao.md5(password);
		String repassword = request.getParameter("repassword");
		String gioitinh = request.getParameter("gioitinh");
		String sdt = request.getParameter("sdt");
		boolean coLoi = false;
		String err_username = "";
		String err_email = "";
		String err_password = "";
		String err_repassword = "";
		String err_gioitinh = "";
		String err_sdt = "";

		if (username.equals("")) {
			err_username = "Bạn chưa nhập tên khách hàng";
			coLoi = true;
		}

		if (email.equals("")) {
			err_email = "Ban chưa nhập email";
			coLoi = true;
		}
		if (new KhachHangDao().kiemTraEmail(email) == false) {
			err_email = "Email sai";
			coLoi = true;
		}
		if (new KhachHangDao().kiemTraDangKi(email)) {
			err_email = "Email không đúng định dạng";
			coLoi = true;
		}
		if (password.equals("")) {
			err_password = "Bạn chưa nhập mật khẩu";
			coLoi = true;
		}
		if (!repassword.equals(password)) {
			err_repassword = "Mật khẩu không trùng";
			coLoi = true;
		}

		session.setAttribute("err_username", err_username);
		session.setAttribute("err_email", err_email);
		session.setAttribute("err_password", err_password);
		session.setAttribute("err_repassword", err_repassword);
		session.setAttribute("err_gioitinh", err_gioitinh);

		session.setAttribute("username", username);
		session.setAttribute("email", email);
		session.setAttribute("password", password);
		session.setAttribute("repassword", repassword);
		session.setAttribute("gioitinh", gioitinh);

		if (coLoi == true) {
			response.sendRedirect("Project/Webbanhang/dangki.jsp");
		}
		else if (coLoi == false) {
			KhachHang khachHang = new KhachHang(mataikhoan, username, email, maHoaPass, gioitinh);
			new KhachHangDao().themTaiKhoan(khachHang);
			String maXacNhanDangki = System.currentTimeMillis() + "";
			System.out.println(maXacNhanDangki);
			System.out.println(email);
			new KhachHangDao().sendMaXacNhanDangKi(email, maXacNhanDangki);
			HttpSession ss = request.getSession();
			ss.setAttribute("maXacNhanDangki", maXacNhanDangki);
			ss.setAttribute("email", email);
			response.sendRedirect("Project/Webbanhang/xacnhandangki.jsp");
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
