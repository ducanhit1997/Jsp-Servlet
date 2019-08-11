package Dao;

import Model.MyConnectDB;
import Model.HoaDon;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import Model.HoaDon;

public class HoaDonDao {
	public static Map<String, HoaDon> mapHoaDon = loadDTB();
	public int layTongDoanhThuTheoThang(String text){
		int sum =0;
		Map<String, HoaDon> mapTS = new ThongKeDao().thongKeTheoThang(text);
		for(HoaDon ts : mapTS.values()){
			if(ts.getMaHoaDon().equals(mapHoaDon.get(ts.getMaHoaDon()).getMaHoaDon())){
				sum+=ts.getTongGia();
			}
		}
		return sum;
	}
	
	public boolean themHoaDon(Object obj) {
		HoaDon hoaDon = (HoaDon) obj;
		try {
			new MyConnectDB().thucThiSQL("insert into HoaDon values('" + hoaDon.getMaHoaDon()+ "',N'"+ hoaDon.getTenKhachHang()+ "',N'"+ hoaDon.getSdt()+ "',N'"+ hoaDon.getDiaChi()+ "',N'"+ hoaDon.getTongGia()+"',N'"+ hoaDon.getMaTruyen()+"',N'"+ hoaDon.getSoLuong()+"',N'"+ hoaDon.getNgayBan()+"')");
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	private static Map<String, HoaDon> loadDTB() {
		Map<String, HoaDon> map = new HashMap<>();
		try {
			ResultSet rs = new MyConnectDB().chonDuLieu("select * from  [dbo].[HoaDon]");
			while (rs.next()) {
				String layMaHoaDon = rs.getString(1);
				String layTenKhacHang = rs.getString(2);
				String laySDT = rs.getString(3);
				String layDiaChi = rs.getString(4);
				int layTongGia = rs.getInt(5);
				String layMaTruyen = rs.getString(6);
				int laySoLuong = rs.getInt(7);
				String layNgay = rs.getString(8);
				map.put(layMaHoaDon, new HoaDon(layMaHoaDon, layTenKhacHang, laySDT, layDiaChi, layMaTruyen, layTongGia,laySoLuong,layNgay));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return map;
	}

	public static void main(String[] args) throws SQLException {
		//System.out.println(HoaDonDao.layTongDoanhThuTheoThang("2018-06"));
	}

}
