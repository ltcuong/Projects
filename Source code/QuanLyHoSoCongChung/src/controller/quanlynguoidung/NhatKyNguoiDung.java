package controller.quanlynguoidung;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import service.QuanLyNguoiDungService;
import util.Const;
import controller.BaseAction;
import entity.TBLFunctions;
import entity.TBLNhomTaiKhoan;
import entity.TBLTaiKhoan;

public class NhatKyNguoiDung extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private List<TBLNhomTaiKhoan> listNhomTaiKhoan;
	private List<TBLFunctions> listFunctionPhanQuyen;
	private List<TBLTaiKhoan> listTaiKhoan;
	private Integer nhomID;
	
	private String currentDate;

	
	public String execute() throws Exception {
		QuanLyNguoiDungService quanLyNguoiDungSV = new QuanLyNguoiDungService();
		memberShip = super.getMemberShip();
		listNhomTaiKhoan = quanLyNguoiDungSV.getAllNhomTaiKhoanByMemberShip(memberShip);
		listFunctionPhanQuyen = quanLyNguoiDungSV.getFunctionPhanQuyen(Const.UNLOCKED);
		SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		currentDate = df.format(Calendar.getInstance().getTime());
		
		return SUCCESS;
	}

	public String executeGetSelectNguoiDung() {
		memberShip = super.getMemberShip();
		QuanLyNguoiDungService nguoiDungSV = new QuanLyNguoiDungService();
		if (nhomID != null) {
			listTaiKhoan = nguoiDungSV.getAllTaiKhoanByNhomTaiKhoan(nhomID, memberShip);
		}
		
		return SUCCESS;
	}

	
	public List<TBLTaiKhoan> getListTaiKhoan() {
		return listTaiKhoan;
	}

	public void setListTaiKhoan(List<TBLTaiKhoan> listTaiKhoan) {
		this.listTaiKhoan = listTaiKhoan;
	}

	public Integer getNhomID() {
		return nhomID;
	}

	public void setNhomID(Integer nhomID) {
		this.nhomID = nhomID;
	}

	public String getCurrentDate() {
		return currentDate;
	}


	public void setCurrentDate(String currentDate) {
		this.currentDate = currentDate;
	}


	public List<TBLNhomTaiKhoan> getListNhomTaiKhoan() {
		return listNhomTaiKhoan;
	}


	public void setListNhomTaiKhoan(List<TBLNhomTaiKhoan> listNhomTaiKhoan) {
		this.listNhomTaiKhoan = listNhomTaiKhoan;
	}


	public List<TBLFunctions> getListFunctionPhanQuyen() {
		return listFunctionPhanQuyen;
	}


	public void setListFunctionPhanQuyen(
			List<TBLFunctions> listFunctionPhanQuyen) {
		this.listFunctionPhanQuyen = listFunctionPhanQuyen;
	}

	
	
}
