package Model;

public class KhachHang {
	private String maTaiKhoan;
	private String tenDangNhap;
	private String Email;
	private String matKhau;
	private String gioiTinh;
	public KhachHang(String maTaiKhoan, String tenDangNhap, String email, String matKhau, String gioiTinh) {
		super();
		this.maTaiKhoan = maTaiKhoan;
		this.tenDangNhap = tenDangNhap;
		Email = email;
		this.matKhau = matKhau;
		this.gioiTinh = gioiTinh;
	}
	public String getMaTaiKhoan() {
		return maTaiKhoan;
	}
	public void setMaTaiKhoan(String maTaiKhoan) {
		this.maTaiKhoan = maTaiKhoan;
	}
	public String getTenDangNhap() {
		return tenDangNhap;
	}
	public void setTenDangNhap(String tenDangNhap) {
		this.tenDangNhap = tenDangNhap;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getMatKhau() {
		return matKhau;
	}
	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}
	public String getGioiTinh() {
		return gioiTinh;
	}
	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}
	@Override
	public String toString() {
		return "KhachHang [maTaiKhoan=" + maTaiKhoan + ", tenDangNhap=" + tenDangNhap + ", Email=" + Email
				+ ", matKhau=" + matKhau + ", gioiTinh=" + gioiTinh + "]";
	}
	
	
	
}
