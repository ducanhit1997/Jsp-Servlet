package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.SanPhamDao;
import Model.SanPham;
@WebServlet("/loc")
public class loc extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public loc() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		String manhaxuatban = request.getParameter("nxb");
		String all = request.getParameter("all");

		ArrayList<SanPham> list = null;

		if(all!=null){
			try {
				list = SanPhamDao.getList();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			session.setAttribute("list", list);
		}
		if(manhaxuatban!=null){
		try {
			list = SanPhamDao.getListTheoNSX(manhaxuatban);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		session.setAttribute("list", list);
	}
		
		
		
		

		response.sendRedirect("Project/Webbanhang/index.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
