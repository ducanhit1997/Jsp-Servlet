package Dao;

import java.util.HashMap;
import java.util.Map;

public class NgonNguDao {
	public Map<String,String> english(){
		Map<String,String> map=new HashMap<>();
		map.put("NhapEmail", "Enter email");
		map.put("NhapMatKhau", "Enter password");
		map.put("DangKi", "Sign up");
		map.put("DangNhap", "Login");
		map.put("Hoac", "or");
		map.put("TenEmail", "Email");
		map.put("MatKhau", "Password");
		return map;
	}
	public Map<String,String> vietNam(){
		Map<String,String> map=new HashMap<>();
		map.put("NhapEmail", "Nhập email");
		map.put("NhapMatKhau", "Nhập mật khẩu");
		map.put("DangKi", "Đăng kí");
		map.put("DangNhap", "Đăng nhập");
		map.put("Hoac", "hoặc");
		map.put("TenEmail", "Email");
		map.put("MatKhau", "Mật khẩu");
		return map;
	}

}
