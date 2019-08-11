package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.KhachHangDao;
import Model.KhachHang;
import Model.VerifyRecaptcha;

@WebServlet("/xulydangnhap")
public class xulydangnhap extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public xulydangnhap() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		System.out.println(email);
		System.out.println(password);
		String gRecaptchaResponse = request.getParameter("g-recaptcha-response");
		//System.out.println(gRecaptchaResponse);
		boolean ok = VerifyRecaptcha.verify(gRecaptchaResponse);
		System.out.println(ok);
		boolean coLoi = false;
		//if(password.equals("")) coLoi=true;
		String err_email = "";
		String err_password = "";

		KhachHang khachHang = new KhachHangDao().layThongTinTaiKhoan(email);
		boolean okx =new KhachHangDao().dangNhap(email,password)&&ok;
		//System.out.println("ok ok "+okx);
			if(okx){
				session.setAttribute("khachHang", khachHang);
				response.sendRedirect("Project/Webbanhang/index.jsp");
				coLoi = false;
			}else{
//				err_password ="Sai thÃ´ng tin hoáº·c chÆ°a xÃ¡c nháº­n captcha";
//				coLoi=true;
				err_password ="Sai thông tin hoặc chưa xác nhận captcha";
				coLoi=true;
				response.sendRedirect("Project/Webbanhang/dangnhap.jsp");
			}
		
		
		
			session.setAttribute("err_email", err_email);
			session.setAttribute("err_password", err_password);
			session.setAttribute("email", email);
			session.setAttribute("password", password);
		
		

	}

}
