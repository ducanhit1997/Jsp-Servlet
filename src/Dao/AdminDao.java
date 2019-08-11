package Dao;

import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import Model.MyConnectDB;

public class AdminDao {
	public static boolean kiemTraDangNhap(String name, String password) {
		try {
			ResultSet rs = new MyConnectDB().chonDuLieu("select * from Admin where tenadmin='" + name + "'");
			while (rs.next()) {
				if (rs.getString(2).equals(name) && rs.getString(3).equals(password)) {
					return true;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}

		return false;
	}
	public static void main(String[] args) {
		//System.out.println(kiemTraDangNhap("admin", "admin"));
		
	}
}
