package Model;

public class SanPham {
	private String maTruyen;
	private String tenTruyen;
	private int soCuon;
	private String hinhAnh;
	private int gia;
	private String maTacGia;
	private String maNhaXuatBan;
	public SanPham(String maTruyen, String tenTruyen, int soCuon, String hinhAnh, int gia, String maTacGia,
			String maNhaXuatBan) {
		super();
		this.maTruyen = maTruyen;
		this.tenTruyen = tenTruyen;
		this.soCuon = soCuon;
		this.hinhAnh = hinhAnh;
		this.gia = gia;
		this.maTacGia = maTacGia;
		this.maNhaXuatBan = maNhaXuatBan;
	}
	public String getMaTruyen() {
		return maTruyen;
	}
	public void setMaTruyen(String maTruyen) {
		this.maTruyen = maTruyen;
	}
	public String getTenTruyen() {
		return tenTruyen;
	}
	public void setTenTruyen(String tenTruyen) {
		this.tenTruyen = tenTruyen;
	}
	public int getSoCuon() {
		return soCuon;
	}
	public void setSoCuon(int soCuon) {
		this.soCuon = soCuon;
	}
	public String getHinhAnh() {
		return hinhAnh;
	}
	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
	}
	public int getGia() {
		return gia;
	}
	public void setGia(int gia) {
		this.gia = gia;
	}
	public String getMaTacGia() {
		return maTacGia;
	}
	public void setMaTacGia(String maTacGia) {
		this.maTacGia = maTacGia;
	}
	public String getMaNhaXuatBan() {
		return maNhaXuatBan;
	}
	public void setMaNhaXuatBan(String maNhaXuatBan) {
		this.maNhaXuatBan = maNhaXuatBan;
	}
	@Override
	public String toString() {
		return "Ten san pham "+this.getTenTruyen()+" Gia "+this.gia;
	}
	
}
