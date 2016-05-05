package entity;

import java.io.Serializable;
import java.util.Date;

public class HDUyQuyen implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer hopDongUyQuyenID;
	private String phamViUyQuyen;
	private String thoiHanUyQuyen;
	private Date thoiHanKetThucUyQuyen;
	private Date uyQuyenTuNgay;
	private Double thuLaoPhaiTra;
	private Date ngayCoHieuLuc;
	private String cacThoaThuanKhac;
	
	private HDHopDong hopDong;
	
	
	public HDHopDong getHopDong() {
		return hopDong;
	}
	public void setHopDong(HDHopDong hopDong) {
		this.hopDong = hopDong;
	}
	public Integer getHopDongUyQuyenID() {
		return hopDongUyQuyenID;
	}
	public void setHopDongUyQuyenID(Integer hopDongUyQuyenID) {
		this.hopDongUyQuyenID = hopDongUyQuyenID;
	}
	public String getPhamViUyQuyen() {
		return phamViUyQuyen;
	}
	public void setPhamViUyQuyen(String phamViUyQuyen) {
		this.phamViUyQuyen = phamViUyQuyen;
	}
	public String getThoiHanUyQuyen() {
		return thoiHanUyQuyen;
	}
	public void setThoiHanUyQuyen(String thoiHanUyQuyen) {
		this.thoiHanUyQuyen = thoiHanUyQuyen;
	}
	public Date getThoiHanKetThucUyQuyen() {
		return thoiHanKetThucUyQuyen;
	}
	public void setThoiHanKetThucUyQuyen(Date thoiHanKetThucUyQuyen) {
		this.thoiHanKetThucUyQuyen = thoiHanKetThucUyQuyen;
	}
	public Date getUyQuyenTuNgay() {
		return uyQuyenTuNgay;
	}
	public void setUyQuyenTuNgay(Date uyQuyenTuNgay) {
		this.uyQuyenTuNgay = uyQuyenTuNgay;
	}
	public Double getThuLaoPhaiTra() {
		return thuLaoPhaiTra;
	}
	public void setThuLaoPhaiTra(Double thuLaoPhaiTra) {
		this.thuLaoPhaiTra = thuLaoPhaiTra;
	}
	public Date getNgayCoHieuLuc() {
		return ngayCoHieuLuc;
	}
	public void setNgayCoHieuLuc(Date ngayCoHieuLuc) {
		this.ngayCoHieuLuc = ngayCoHieuLuc;
	}
	public String getCacThoaThuanKhac() {
		return cacThoaThuanKhac;
	}
	public void setCacThoaThuanKhac(String cacThoaThuanKhac) {
		this.cacThoaThuanKhac = cacThoaThuanKhac;
	}
}
