package Model;

public class HoaDon {
	private String maHoaDon;
	private String tenKhachHang;
	private String sdt;
	private String diaChi;
	private String maTruyen;
	private int soLuong;
	private int tongGia;
	private String ngayBan;
	public HoaDon(String maHoaDon, String tenKhachHang, String sdt, String diaChi, String maTruyen, int soLuong,
			int tongGia, String ngayBan) {
		super();
		this.maHoaDon = maHoaDon;
		this.tenKhachHang = tenKhachHang;
		this.sdt = sdt;
		this.diaChi = diaChi;
		this.maTruyen = maTruyen;
		this.soLuong = soLuong;
		this.tongGia = tongGia;
		this.ngayBan = ngayBan;
	}
	public String getMaHoaDon() {
		return maHoaDon;
	}
	public void setMaHoaDon(String maHoaDon) {
		this.maHoaDon = maHoaDon;
	}
	public String getTenKhachHang() {
		return tenKhachHang;
	}
	public void setTenKhachHang(String tenKhachHang) {
		this.tenKhachHang = tenKhachHang;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public String getMaTruyen() {
		return maTruyen;
	}
	public void setMaTruyen(String maTruyen) {
		this.maTruyen = maTruyen;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public int getTongGia() {
		return tongGia;
	}
	public void setTongGia(int tongGia) {
		this.tongGia = tongGia;
	}
	public String getNgayBan() {
		return ngayBan;
	}
	public void setNgayBan(String ngayBan) {
		this.ngayBan = ngayBan;
	}
	@Override
	public String toString() {
		return "HoaDon [maHoaDon=" + maHoaDon + ", tenKhachHang=" + tenKhachHang + ", sdt=" + sdt + ", diaChi=" + diaChi
				+ ", maTruyen=" + maTruyen + ", soLuong=" + soLuong + ", tongGia=" + tongGia + ", ngayBan=" + ngayBan
				+ "]";
	}
	
}
