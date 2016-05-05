package entity;

import java.io.Serializable;

public class HDHopDong implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static final int TINHTRANG_TIEPNHAN = 1;
	public static final int HD_CHUYENDOI_NHA_O = 4;
	
	public static final String HD_DUONGSUCHINHBENA = "#DUONGSUCHINHBENA";
	public static final String HD_NGUOIUYQUYENBENA = "#NGUOIUYQUYENBENA";
	public static final String HD_DONGSOHUUBENA = "#DONGSOHUUBENA";
	public static final String HD_DUONGSUCHINHBENB = "#DUONGSUCHINHBENB";
	public static final String HD_NGUOIUYQUYENBENB = "#NGUOIUYQUYENBENB";
	public static final String HD_DONGSOHUUBENB = "#DONGSOHUUBENB";
	public static final String HD_DUONGSUCHINHBENC = "#DUONGSUCHINHBENC";
	public static final String HD_NGUOIUYQUYENBENC = "#NGUOIUYQUYENBENC";
	public static final String HD_DONGSOHUUBENC = "#DONGSOHUUBENC";
	public static final String HD_TAISANBENA = "#TAISANBENA";
	public static final String HD_TAISANBENB = "#TAISANBENB";
	public static final String HD_HD_BENDANGKY = "#BENDANGKY";
	public static final String HD_HD_BENCHIUPHI = "#BENCHIUPHI";
	
	
	private Integer hopDongID;
	private Integer loaiHopDongID;
	private Integer loaiHopDongChiTietID;
	
	private Integer benDangKyID;
	private Integer benChiuPhiID;
	private String nguoiTaoHopDong;
	private String ngayTaoHopDong;
	private Double phiGiaoDich;
	private Integer tinhTrangID;
	private int laHopDongSoanSan;
	private String noiDungSoanSan;
	
	private DMLoaiHopDong loaiHopDong;
	private DMLoaiHopDongChiTiet loaiHopDongChiTiet;
	private HDTheChap hopDongTheChap;
	private HDChuyenNhuong hopDongChuyenNhuong;
	private HDTangCho hopDongTangCho;
	private HDMuaBan hopDongMuaBan;
	private HDUyQuyen hopDongUyQuyen;
	private HDThuaKe hopDongThuaKe;
	private HDThue hopDongThue;
	private HDGopVon hopDongGopVon;
	private HDCamCo hopDongCamCo;
	private HDDiChuc hopDongDiChuc;
	private HDChuyenDoi hopDongChuyenDoi;
	private HDHuy hopDongHuy;
	private DMLoaiDuongSu benDangKy;
	private DMLoaiDuongSu benChiuPhi;
	private DMTinhTrang tinhTrang;
	
	
	public String getNoiDungSoanSan() {
		return noiDungSoanSan;
	}
	public void setNoiDungSoanSan(String noiDungSoanSan) {
		this.noiDungSoanSan = noiDungSoanSan;
	}
	public int getLaHopDongSoanSan() {
		return laHopDongSoanSan;
	}
	public void setLaHopDongSoanSan(int laHopDongSoanSan) {
		this.laHopDongSoanSan = laHopDongSoanSan;
	}
	public Integer getHopDongID() {
		return hopDongID;
	}
	public void setHopDongID(Integer hopDongID) {
		this.hopDongID = hopDongID;
	}
	public Integer getLoaiHopDongID() {
		return loaiHopDongID;
	}
	public void setLoaiHopDongID(Integer loaiHopDongID) {
		this.loaiHopDongID = loaiHopDongID;
	}
	public Integer getLoaiHopDongChiTietID() {
		return loaiHopDongChiTietID;
	}
	public void setLoaiHopDongChiTietID(Integer loaiHopDongChiTietID) {
		this.loaiHopDongChiTietID = loaiHopDongChiTietID;
	}
	public Integer getBenDangKyID() {
		return benDangKyID;
	}
	public void setBenDangKyID(Integer benDangKyID) {
		this.benDangKyID = benDangKyID;
	}
	public Integer getBenChiuPhiID() {
		return benChiuPhiID;
	}
	public void setBenChiuPhiID(Integer benChiuPhiID) {
		this.benChiuPhiID = benChiuPhiID;
	}
	
	public String getNguoiTaoHopDong() {
		return nguoiTaoHopDong;
	}
	public void setNguoiTaoHopDong(String nguoiTaoHopDong) {
		this.nguoiTaoHopDong = nguoiTaoHopDong;
	}
	public String getNgayTaoHopDong() {
		return ngayTaoHopDong;
	}
	public void setNgayTaoHopDong(String ngayTaoHopDong) {
		this.ngayTaoHopDong = ngayTaoHopDong;
	}
	public Double getPhiGiaoDich() {
		return phiGiaoDich;
	}
	public void setPhiGiaoDich(Double phiGiaoDich) {
		this.phiGiaoDich = phiGiaoDich;
	}
	public Integer getTinhTrangID() {
		return tinhTrangID;
	}
	public void setTinhTrangID(Integer tinhTrangID) {
		this.tinhTrangID = tinhTrangID;
	}
	public DMLoaiHopDong getLoaiHopDong() {
		return loaiHopDong;
	}
	public void setLoaiHopDong(DMLoaiHopDong loaiHopDong) {
		this.loaiHopDong = loaiHopDong;
	}
	public DMLoaiHopDongChiTiet getLoaiHopDongChiTiet() {
		return loaiHopDongChiTiet;
	}
	public void setLoaiHopDongChiTiet(DMLoaiHopDongChiTiet loaiHopDongChiTiet) {
		this.loaiHopDongChiTiet = loaiHopDongChiTiet;
	}
	public HDTheChap getHopDongTheChap() {
		return hopDongTheChap;
	}
	public void setHopDongTheChap(HDTheChap hopDongTheChap) {
		this.hopDongTheChap = hopDongTheChap;
	}
	public HDChuyenNhuong getHopDongChuyenNhuong() {
		return hopDongChuyenNhuong;
	}
	public void setHopDongChuyenNhuong(HDChuyenNhuong hopDongChuyenNhuong) {
		this.hopDongChuyenNhuong = hopDongChuyenNhuong;
	}
	public HDTangCho getHopDongTangCho() {
		return hopDongTangCho;
	}
	public void setHopDongTangCho(HDTangCho hopDongTangCho) {
		this.hopDongTangCho = hopDongTangCho;
	}
	public HDMuaBan getHopDongMuaBan() {
		return hopDongMuaBan;
	}
	public void setHopDongMuaBan(HDMuaBan hopDongMuaBan) {
		this.hopDongMuaBan = hopDongMuaBan;
	}
	public HDUyQuyen getHopDongUyQuyen() {
		return hopDongUyQuyen;
	}
	public void setHopDongUyQuyen(HDUyQuyen hopDongUyQuyen) {
		this.hopDongUyQuyen = hopDongUyQuyen;
	}
	public HDThuaKe getHopDongThuaKe() {
		return hopDongThuaKe;
	}
	public void setHopDongThuaKe(HDThuaKe hopDongThuaKe) {
		this.hopDongThuaKe = hopDongThuaKe;
	}
	public HDThue getHopDongThue() {
		return hopDongThue;
	}
	public void setHopDongThue(HDThue hopDongThue) {
		this.hopDongThue = hopDongThue;
	}
	public HDGopVon getHopDongGopVon() {
		return hopDongGopVon;
	}
	public void setHopDongGopVon(HDGopVon hopDongGopVon) {
		this.hopDongGopVon = hopDongGopVon;
	}
	public HDCamCo getHopDongCamCo() {
		return hopDongCamCo;
	}
	public void setHopDongCamCo(HDCamCo hopDongCamCo) {
		this.hopDongCamCo = hopDongCamCo;
	}
	public HDDiChuc getHopDongDiChuc() {
		return hopDongDiChuc;
	}
	public void setHopDongDiChuc(HDDiChuc hopDongDiChuc) {
		this.hopDongDiChuc = hopDongDiChuc;
	}
	public HDChuyenDoi getHopDongChuyenDoi() {
		return hopDongChuyenDoi;
	}
	public void setHopDongChuyenDoi(HDChuyenDoi hopDongChuyenDoi) {
		this.hopDongChuyenDoi = hopDongChuyenDoi;
	}
	public HDHuy getHopDongHuy() {
		return hopDongHuy;
	}
	public void setHopDongHuy(HDHuy hopDongHuy) {
		this.hopDongHuy = hopDongHuy;
	}
	public DMLoaiDuongSu getBenDangKy() {
		return benDangKy;
	}
	public void setBenDangKy(DMLoaiDuongSu benDangKy) {
		this.benDangKy = benDangKy;
	}
	public DMLoaiDuongSu getBenChiuPhi() {
		return benChiuPhi;
	}
	public void setBenChiuPhi(DMLoaiDuongSu benChiuPhi) {
		this.benChiuPhi = benChiuPhi;
	}
	public DMTinhTrang getTinhTrang() {
		return tinhTrang;
	}
	public void setTinhTrang(DMTinhTrang tinhTrang) {
		this.tinhTrang = tinhTrang;
	}
}
