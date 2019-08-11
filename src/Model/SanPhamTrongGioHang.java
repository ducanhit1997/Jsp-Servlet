package Model;

public class SanPhamTrongGioHang {
	private SanPham sanPham;
	private int soLuong;
	public SanPhamTrongGioHang(SanPham sanPham, int soLuong) {
		super();
		this.sanPham = sanPham;
		this.soLuong = soLuong;
	}
	public SanPham getSanPham() {
		return sanPham;
	}
	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	@Override
	public String toString() {
		return this.sanPham+" SL "+this.soLuong+"\n";
	}
	
}
