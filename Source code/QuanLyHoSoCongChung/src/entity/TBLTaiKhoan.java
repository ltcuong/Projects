package entity;

import java.io.Serializable;
import java.util.Date;

public class TBLTaiKhoan implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String tenDangNhap;
	private String matKhau;
	private String hoTen;
	private String soDienThoai;
	private String email;
	private String diaChi;
	private Date ngayCapNhat;
	private Integer nhomID;
	private Date lastLogin;
	private int userToken;
	private String donViCongTac;
	private String chucVu;
	private Date lastTokenOnline;
	private String nguoiTaoTaiKhoan;
	private int locked;
	private int daXoa;
	private Integer allXa;
	private String listHuyenQuanLy;
	private String listXaQuanLy;
	
	private TBLNhomTaiKhoan nhomTaiKhoan;

	
	public String getListHuyenQuanLy() {
		return listHuyenQuanLy;
	}

	public void setListHuyenQuanLy(String listHuyenQuanLy) {
		this.listHuyenQuanLy = listHuyenQuanLy;
	}

	public String getListXaQuanLy() {
		return listXaQuanLy;
	}

	public void setListXaQuanLy(String listXaQuanLy) {
		this.listXaQuanLy = listXaQuanLy;
	}

	public Integer getAllXa() {
		return allXa;
	}

	public void setAllXa(Integer allXa) {
		this.allXa = allXa;
	}

	public int getDaXoa() {
		return daXoa;
	}

	public void setDaXoa(int daXoa) {
		this.daXoa = daXoa;
	}

	public String getDonViCongTac() {
		return donViCongTac;
	}

	public void setDonViCongTac(String donViCongTac) {
		this.donViCongTac = donViCongTac;
	}

	public String getChucVu() {
		return chucVu;
	}

	public void setChucVu(String chucVu) {
		this.chucVu = chucVu;
	}

	public String getTenDangNhap() {
		return tenDangNhap;
	}

	public void setTenDangNhap(String tenDangNhap) {
		this.tenDangNhap = tenDangNhap;
	}

	public String getMatKhau() {
		return matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public Date getNgayCapNhat() {
		return ngayCapNhat;
	}

	public void setNgayCapNhat(Date ngayCapNhat) {
		this.ngayCapNhat = ngayCapNhat;
	}

	public Integer getNhomID() {
		return nhomID;
	}

	public void setNhomID(Integer nhomID) {
		this.nhomID = nhomID;
	}

	public Date getLastLogin() {
		return lastLogin;
	}

	public void setLastLogin(Date lastLogin) {
		this.lastLogin = lastLogin;
	}

	public int getUserToken() {
		return userToken;
	}

	public void setUserToken(int userToken) {
		this.userToken = userToken;
	}

	public Date getLastTokenOnline() {
		return lastTokenOnline;
	}

	public void setLastTokenOnline(Date lastTokenOnline) {
		this.lastTokenOnline = lastTokenOnline;
	}

	public String getNguoiTaoTaiKhoan() {
		return nguoiTaoTaiKhoan;
	}

	public void setNguoiTaoTaiKhoan(String nguoiTaoTaiKhoan) {
		this.nguoiTaoTaiKhoan = nguoiTaoTaiKhoan;
	}

	public int getLocked() {
		return locked;
	}

	public void setLocked(int locked) {
		this.locked = locked;
	}

	public TBLNhomTaiKhoan getNhomTaiKhoan() {
		return nhomTaiKhoan;
	}

	public void setNhomTaiKhoan(TBLNhomTaiKhoan nhomTaiKhoan) {
		this.nhomTaiKhoan = nhomTaiKhoan;
	}

}
