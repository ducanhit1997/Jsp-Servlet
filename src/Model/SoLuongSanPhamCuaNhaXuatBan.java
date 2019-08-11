package Model;

public class SoLuongSanPhamCuaNhaXuatBan {
	String tenNhaXuatBan;
	String soLuong;
	public SoLuongSanPhamCuaNhaXuatBan(String tenNhaXuatBan, String soLuong) {
		super();
		this.tenNhaXuatBan = tenNhaXuatBan;
		this.soLuong = soLuong;
	}
	public String getTenNhaXuatBan() {
		return tenNhaXuatBan;
	}
	public void setTenNhaXuatBan(String tenNhaXuatBan) {
		this.tenNhaXuatBan = tenNhaXuatBan;
	}
	public String getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(String soLuong) {
		this.soLuong = soLuong;
	}
	@Override
	public String toString() {
		return "SoLuongSanPhamCuaNhaXuatBan [tenNhaXuatBan=" + tenNhaXuatBan + ", soLuong=" + soLuong + "]";
	}
	
}
