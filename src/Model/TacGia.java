package Model;

public class TacGia {
	private String maTacGia;
	private String tenTacGia;
	private String maNhaXuatBan;
	public TacGia(String maTacGia, String tenTacGia, String maNhaXuatBan) {
		super();
		this.maTacGia = maTacGia;
		this.tenTacGia = tenTacGia;
		this.maNhaXuatBan = maNhaXuatBan;
	}
	public String getMaTacGia() {
		return maTacGia;
	}
	public void setMaTacGia(String maTacGia) {
		this.maTacGia = maTacGia;
	}
	public String getTenTacGia() {
		return tenTacGia;
	}
	public void setTenTacGia(String tenTacGia) {
		this.tenTacGia = tenTacGia;
	}
	public String getMaNhaXuatBan() {
		return maNhaXuatBan;
	}
	public void setMaNhaXuatBan(String maNhaXuatBan) {
		this.maNhaXuatBan = maNhaXuatBan;
	}
	@Override
	public String toString() {
		return "TacGia [maTacGia=" + maTacGia + ", tenTacGia=" + tenTacGia + ", maNhaXuatBan=" + maNhaXuatBan + "]";
	}
	
}
