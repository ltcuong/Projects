package controller.ajaxquanlynguoidung;

import java.util.List;

import service.QuanLyNguoiDungService;
import controller.BaseAction;
import entity.TBLNhomTaiKhoan;

public class GetSelectNhomTaiKhoan extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List<TBLNhomTaiKhoan> listNhomTaiKhoan;
	
	public String execute() {
		memberShip = super.getMemberShip();
		QuanLyNguoiDungService nguoiDungSV = new QuanLyNguoiDungService();
		listNhomTaiKhoan = nguoiDungSV.getAllNhomTaiKhoanByMemberShip(memberShip);
		
		return SUCCESS;

	}

	public List<TBLNhomTaiKhoan> getListNhomTaiKhoan() {
		return listNhomTaiKhoan;
	}

	public void setListNhomTaiKhoan(List<TBLNhomTaiKhoan> listNhomTaiKhoan) {
		this.listNhomTaiKhoan = listNhomTaiKhoan;
	}

}
