package Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.KhachHang;
import Model.MyConnectDB;
import Model.NhaXuatBan;
import Model.TacGia;

public class NhaXuatBanDao {
	public boolean themNhaXuatBan(Object obj) {
		NhaXuatBan nxb = (NhaXuatBan) obj;
		try {
			new MyConnectDB().thucThiSQL("insert into NhaXuatBan values('" + nxb.getMaNhaXuatBan() + "',N'"
					+ nxb.getTenNhaXuatBan() + "',N'" + 1 + "')");
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public boolean hoanTacNhaXuatBan() {

		try {
			new MyConnectDB().thucThiSQL("update NhaXuatBan set isExist='" + 1 + "'");
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public boolean suaNhaXuatBan(NhaXuatBan nxb, String manhaxuatban) {
		try {
			new MyConnectDB().thucThiSQL("update NhaXuatBan set manhaxuatban='" + nxb.getMaNhaXuatBan()
					+ "',tennhaxuatban=N'" + nxb.getTenNhaXuatBan() + "' where manhaxuatban='" + manhaxuatban + "'");
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean xoaNhaXuatBan(String manhaxuatban) {
		try {
			new MyConnectDB().thucThiSQL("delete from NhaXuatBan where manhaxuatban='" + manhaxuatban + "'");

			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return false;
	}

	public static ArrayList<NhaXuatBan> getList() throws SQLException {
		ArrayList<NhaXuatBan> list = new ArrayList<>();
		try {
			String sql = "SELECT * FROM NhaXuatBan ";

			ResultSet rs = new MyConnectDB().chonDuLieu(sql);
			while (rs.next()) {

				String layMaNhaXuatBan = rs.getString(1);
				String layTenNhaXuatBan = rs.getString(2);
				NhaXuatBan nhaXuatBan = new NhaXuatBan(layMaNhaXuatBan, layTenNhaXuatBan);
				list.add(nhaXuatBan);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public static String name(String id) throws Exception{
		List<NhaXuatBan> list= getList();
			for(NhaXuatBan hsx: list){
				if(hsx.getMaNhaXuatBan().equals(id)){
					return hsx.getTenNhaXuatBan();
				}
			}
			return null;
		}
	public static void main(String[] args) throws Exception {
		System.out.println(name("NXB1528676000493"));
	}

}
