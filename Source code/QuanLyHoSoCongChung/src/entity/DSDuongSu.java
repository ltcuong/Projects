package entity;

import java.io.Serializable;
import java.util.Date;

public class DSDuongSu implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static final int TINHTRANG_DANG_HOATDONG = 1;
	public static final int TINHTRANG_HET_HOATDONG = 2;
	public static final int BEN_A = 1;
	public static final int BEN_B = 2;
	public static final int BEN_C = 3;
	
	public static final String DSHOTEN = "#HOTEN";
	public static final String DSNGAYSINH = "#NGAYSINH";
	public static final String DSQUOCTICH = "#QUOCTICH";
	public static final String DSLOAIGIAYTO = "#LOAIGIAYTO";
	public static final String DSSOGIAYTO = "#SOGIAYTO";
	public static final String DSNGAYCAPGIAYTO = "#NGAYCAPGIAYTO";
	public static final String DSNOICAPGIAYTO = "#NOICAPGIAYTO";
	public static final String DSDIACHITHUONGTRU = "#DIACHITHUONGTRU";
	public static final String DSDIACHILIENHE = "#DIACHILIENHE";
	public static final String DSTENTOCHUC = "#TENTOCHUC";
	public static final String DSGIAYDANGKYKINHDOANHSO = "#GIAYDANGKYKINHDOANHSO";
	public static final String DSNGAYCAPGIAYDANGKYKINHDOANH = "#NGAYCAPGIAYDANGKYKINHDOANH";
	public static final String DSNOICAPGIAYDANGKYKINHDOANH = "#NOICAPGIAYDANGKYKINHDOANH";
	public static final String DSSODIENTHOAI = "#SODIENTHOAI";
	public static final String DSCHUCVUNGUOIDAIDIEN = "#CHUCVUNGUOIDAIDIEN";
	public static final String DSGIAYUYQUYENSO = "#GIAYUYQUYENSO";
	public static final String DSNGAYCAPGIAYUYQUYEN = "#NGAYCAPGIAYUYQUYEN";
	public static final String DSEMAIL = "#EMAIL";
	public static final String DSSOFAX = "#SOFAX";
	
	private Integer duongSuID;
	private String hoTen;
	private Date ngaySinh;
	private Integer namSinh;
	private Integer loaiGiayToID;
	private String soGiayTo;
	private Date ngayCapGiayTo;
	private String noiCapGiayTo;
	private Integer quocTichID;
	private Integer tinhThuongTruID;
	private Integer huyenThuongTruID;
	private Integer xaThuongTruID;
	private String soNhaThuongTru;
	private String diaChiLienHe;
	private String tenToChuc;
	private String giayDangKyKinhDoanhSo;
	private Date ngayCapGiayDangKyKinhDoanh;
	private String noiCapGiayDangKyKinhDoanh;
	private String soDienThoai;
	private String chucVuNguoiDaiDien;
	private String giayUyQuyenSo;
	private Date ngayCapGiayUyQuyen;
	private String email;
	private String soFax;
	
	private Integer loaiDuongSuID;
	private Date ngayTao;
	private String nguoiTao;
	private int locked;
	private int tinhTrangID;
	
	private DMLoaiGiayTo loaiGiayTo;
	private DMTinh tinhThuongTru;
	private DMHuyen huyenThuongTru;
	private DMXa xaThuongTru;
	private DMQuocTich quocTich;
	
	
	public Integer getQuocTichID() {
		return quocTichID;
	}
	public void setQuocTichID(Integer quocTichID) {
		this.quocTichID = quocTichID;
	}
	public DMQuocTich getQuocTich() {
		return quocTich;
	}
	public void setQuocTich(DMQuocTich quocTich) {
		this.quocTich = quocTich;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSoFax() {
		return soFax;
	}
	public void setSoFax(String soFax) {
		this.soFax = soFax;
	}
	public Integer getDuongSuID() {
		return duongSuID;
	}
	public void setDuongSuID(Integer duongSuID) {
		this.duongSuID = duongSuID;
	}
	public String getHoTen() {
		return hoTen;
	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	public Date getNgaySinh() {
		return ngaySinh;
	}
	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}
	public Integer getNamSinh() {
		return namSinh;
	}
	public void setNamSinh(Integer namSinh) {
		this.namSinh = namSinh;
	}
	public Integer getLoaiGiayToID() {
		return loaiGiayToID;
	}
	public void setLoaiGiayToID(Integer loaiGiayToID) {
		this.loaiGiayToID = loaiGiayToID;
	}
	public String getSoGiayTo() {
		return soGiayTo;
	}
	public void setSoGiayTo(String soGiayTo) {
		this.soGiayTo = soGiayTo;
	}
	public Date getNgayCapGiayTo() {
		return ngayCapGiayTo;
	}
	public void setNgayCapGiayTo(Date ngayCapGiayTo) {
		this.ngayCapGiayTo = ngayCapGiayTo;
	}
	public String getNoiCapGiayTo() {
		return noiCapGiayTo;
	}
	public void setNoiCapGiayTo(String noiCapGiayTo) {
		this.noiCapGiayTo = noiCapGiayTo;
	}
	public Integer getTinhThuongTruID() {
		return tinhThuongTruID;
	}
	public void setTinhThuongTruID(Integer tinhThuongTruID) {
		this.tinhThuongTruID = tinhThuongTruID;
	}
	public Integer getHuyenThuongTruID() {
		return huyenThuongTruID;
	}
	public void setHuyenThuongTruID(Integer huyenThuongTruID) {
		this.huyenThuongTruID = huyenThuongTruID;
	}
	public Integer getXaThuongTruID() {
		return xaThuongTruID;
	}
	public void setXaThuongTruID(Integer xaThuongTruID) {
		this.xaThuongTruID = xaThuongTruID;
	}
	public String getSoNhaThuongTru() {
		return soNhaThuongTru;
	}
	public void setSoNhaThuongTru(String soNhaThuongTru) {
		this.soNhaThuongTru = soNhaThuongTru;
	}
	public String getDiaChiLienHe() {
		return diaChiLienHe;
	}
	public void setDiaChiLienHe(String diaChiLienHe) {
		this.diaChiLienHe = diaChiLienHe;
	}
	public String getTenToChuc() {
		return tenToChuc;
	}
	public void setTenToChuc(String tenToChuc) {
		this.tenToChuc = tenToChuc;
	}
	public String getGiayDangKyKinhDoanhSo() {
		return giayDangKyKinhDoanhSo;
	}
	public void setGiayDangKyKinhDoanhSo(String giayDangKyKinhDoanhSo) {
		this.giayDangKyKinhDoanhSo = giayDangKyKinhDoanhSo;
	}
	public Date getNgayCapGiayDangKyKinhDoanh() {
		return ngayCapGiayDangKyKinhDoanh;
	}
	public void setNgayCapGiayDangKyKinhDoanh(Date ngayCapGiayDangKyKinhDoanh) {
		this.ngayCapGiayDangKyKinhDoanh = ngayCapGiayDangKyKinhDoanh;
	}
	public String getNoiCapGiayDangKyKinhDoanh() {
		return noiCapGiayDangKyKinhDoanh;
	}
	public void setNoiCapGiayDangKyKinhDoanh(String noiCapGiayDangKyKinhDoanh) {
		this.noiCapGiayDangKyKinhDoanh = noiCapGiayDangKyKinhDoanh;
	}
	public String getSoDienThoai() {
		return soDienThoai;
	}
	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}
	public String getChucVuNguoiDaiDien() {
		return chucVuNguoiDaiDien;
	}
	public void setChucVuNguoiDaiDien(String chucVuNguoiDaiDien) {
		this.chucVuNguoiDaiDien = chucVuNguoiDaiDien;
	}
	public String getGiayUyQuyenSo() {
		return giayUyQuyenSo;
	}
	public void setGiayUyQuyenSo(String giayUyQuyenSo) {
		this.giayUyQuyenSo = giayUyQuyenSo;
	}
	public Date getNgayCapGiayUyQuyen() {
		return ngayCapGiayUyQuyen;
	}
	public void setNgayCapGiayUyQuyen(Date ngayCapGiayUyQuyen) {
		this.ngayCapGiayUyQuyen = ngayCapGiayUyQuyen;
	}
	public Integer getLoaiDuongSuID() {
		return loaiDuongSuID;
	}
	public void setLoaiDuongSuID(Integer loaiDuongSuID) {
		this.loaiDuongSuID = loaiDuongSuID;
	}
	public Date getNgayTao() {
		return ngayTao;
	}
	public void setNgayTao(Date ngayTao) {
		this.ngayTao = ngayTao;
	}
	public String getNguoiTao() {
		return nguoiTao;
	}
	public void setNguoiTao(String nguoiTao) {
		this.nguoiTao = nguoiTao;
	}
	public int getLocked() {
		return locked;
	}
	public void setLocked(int locked) {
		this.locked = locked;
	}
	public int getTinhTrangID() {
		return tinhTrangID;
	}
	public void setTinhTrangID(int tinhTrangID) {
		this.tinhTrangID = tinhTrangID;
	}
	public DMLoaiGiayTo getLoaiGiayTo() {
		return loaiGiayTo;
	}
	public void setLoaiGiayTo(DMLoaiGiayTo loaiGiayTo) {
		this.loaiGiayTo = loaiGiayTo;
	}
	public DMTinh getTinhThuongTru() {
		return tinhThuongTru;
	}
	public void setTinhThuongTru(DMTinh tinhThuongTru) {
		this.tinhThuongTru = tinhThuongTru;
	}
	public DMHuyen getHuyenThuongTru() {
		return huyenThuongTru;
	}
	public void setHuyenThuongTru(DMHuyen huyenThuongTru) {
		this.huyenThuongTru = huyenThuongTru;
	}
	public DMXa getXaThuongTru() {
		return xaThuongTru;
	}
	public void setXaThuongTru(DMXa xaThuongTru) {
		this.xaThuongTru = xaThuongTru;
	}

}
