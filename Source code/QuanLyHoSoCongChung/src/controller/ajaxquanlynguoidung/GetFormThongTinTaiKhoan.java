package controller.ajaxquanlynguoidung;

import java.util.List;

import service.QuanLyNguoiDungService;
import controller.BaseAction;
import entity.TBLNhomTaiKhoan;
import entity.TBLTaiKhoan;

public class GetFormThongTinTaiKhoan extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String tenDangNhap;
	private List<TBLNhomTaiKhoan> listNhomTaiKhoan;
	private TBLTaiKhoan taiKhoan;
	
	public String execute() {
		QuanLyNguoiDungService nguoiDungSV = new QuanLyNguoiDungService();
		QuanLyNguoiDungService quanLyNguoiDungSV= new QuanLyNguoiDungService();
		listNhomTaiKhoan = quanLyNguoiDungSV.getAllNhomTaiKhoan();
		taiKhoan = nguoiDungSV.getTaiKhoanByUserName(tenDangNhap);
		return SUCCESS;

	}

	public String getTenDangNhap() {
		return tenDangNhap;
	}

	public void setTenDangNhap(String tenDangNhap) {
		this.tenDangNhap = tenDangNhap;
	}

	public List<TBLNhomTaiKhoan> getListNhomTaiKhoan() {
		return listNhomTaiKhoan;
	}

	public void setListNhomTaiKhoan(List<TBLNhomTaiKhoan> listNhomTaiKhoan) {
		this.listNhomTaiKhoan = listNhomTaiKhoan;
	}

	public TBLTaiKhoan getTaiKhoan() {
		return taiKhoan;
	}

	public void setTaiKhoan(TBLTaiKhoan taiKhoan) {
		this.taiKhoan = taiKhoan;
	}


}
