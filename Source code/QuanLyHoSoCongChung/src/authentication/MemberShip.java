package authentication;

import java.io.Serializable;
import java.util.List;

public class MemberShip implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String tenDangNhap;
	private String hoTen;
	private String soDienThoai;
	private String diaChi;
	private String donViCongTac;
	private String chucVu;
	
	private Integer nhomID;
	private String email;
	private Integer isTokenOnline;
	private String role;	
	private String actionMenu;
	private String actionSubMenu;
	private String tinhQuanLyTen;
	private Integer tinhQuanLyID;
	
	private List<Integer> listHuyenQuanLy;
	private List<Integer> listXaQuanLy;
	private Integer allXa;
	
	
	
	public Integer getAllXa() {
		return allXa;
	}
	public void setAllXa(Integer allXa) {
		this.allXa = allXa;
	}
	public List<Integer> getListHuyenQuanLy() {
		return listHuyenQuanLy;
	}
	public void setListHuyenQuanLy(List<Integer> listHuyenQuanLy) {
		this.listHuyenQuanLy = listHuyenQuanLy;
	}
	public List<Integer> getListXaQuanLy() {
		return listXaQuanLy;
	}
	public void setListXaQuanLy(List<Integer> listXaQuanLy) {
		this.listXaQuanLy = listXaQuanLy;
	}
	public String getTenDangNhap() {
		return tenDangNhap;
	}
	public void setTenDangNhap(String tenDangNhap) {
		this.tenDangNhap = tenDangNhap;
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
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
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
	public Integer getNhomID() {
		return nhomID;
	}
	public void setNhomID(Integer nhomID) {
		this.nhomID = nhomID;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Integer getIsTokenOnline() {
		return isTokenOnline;
	}
	public void setIsTokenOnline(Integer isTokenOnline) {
		this.isTokenOnline = isTokenOnline;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getActionMenu() {
		return actionMenu;
	}
	public void setActionMenu(String actionMenu) {
		this.actionMenu = actionMenu;
	}
	public String getActionSubMenu() {
		return actionSubMenu;
	}
	public void setActionSubMenu(String actionSubMenu) {
		this.actionSubMenu = actionSubMenu;
	}
	public String getTinhQuanLyTen() {
		return tinhQuanLyTen;
	}
	public void setTinhQuanLyTen(String tinhQuanLyTen) {
		this.tinhQuanLyTen = tinhQuanLyTen;
	}
	public Integer getTinhQuanLyID() {
		return tinhQuanLyID;
	}
	public void setTinhQuanLyID(Integer tinhQuanLyID) {
		this.tinhQuanLyID = tinhQuanLyID;
	}
}
