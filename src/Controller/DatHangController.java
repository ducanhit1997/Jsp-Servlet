package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.HoaDonDao;
import Dao.KhachHangDao;
import Dao.SanPhamDao;
import Model.HoaDon;
import Model.SanPhamTrongGioHang;

/**
 * Servlet implementation class DatHangController
 */
@WebServlet("/DatHangController")
public class DatHangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final ArrayList<SanPhamTrongGioHang> ArrayList = null;
	private static final java.util.ArrayList<SanPhamTrongGioHang> SanPhamTrongGioHang = null;
       
    public DatHangController() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		
		
		String maHoaDon = System.currentTimeMillis()+""; 
		String layTenKhachHang = request.getParameter("tenkhachhang");
		String laySDT =request.getParameter("sdt");
		String layDiaChi =request.getParameter("diachi");
		String layEmail = request.getParameter("email");
		int sum =(int) session.getAttribute("sum");
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		String layNgay =dateFormat.format(date);
		
		//System.out.println(sum);
				HoaDon hd ;
				int gia;
			
			ArrayList<SanPhamTrongGioHang> giohang = (ArrayList<SanPhamTrongGioHang>)session.getAttribute("giohang");
			for (SanPhamTrongGioHang sanPhamTrongGioHang : giohang) {
			try {
				gia=new SanPhamDao().getSanPham(sanPhamTrongGioHang.getSanPham().getMaTruyen()).getGia();
				hd = new HoaDon(maHoaDon, layTenKhachHang, laySDT, layDiaChi,sanPhamTrongGioHang.getSanPham().getMaTruyen()
						 , sanPhamTrongGioHang.getSoLuong(), sanPhamTrongGioHang.getSoLuong()*gia, layNgay);
				 
			new HoaDonDao().themHoaDon(hd);
			
			new KhachHangDao().sendDonHang(layEmail, giohang, sum);
			session.setAttribute("mahoadon", maHoaDon);
			response.sendRedirect("Project/Webbanhang/dathangthanhcong.jsp");
			} catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
					 
			}
			
			
		}
		
		
		
		
	}
