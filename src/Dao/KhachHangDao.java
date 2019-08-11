package Dao;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import Model.MyConnectDB;
import Model.KhachHang;
import Model.SanPham;
import Model.SanPhamTrongGioHang;

public class KhachHangDao implements ObjectDao {
	
	public boolean themTaiKhoan(Object obj) {
		KhachHang kh = (KhachHang) obj;
		try {
			new MyConnectDB().thucThiSQL("insert into TaiKhoan values('" + kh.getMaTaiKhoan() + "',N'"
					+ kh.getTenDangNhap() + "','" + kh.getEmail() + "','" + kh.getMatKhau() + "',N'" + kh.getGioiTinh() +"',N'"+ 0+ "')");
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean suaTaiKhoan(KhachHang kh, String makhachhang) {
		
		try {
			new MyConnectDB().thucThiSQL("update TaiKhoan set mataikhoan='"+kh.getMaTaiKhoan()+"',tenkhachhang=N'"+kh.getTenDangNhap()+"',email=N'"+kh.getEmail()+"',matkhau=N'"+kh.getMatKhau()+"' where mataikhoan='"+makhachhang+"'");
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean xoaTaiKhoan(String mataikhoan){
		try {
			new MyConnectDB().thucThiSQL("delete from TaiKhoan where mataikhoan='"+mataikhoan+"'");
			
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return false;
	}
	public static KhachHang layThongTinTaiKhoan(String email) {
		try {
			ResultSet rs = new MyConnectDB().chonDuLieu("select * from TaiKhoan where email='" + email + "' and isExist='"+1+"'");
			while (rs.next()) {
				String maTaiKhoan = rs.getString(1);
				String tenDangNhap = rs.getString(2);
				String layemail = rs.getString(3);
				String matKhau = rs.getString(4);
				String gioiTinh = rs.getString(5);
				return new KhachHang(maTaiKhoan, tenDangNhap, layemail, matKhau, gioiTinh);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return null;

	}
	public static KhachHang layThongTinTaiKhoanChuaXacNhan(String email) {
		try {
			ResultSet rs = new MyConnectDB().chonDuLieu("select * from TaiKhoan where email='" + email + "' and isExist='"+0+"'");
			while (rs.next()) {
				String maTaiKhoan = rs.getString(1);
				String tenDangNhap = rs.getString(2);
				String layemail = rs.getString(3);
				String matKhau = rs.getString(4);
				String gioiTinh = rs.getString(5);
				return new KhachHang(maTaiKhoan, tenDangNhap, layemail, matKhau, gioiTinh);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return null;

	}
	
	public static String md5(String password){
		MessageDigest md;
		String result = "";
		try {
			md = MessageDigest.getInstance("MD5");
			md.update(password.getBytes());
			BigInteger bi = new BigInteger(1, md.digest());
			
			result = bi.toString(16);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return result;
	}
	public static boolean kiemTraDangKi(String email) {
		try {
			ResultSet rs = new MyConnectDB().chonDuLieu("select * from TaiKhoan where email='" + email + "'");
			while (rs.next()) {
				if (rs.getString(3).equals(email)) {
					return true;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return false;
	}
	public boolean dangNhap(String email, String password)  {
		try {
			ResultSet rs = new MyConnectDB().chonDuLieu("select * from TaiKhoan");
			while (rs.next()) {
				if (rs.getString(3).equals(email)&&rs.getString(4).equals(md5(password))) {
					return true;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return false;
	}
	public static boolean kiemTraEmail(String email) {
		String emailPattern = "^[\\w!#$%&Ã¢â‚¬â„¢*+/=?`{|}~^-]+(?:\\.[\\w!#$%&Ã¢â‚¬â„¢*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$";
		Pattern p = Pattern.compile(emailPattern);
		Matcher m = p.matcher(email);
		return m.matches();
	}

	public static ArrayList<KhachHang> getList() throws SQLException {
		ArrayList<KhachHang> list = new ArrayList<>();
		try {
			String sql = "SELECT * FROM TaiKhoan where isExist='"+1+"'";

			ResultSet rs = new MyConnectDB().chonDuLieu(sql);
			while (rs.next()) {

				String layMaTaiKhoan = rs.getString(1);
				String layTenDangNhap = rs.getString(2);
				String layEmail = rs.getString(3);
				String layMatKhau = rs.getString(4);
				String layGioiTinh =rs.getString(5);
				KhachHang kh = new KhachHang(layMaTaiKhoan, layTenDangNhap, layEmail, layMatKhau, layGioiTinh);
				list.add(kh);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	public static boolean sendMail(String to, String subject, String text) {
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("shoptruyenonline2018@gmail.com", "anhhien1909");
			}
		});
		try {
			Message message = new MimeMessage(session);
			message.setHeader("Content-Type", "text/plain; charset=UTF-8");
			message.setFrom(new InternetAddress("shoptruyenonline2018@gmail.com"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
			message.setSubject(subject);
			message.setText(text);
			Transport.send(message);
		} catch (MessagingException e) {
			return false;
		}
		return true;
	}
	
	public boolean sendMaXacNhan(String email,String maXacNhan){
		KhachHang kh = KhachHangDao.layThongTinTaiKhoan(email);
		System.out.println(kh);
		if(kh!=null){
			
			//System.out.println(maSo);
			sendMail(email, "Đổi mật khẩu", "Mã xác nhận "+maXacNhan);
			return true;
		}
		
		return false;
	
	}
	public boolean sendMaXacNhanDangKi(String email,String maXacNhan){
		KhachHang kh = KhachHangDao.layThongTinTaiKhoanChuaXacNhan(email);
		System.out.println(kh);
		if(kh!=null){
			
			//System.out.println(maSo);
			sendMail(email, "Xác nhận đăng kí", "Mã xác nhận "+maXacNhan);
			return true;
		}
		
		return false;
	
	}
	public boolean sendDonHang(String email, ArrayList<SanPhamTrongGioHang> giohang,int sum){
		KhachHang kh = KhachHangDao.layThongTinTaiKhoan(email);
		System.out.println(kh);
		if(kh!=null){
			//System.out.println(maSo);
			sendMail(email, "Don hang ban da dat", "Danh sach san pham\n"+giohang+"\nTong don hang "+sum+"VNĐ");
			return true;
		}
		
		return false;
	
	}
	public boolean xuLiDangKi(String email) {
		try {
			new MyConnectDB().thucThiSQL("update TaiKhoan set isExist='"+1+"' where email='"+email+"'");
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean doiMatKhau(String email, String matKhauMoi){
		KhachHang kh = KhachHangDao.layThongTinTaiKhoan(email);
		if(kh!=null){
			try {
				new MyConnectDB().thucThiSQL("update TaiKhoan set mataikhoan='"+kh.getMaTaiKhoan()+"',tenkhachhang=N'"+kh.getTenDangNhap()+"',email=N'"+kh.getEmail()+"',matkhau=N'"+md5(matKhauMoi)+"' where email='"+email+"'");
				return true;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return false;
		}
		return false;
	}
	public static void main(String[] args) throws SQLException {
		KhachHangDao k = new KhachHangDao();
		System.out.println(k.dangNhap("15130008@st.hcmuaf.edu.vn", "anah"));
	}

	

	

	
}