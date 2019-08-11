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

import Dao.GioHangDao;
import Dao.SanPhamDao;
import Model.KhachHang;
import Model.SanPham;
import Model.SanPhamTrongGioHang;

@WebServlet("/XuLyMua")
public class XuLyMua extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public XuLyMua() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String maTruyen = request.getParameter("masp");
		System.out.println(maTruyen);
		HttpSession session = request.getSession();
		KhachHang kh = (KhachHang)session.getAttribute("khachHang");
		if(kh!=null){
			
				new GioHangDao().themVaoGioHang(maTruyen);
				
			response.sendRedirect("Project/Webbanhang/giohangcuaban.jsp");
		}else{
			response.sendRedirect("Project/Webbanhang/dangnhap.jsp");
		}
		/*ArrayList<SanPhamTrongGioHang> sanPhamTrongGioHang = (ArrayList<SanPhamTrongGioHang>) session.getAttribute("giohang");
		if(kh!=null){
			
			try {
				SanPham sp = SanPhamDao.getSanPham(maTruyen);
				if(sanPhamTrongGioHang.size()!=0){
					
					for (int i = 0; i < sanPhamTrongGioHang.size(); i++) {
						if (sanPhamTrongGioHang.get(i).getSanPham().getMaTruyen().equals(maTruyen)) {
							//sum+=sanPhamTrongGioHang.get(i).getSanPham().getGia()*
							sanPhamTrongGioHang.get(i).setSoLuong(sanPhamTrongGioHang.get(i).getSoLuong()+1);
						}else{
							sanPhamTrongGioHang.add(new SanPhamTrongGioHang(sp, 1));
						}
					}
				}else{
					sanPhamTrongGioHang.add(new SanPhamTrongGioHang(sp, 1));
				}
				System.out.println(sanPhamTrongGioHang.size());
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//			if(action.equals("sum")){
//				String laySoLuong = request.getParameter("sl");
//				System.out.println(laySoLuong);
//				int sll =Integer.parseInt(laySoLuong);
//				int sum=0;
//				for (int i = 0; i < sanPhamTrongGioHang.size(); i++) {
//					int a =Integer.parseInt(sanPhamTrongGioHang.get(i).getSanPham().getGia());
//					sum+=a*sll;
//				}
//				System.out.println(sum);
//				HttpSession ss = request.getSession();
//				ss.setAttribute("sl", sll);
//				response.sendRedirect("Project/Webbanhang/giohangcuaban.jsp");
//			}
			session.setAttribute("giohang", sanPhamTrongGioHang);
			session.setAttribute("khachHang", kh);
			
			response.sendRedirect("Project/Webbanhang/giohangcuaban.jsp");
		}else{
			response.sendRedirect("Project/Webbanhang/dangnhap.jsp");
		}
		
	*/
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
