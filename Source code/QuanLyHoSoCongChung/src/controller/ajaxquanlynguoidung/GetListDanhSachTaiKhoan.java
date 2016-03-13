package controller.ajaxquanlynguoidung;

import java.util.List;

import service.QuanLyNguoiDungService;
import util.Const;
import controller.BaseAction;
import entity.TBLFunctionDetails;
import entity.TBLTaiKhoan;

public class GetListDanhSachTaiKhoan extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private List<TBLTaiKhoan> listTaiKhoan;
	private String tenDangNhap;
	private String hoTen;
	private String soDienThoai;
	private String email;
	private String diaChi;
	private Integer nhomID;
	private String donViCongTac;
	private String chucVu;
	private Integer locked;

	// Paging
	private int page = 1;
	private int totalPage = 0;
	private int totalRecord = 0;
	private int rowinpage = Const.ROW_IN_PAGE;
	private int endPage;
	
	private int isEdit;
	private int isDelete;
	
	public String execute() {

		try {
			memberShip = super.getMemberShip();
			subAction = super.getSubAction();
			QuanLyNguoiDungService taikhoanSV = new QuanLyNguoiDungService();

			int start = 0;
			int limit = rowinpage;
			start = (page - 1) * limit;
			listTaiKhoan = taikhoanSV.getAllTaiKhoanFilter(tenDangNhap, hoTen, soDienThoai, email, diaChi, nhomID, donViCongTac, chucVu, locked, start, limit, memberShip);
			totalRecord = taikhoanSV.countGetAllTaiKhoanFilter(tenDangNhap, hoTen, soDienThoai, email, diaChi, nhomID, donViCongTac, chucVu, locked, memberShip);
			totalPage = totalRecord / limit;
			if (totalRecord % limit > 0) {
				totalPage++;
			}
			endPage = page + 9;
			if (endPage > totalPage) {
				endPage = totalPage;
			}
			
			//Phan quyen
			TBLFunctionDetails gr = taikhoanSV.getPrivaleOnPage(memberShip, subAction);
			if (gr != null) {
				isEdit = gr.getIsEdit();
				isDelete = gr.getIsDelete();
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		}
		return SUCCESS;

	}

	public int getIsEdit() {
		return isEdit;
	}

	public void setIsEdit(int isEdit) {
		this.isEdit = isEdit;
	}

	public int getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}

	public List<TBLTaiKhoan> getListTaiKhoan() {
		return listTaiKhoan;
	}

	public void setListTaiKhoan(List<TBLTaiKhoan> listTaiKhoan) {
		this.listTaiKhoan = listTaiKhoan;
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

	public Integer getNhomID() {
		return nhomID;
	}

	public void setNhomID(Integer nhomID) {
		this.nhomID = nhomID;
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

	public Integer getLocked() {
		return locked;
	}

	public void setLocked(Integer locked) {
		this.locked = locked;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getTotalRecord() {
		return totalRecord;
	}

	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}

	public int getRowinpage() {
		return rowinpage;
	}

	public void setRowinpage(int rowinpage) {
		this.rowinpage = rowinpage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

}
