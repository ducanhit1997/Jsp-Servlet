package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.GioHangDao;
import Model.SanPhamTrongGioHang;

@WebServlet("/GioHangController")
public class GioHangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public GioHangController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		String layMaTruyen = request.getParameter("matruyen");
		System.out.println(action);
		if(action.equals("xoa")){
			new GioHangDao().xoaSanPhamTrongGioHang(layMaTruyen);
			response.sendRedirect("Project/Webbanhang/giohangcuaban.jsp");
		}
//		if(action.equals("sum")){
//			HttpSession ss = request.getSession();
//			String laySoLuong = request.getParameter("sl");
//			System.out.println(laySoLuong);
//			int sll =Integer.parseInt(laySoLuong);
//			
//			
//			ss.setAttribute("sl", sll);
//			response.sendRedirect("Project/Webbanhang/giohangcuaban.jsp");
//		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
