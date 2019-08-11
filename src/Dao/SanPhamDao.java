package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import Model.HoaDon;
import Model.MyConnectDB;
import Model.NhaXuatBan;
import Model.SanPham;
import Model.TacGia;

public class SanPhamDao {
	public static Map<String, SanPham> mapSanPham = thongKeSoLuongSanPham();
	public boolean themSanPham(Object obj) {
		SanPham sp = (SanPham) obj;
		try {
			new MyConnectDB().thucThiSQL("insert into SanPham values('" + sp.getMaTruyen() + "',N'" + sp.getTenTruyen()
					+ "',N'" + sp.getSoCuon() + "',N'" + sp.getHinhAnh() + "',N'" + sp.getGia() + "',N'"
					+ sp.getMaTacGia() + "',N'" + sp.getMaNhaXuatBan() + "')");
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public boolean suaSanPham(SanPham sp, String matruyen) {
		try {
			new MyConnectDB().thucThiSQL("update SanPham set matruyen='" + sp.getMaTruyen() + "',tentruyen=N'"
					+ sp.getTenTruyen() + "',socuon=N'" + sp.getSoCuon() + "',gia=N'" + sp.getGia()
					+ "' where matruyen='" + matruyen + "'");
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean xoaSanPham(String maTruyen) {
		try {
			new MyConnectDB().thucThiSQL("delete from SanPham where matruyen='" + maTruyen + "'");

			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return false;
	}

	public static ArrayList<SanPham> getList() throws SQLException {
		ArrayList<SanPham> list = new ArrayList<>();
		try {
			// String sql = "SELECT
			// s.matruyen,s.tentruyen,s.socuon,s.hinhanh,s.gia, s.matacgia,
			// nxb.manhaxuatban FROM SanPham s join TacGia tg on
			// s.matacgia=tg.matacgia join NhaXuatBan nxb on
			// nxb.manhaxuatban=s.manhaxuatban";
			String sql = " select* from SanPham";
			ResultSet rs = new MyConnectDB().chonDuLieu(sql);
			while (rs.next()) {

				String layMaSanPham = rs.getString(1);
				String layTenSanPham = rs.getString(2);
				int laySoCuon = rs.getInt(3);
				String layHinhAnh = rs.getString(4);
				int layGia = rs.getInt(5);
				String layMaTacGia = rs.getString(6);
				String layMaNhaXuatBan = rs.getString(7);
				SanPham sp = new SanPham(layMaSanPham, layTenSanPham, laySoCuon, layHinhAnh, layGia, layMaTacGia,
						layMaNhaXuatBan);
				list.add(sp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	public static SanPham getSanPham(String id) throws SQLException {
		Connection connection;
		SanPham sp = null;
		try {
			connection = MyConnectDB.connect();
			String sql = "SELECT * FROM SanPham s where s.matruyen=?";
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				String layMaSanPham = rs.getString(1);
				String layTenSanPham = rs.getString(2);
				int laySoCuon = rs.getInt(3);
				String layHinhAnh = rs.getString(4);
				int layGia = rs.getInt(5);
				String layMaTacGia = rs.getString(6);
				String layMaNhaXuatBan = rs.getString(7);
				sp = new SanPham(layMaSanPham, layTenSanPham, laySoCuon, layHinhAnh, layGia, layMaTacGia,
						layMaNhaXuatBan);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return sp;
	}

	public static ArrayList<SanPham> getListTheoNSX(String manhaxuatban) throws SQLException {
		ArrayList<SanPham> list = new ArrayList<>();
		try {
			String sql = "SELECT * FROM SanPham where manhaxuatban='" + manhaxuatban + "' ";

			ResultSet rs = new MyConnectDB().chonDuLieu(sql);
			while (rs.next()) {

				String layMaSanPham = rs.getString(1);
				String layTenSanPham = rs.getString(2);
				int laySoCuon = rs.getInt(3);
				String layHinhAnh = rs.getString(4);
				int layGia = rs.getInt(5);
				String layMaTacGia = rs.getString(6);
				String layMaNhaXuatBan = rs.getString(7);
				SanPham sp = new SanPham(layMaSanPham, layTenSanPham, laySoCuon, layHinhAnh, layGia, layMaTacGia,
						layMaNhaXuatBan);
				list.add(sp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public static ArrayList<SanPham> getListTheoGia(int a, int b) throws SQLException {
		ArrayList<SanPham> list = new ArrayList<>();
		try {
			String sql = "SELECT * FROM SanPham where gia between '" + a + "' and '" + b + "' ";

			ResultSet rs = new MyConnectDB().chonDuLieu(sql);
			while (rs.next()) {

				String layMaSanPham = rs.getString(1);
				String layTenSanPham = rs.getString(2);
				int laySoCuon = rs.getInt(3);
				String layHinhAnh = rs.getString(4);
				int layGia = rs.getInt(5);
				String layMaTacGia = rs.getString(6);
				String layMaNhaXuatBan = rs.getString(7);
				SanPham sp = new SanPham(layMaSanPham, layTenSanPham, laySoCuon, layHinhAnh, layGia, layMaTacGia,
						layMaNhaXuatBan);
				list.add(sp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public static String name(String id) throws Exception {
		List<SanPham> list = getList();
		for (SanPham qg : list) {
			if (qg.getMaTruyen().equals(id)) {
				return qg.getTenTruyen();
			}
		}
		return null;
	}
	private static Map<String, SanPham> thongKeSoLuongSanPham(){
		Map<String,SanPham> map = new HashMap<>();
		try {
			ResultSet rs = new MyConnectDB().chonDuLieu("select * FROM SanPham");
			while(rs.next()){
				String maSP = rs.getString(1);
				String tenSP = rs.getString(2);
				int soCuon = rs.getInt(3);
				String hinhAnh = rs.getString(4);
				int Gia = rs.getInt(5);
				String maTacGia = rs.getString(6);
				String maNXB= rs.getString(7);
				map.put(maSP, new SanPham(maSP, tenSP, soCuon, hinhAnh, Gia, maTacGia, maNXB));
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Loi thong ke theo thang");
		}
		return map;
	}
	public static void main(String[] args) throws SQLException {
		ArrayList<SanPham> list = SanPhamDao.getList();
		System.out.println(list.size());
		for (SanPham sanPham : list) {

			System.out.println(sanPham.getMaNhaXuatBan());
		}
	}

}