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

/**
 * Servlet implementation class loctheogia
 */
@WebServlet("/loctheogia")
public class loctheogia extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public loctheogia() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		String gia1 = request.getParameter("gia1");
		String gia2 = request.getParameter("gia2");
		int a = Integer.parseInt(gia1);
		int b = Integer.parseInt(gia2);
		ArrayList<SanPham> list = null;
		if(gia1!=null||gia2!=null){
			try {
				list = SanPhamDao.getListTheoGia(a, b);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			session.setAttribute("list", list);
		}
		response.sendRedirect("Project/Webbanhang/index.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
