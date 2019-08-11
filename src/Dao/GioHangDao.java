package Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Model.MyConnectDB;
import Model.SanPham;
import Model.SanPhamTrongGioHang;

public class GioHangDao {

	public static ArrayList<SanPhamTrongGioHang> gioHang = new ArrayList<>();

	public static ArrayList<SanPham> list = new ArrayList<>();

	public GioHangDao() {
		try {
			String sql = "SELECT * FROM SanPham";

			ResultSet rs = new MyConnectDB().chonDuLieu(sql);
			while (rs.next()) {

				String layMaSanPham = rs.getString(1);
				String layTenSanPham = rs.getString(2);
				int laySoCuon = rs.getInt(3);
				String layHinhAnh = rs.getString(4);
				int layGia = rs.getInt(5);
				String layMaTacGia = rs.getString(6);
				String layMaNhaXuatBan = rs.getString(7);
				SanPham sp = new SanPham(layMaSanPham, layTenSanPham, laySoCuon, layHinhAnh, layGia,
						layMaTacGia,layMaNhaXuatBan);
				list.add(sp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public static boolean kiemTraSanPhamCoTrongGioHangChua(String maTruyen) {
		for (int i = 0; i < gioHang.size(); i++) {
			if (gioHang.get(i).getSanPham().getMaTruyen().equals(maTruyen)) {
				return true;
			}
		}
		return false;
	}

	public static boolean themVaoGioHang(String maTruyen) {
		
		boolean kiemTra = kiemTraSanPhamCoTrongGioHangChua(maTruyen);
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getMaTruyen().equals(maTruyen) && kiemTra == false) {
				try {
					gioHang.add(new SanPhamTrongGioHang(new SanPhamDao().getSanPham(maTruyen), 1));
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return true;
			}
		}
			if (kiemTra == true) {
				int index = gioHang.size();
				for (int i = 0; i < index; i++) {
					if (gioHang.get(i).getSanPham().getMaTruyen().equals(maTruyen)) {
						gioHang.get(i).setSoLuong(gioHang.get(i).getSoLuong() + 1 );
						index = i;
					}
				}
			}
		

		return false;
	}

	public boolean xoaSanPhamTrongGioHang(String maTruyen) {
		for (int i = 0; i < gioHang.size(); i++) {
			if (gioHang.get(i).getSanPham().getMaTruyen().equals(maTruyen)) {
				gioHang.remove(i);
				return true;
			}
		}
		return false;
	}

	public static int SumDonHang(int sl) {
		int sum = 0;
		for (int i = 0; i < gioHang.size(); i++) {
			int gia = gioHang.get(i).getSanPham().getGia() * sl;
			sum += gia;
		}
		return sum;

	}

	public static ArrayList<SanPham> getDsSanPham() {
		return list;
	}

	public static void setDsSanPham(ArrayList<SanPham> dsSanPham) {
		GioHangDao.list = list;
	}

	public static ArrayList<SanPhamTrongGioHang> getGioHang() {
		return gioHang;
	}

	public static void setGioHang(ArrayList<SanPhamTrongGioHang> gioHang) {
		GioHangDao.gioHang = gioHang;
	}

	public static void main(String[] args) throws SQLException {
		System.out.println(themVaoGioHang("T2536425466"));
		

	}

}
