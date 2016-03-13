package controller.ajaxquanlynguoidung;

import java.util.List;

import service.QuanLyNguoiDungService;
import controller.BaseAction;
import entity.TBLNhomTaiKhoan;

public class GetFormThongTinNhomTaiKhoan extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer nhomID;
	private TBLNhomTaiKhoan nhomTaiKhoan;
	private List<TBLNhomTaiKhoan> listNhomTaiKhoan;
	
	public String execute() {
		memberShip = super.getMemberShip();
		QuanLyNguoiDungService nguoiDungSV = new QuanLyNguoiDungService();
		if (nhomID != null) {
			nhomTaiKhoan = nguoiDungSV.getNhomTaiKhoanByID(nhomID);
			listNhomTaiKhoan = nguoiDungSV.getAllNhomTaiKhoanByMemberShip(memberShip);
		}
		return SUCCESS;

	}

	public List<TBLNhomTaiKhoan> getListNhomTaiKhoan() {
		return listNhomTaiKhoan;
	}

	public void setListNhomTaiKhoan(List<TBLNhomTaiKhoan> listNhomTaiKhoan) {
		this.listNhomTaiKhoan = listNhomTaiKhoan;
	}

	public Integer getNhomID() {
		return nhomID;
	}

	public void setNhomID(Integer nhomID) {
		this.nhomID = nhomID;
	}

	public TBLNhomTaiKhoan getNhomTaiKhoan() {
		return nhomTaiKhoan;
	}

	public void setNhomTaiKhoan(TBLNhomTaiKhoan nhomTaiKhoan) {
		this.nhomTaiKhoan = nhomTaiKhoan;
	}

}
