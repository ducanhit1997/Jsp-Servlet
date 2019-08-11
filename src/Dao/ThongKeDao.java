package Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import Model.HoaDon;
import Model.MyConnectDB;
import Model.SanPham;
import Model.SoLuongSanPhamCuaNhaXuatBan;



public class ThongKeDao {
	public Map<String, HoaDon> thongKeTheoThang(String text){
		String year = text.substring(0,text.indexOf("-"));
		String month=text.substring(text.indexOf("-")+1, text.length());
		
		Map<String,HoaDon> map = new HashMap<>();
		try {
			ResultSet rs = new MyConnectDB().chonDuLieu("select * from [dbo].[HoaDon] where year(ngayban)='"+year+"' and month(ngayban)='"+month+"'");
			while(rs.next()){
				String maHoaDon = rs.getString(1);
				String tenKH = rs.getString(2);
				String SDT = rs.getString(3);
				String diaChi = rs.getString(4);
				int tongGia = rs.getInt(5);
				String maTruyen = rs.getString(6);
				int soLuong = rs.getInt(7);
				String ngayBan = rs.getString(8);
				map.put(maHoaDon, new HoaDon(maHoaDon, tenKH, SDT, diaChi, maTruyen, tongGia, soLuong,ngayBan));
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Loi thong ke theo thang");
		}
		return map;
	}
	public Map<String, HoaDon> thongKeTheoThangHeThong(){
		Date toDate = new Date(System.currentTimeMillis());
		SimpleDateFormat fomatTime = new SimpleDateFormat("yyyy-MM-dd");
		String date = fomatTime.format(toDate.getTime());
		
		String year = date.substring(0,date.indexOf("-"));
		String month=date.substring(date.indexOf("-")+1, date.lastIndexOf("-"));

		Map<String,HoaDon> map = new HashMap<>();
		try {
			ResultSet rs = new MyConnectDB().chonDuLieu("select * from [dbo].[HoaDon] where year(ngayban)='"+year+"' and month(ngayban)='"+month+"'");
			while(rs.next()){
				String maHoaDon = rs.getString(1);
				String tenKH = rs.getString(2);
				String SDT = rs.getString(3);
				String diaChi = rs.getString(4);
				int tongGia = rs.getInt(5);
				String maTruyen = rs.getString(6);
				int soLuong = rs.getInt(7);
				String ngayBan = rs.getString(8);
				map.put(maHoaDon, new HoaDon(maHoaDon, tenKH, SDT, diaChi, maTruyen, tongGia, soLuong,ngayBan));
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Loi thong ke theo thang");
		}
		return map;
	}
	public static ArrayList<SoLuongSanPhamCuaNhaXuatBan> SLSPNXB() throws Exception{
		
		ArrayList<SoLuongSanPhamCuaNhaXuatBan> ds=new ArrayList<>();
		try {
			ResultSet rs = new MyConnectDB().chonDuLieu("select n.tennhaxuatban, COUNT(n.tennhaxuatban) FROM SanPham s join NhaXuatBan n ON s.manhaxuatban=n.manhaxuatban  GROUP BY n.tennhaxuatban");
			
			while(rs.next()){
				String tenNXB=rs.getString(1);
				String soLuong=rs.getString(2);
				ds.add(new SoLuongSanPhamCuaNhaXuatBan(tenNXB, soLuong));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ds;
		
		
	}
public static ArrayList<SoLuongTacGiaCuaNhaXuatBan> SLTGNXB() throws Exception{
		
		ArrayList<SoLuongTacGiaCuaNhaXuatBan> ds=new ArrayList<>();
		try {
			ResultSet rs = new MyConnectDB().chonDuLieu("select n.tennhaxuatban, COUNT(n.tennhaxuatban) FROM TacGia s join NhaXuatBan n ON s.manhaxuatban=n.manhaxuatban GROUP BY n.tennhaxuatban");
			
			while(rs.next()){
				String tenNXB=rs.getString(1);
				String soLuong=rs.getString(2);
				ds.add(new SoLuongTacGiaCuaNhaXuatBan(tenNXB, soLuong));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ds;
		
		
	}
	
}
