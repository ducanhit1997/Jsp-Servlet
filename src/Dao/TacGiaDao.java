package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.MyConnectDB;
import Model.NhaXuatBan;
import Model.TacGia;

public class TacGiaDao {
	public boolean themTacGia(Object obj) {
		TacGia tg = (TacGia) obj;
		try {
			new MyConnectDB().thucThiSQL("insert into TacGia values('" + tg.getMaTacGia()+ "',N'"+ tg.getTenTacGia()+ "',N'"+ tg.getMaNhaXuatBan()+ "')");
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public boolean suaTacGia(TacGia tg, String maTacGia) {
		try {
			new MyConnectDB().thucThiSQL("update TacGia set maTacGia='"+tg.getMaTacGia()+"',tenTacGia=N'"+tg.getTenTacGia()+"' where maTacGia='"+maTacGia+"'");
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean xoaTacGia(String maTacGia){
		try {
			new MyConnectDB().thucThiSQL("delete from TacGia where maTacGia='"+maTacGia+"'");
			
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return false;
	}
	public static ArrayList<TacGia> getList() throws SQLException {
		ArrayList<TacGia> list = new ArrayList<>();
		try {
			String sql = "SELECT * FROM TacGia";

			ResultSet rs = new MyConnectDB().chonDuLieu(sql);
			while (rs.next()) {

				String layMaTacGia = rs.getString(1);
				String layTenTacGia = rs.getString(2);
				String layMaNhaXuatBan = rs.getString(3);
				TacGia TacGia = new TacGia(layMaTacGia, layTenTacGia,layMaNhaXuatBan);
				list.add(TacGia);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public static ArrayList<TacGia> getListHangSX(String manhaxuatban){
		ArrayList<TacGia> list = new ArrayList<>();
		try {
			String sql = "SELECT * FROM TacGia where manhaxuatban='"+manhaxuatban+"'";

			ResultSet rs = new MyConnectDB().chonDuLieu(sql);
			while (rs.next()) {

				String layMaTacGia = rs.getString(1);
				String layTenTacGia = rs.getString(2);
				String layMaNhaXuatBan = rs.getString(3);
				TacGia TacGia = new TacGia(layMaTacGia, layTenTacGia,layMaNhaXuatBan);
				list.add(TacGia);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	public static String name(String id) throws Exception{
		List<TacGia> list= getList();
			for(TacGia qg: list){
				if(qg.getMaTacGia().equals(id)){
					return qg.getTenTacGia();
				}
			}
			return null;
		}
	public static void main(String[] args) throws SQLException {
		ArrayList<TacGia> l = TacGiaDao.getListHangSX("NXB1528676502705");
		for (TacGia tacGia : l) {
			System.out.println(tacGia);
		}
	}
}
