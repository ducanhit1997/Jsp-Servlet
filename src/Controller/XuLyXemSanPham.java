package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.SanPhamDao;
import Model.SanPham;

/**
 * Servlet implementation class XuLyXemSanPham
 */
@WebServlet("/XuLyXemSanPham")
public class XuLyXemSanPham extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public XuLyXemSanPham() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String maTruyen = request.getParameter("maTruyen");
		HttpSession session = request.getSession();
		SanPhamDao sanPhamDao = new SanPhamDao();
		try {
			SanPham sanPham = (SanPham)sanPhamDao.getSanPham(maTruyen);
			session.setAttribute("ctsp", sanPham);
			response.sendRedirect("Project/Webbanhang/chitietsanpham.jsp");
		} catch (SQLException e) {
			System.out.println("loi");
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
