package controller.quanlynguoidung;

import java.util.List;

import service.DanhMucService;
import service.QuanLyNguoiDungService;
import util.Const;
import controller.BaseAction;
import entity.DMHuyen;
import entity.TBLFunctionDetails;
import entity.TBLNhomTaiKhoan;
import entity.TBLTaiKhoan;

public class ChinhSuaTaiKhoan extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String result;
	
	private List<DMHuyen> listHuyen;
	private List<TBLNhomTaiKhoan> listNhomTaiKhoan;
	private TBLTaiKhoan taiKhoan;
	private String tenDangNhap;
	private Integer allXa;
	private String listHuyenQuanLy;
	private String listXaQuanLy;
	
	private int isEdit;
	private int isAdd;
	private int isDelete;
	
	public String execute() throws Exception {
		memberShip = super.getMemberShip();
		subAction = super.getSubAction();
		if (memberShip != null) {
			QuanLyNguoiDungService nguoiDungSV= new QuanLyNguoiDungService();
			DanhMucService danhMucSV = new DanhMucService();
			listNhomTaiKhoan = nguoiDungSV.getAllNhomTaiKhoanByMemberShip(memberShip);
			listHuyen = danhMucSV.getAllHuyenByMemberShip(Const.UNLOCKED, memberShip);
			if (tenDangNhap != null) {
				taiKhoan = nguoiDungSV.getTaiKhoanByUserName(tenDangNhap);
				listHuyenQuanLy = taiKhoan.getListHuyenQuanLy();
				listXaQuanLy = taiKhoan.getListXaQuanLy();
				allXa = taiKhoan.getAllXa();
			}
			
			//Phan quyen 
			TBLFunctionDetails gr = nguoiDungSV.getPrivaleOnPage(memberShip, subAction);
			if (gr != null) {
				isEdit = gr.getIsEdit();
				isAdd = gr.getIsAdd();
				isDelete = gr.getIsDelete();
			}
		}
		return SUCCESS;
	}

	public Integer getAllXa() {
		return allXa;
	}

	public void setAllXa(Integer allXa) {
		this.allXa = allXa;
	}

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

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public List<DMHuyen> getListHuyen() {
		return listHuyen;
	}

	public void setListHuyen(List<DMHuyen> listHuyen) {
		this.listHuyen = listHuyen;
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

	public String getTenDangNhap() {
		return tenDangNhap;
	}

	public void setTenDangNhap(String tenDangNhap) {
		this.tenDangNhap = tenDangNhap;
	}

	public int getIsEdit() {
		return isEdit;
	}

	public void setIsEdit(int isEdit) {
		this.isEdit = isEdit;
	}

	public int getIsAdd() {
		return isAdd;
	}

	public void setIsAdd(int isAdd) {
		this.isAdd = isAdd;
	}

	public int getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}
	
}
