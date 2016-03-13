package controller.quanlynguoidung;

import java.util.ArrayList;
import java.util.List;

import service.GeneralService;
import service.LogService;
import service.QuanLyNguoiDungService;
import util.Const;
import controller.BaseAction;
import entity.TBLFunctionDetails;
import entity.TBLNhomTaiKhoan;

public class PhanQuyenChucNang extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private boolean update = false;
	private Integer nhomID;
	private String module;
	private List<TBLFunctionDetails> listGroupRole;
	private List<TBLNhomTaiKhoan> listNhomTaiKhoan;
	private String column;
	private int status;
	private int index;
	private String result;
	private int isEdit;

	public String execute() throws Exception {
		memberShip = super.getMemberShip();
		subAction = super.getSubAction();
		QuanLyNguoiDungService quanLyNguoiDungSV = new QuanLyNguoiDungService();
		listNhomTaiKhoan = quanLyNguoiDungSV.getAllNhomTaiKhoan();
		TBLFunctionDetails gr = quanLyNguoiDungSV.getPrivaleOnPage(memberShip, subAction);
		isEdit = gr.getIsEdit();
		return SUCCESS;
	}

	public String executeGetListDanhSachPhanQuyen() throws Exception {

		QuanLyNguoiDungService quanLyNguoiDungSV = new QuanLyNguoiDungService();
		if (module != null && nhomID != null) {
			listGroupRole = new ArrayList<TBLFunctionDetails>();
			listGroupRole = quanLyNguoiDungSV.getGroupRoleByFunctionModule(
					Const.UNLOCKED, nhomID, module);
			List<TBLFunctionDetails> listGroupBackup = new ArrayList<TBLFunctionDetails>();
			for (TBLFunctionDetails gr : listGroupRole) {
				TBLFunctionDetails groupRole = new TBLFunctionDetails();
				groupRole.setFuncID(gr.getFuncID());
				groupRole.setFunctions(gr.getFunctions());
				groupRole.setNhomID(gr.getNhomID());
				groupRole.setIsAdd(gr.getIsAdd());
				groupRole.setIsDelete(gr.getIsDelete());
				groupRole.setIsEdit(gr.getIsEdit());
				groupRole.setIsView(gr.getIsView());
				groupRole.setLocked(gr.getLocked());
				groupRole.setRoleID(gr.getRoleID());
				listGroupBackup.add(groupRole);
			}
			session.remove("PHANQUYENCHUCNANG");
			session.put("PHANQUYENCHUCNANG", listGroupBackup);
		}
		return SUCCESS;
	}

	public String executeChangeStatusPhanQuyen() {
		@SuppressWarnings("unchecked")
		List<TBLFunctionDetails> lsGroupRole = (List<TBLFunctionDetails>) session
				.get("PHANQUYENCHUCNANG");
		if (lsGroupRole != null) {
			if (column.equals("View")) {
				lsGroupRole.get(index).setIsView(status);
			} else if (column.equals("Add")) {
				lsGroupRole.get(index).setIsAdd(status);
			} else if (column.equals("Edit")) {
				lsGroupRole.get(index).setIsEdit(status);
			} else if (column.equals("Delete")) {
				lsGroupRole.get(index).setIsDelete(status);
			}
		}
		return SUCCESS;
	}

	public String executeUpdateStatusPhanQuyen() {
		memberShip = super.getMemberShip();
		LogService logSV = new LogService();
		try {
			@SuppressWarnings("unchecked")
			List<TBLFunctionDetails> lsGroupRole = (List<TBLFunctionDetails>) session
					.get("PHANQUYENCHUCNANG");
			QuanLyNguoiDungService phanQuyenSV = new QuanLyNguoiDungService();
			GeneralService gv = new GeneralService();
			if (lsGroupRole != null) {
				for (TBLFunctionDetails groupRole : lsGroupRole) {
					gv.mergeObject(groupRole);
				}
				result = Const.STRING_TRUE;
				nhomID = lsGroupRole.get(0).getNhomID();
				module = lsGroupRole.get(0).getFunctions().getModule();
				listGroupRole = phanQuyenSV.getGroupRoleByFunctionModule(
						Const.UNLOCKED, nhomID, module);
				List<TBLFunctionDetails> listGroupBackup = new ArrayList<TBLFunctionDetails>();
				for (TBLFunctionDetails gr : listGroupRole) {
					TBLFunctionDetails groupRole = new TBLFunctionDetails();
					groupRole.setFuncID(gr.getFuncID());
					groupRole.setFunctions(gr.getFunctions());
					groupRole.setNhomID(gr.getNhomID());
					groupRole.setIsAdd(gr.getIsAdd());
					groupRole.setIsDelete(gr.getIsDelete());
					groupRole.setIsEdit(gr.getIsEdit());
					groupRole.setIsView(gr.getIsView());
					groupRole.setLocked(gr.getLocked());
					groupRole.setRoleID(gr.getRoleID());
					listGroupBackup.add(groupRole);
				}
				session.remove("PHANQUYENCHUCNANG");
				session.put("PHANQUYENCHUCNANG", listGroupBackup);
				logSV.insertLogUpdateLock(memberShip.getTenDangNhap(), "PhanQuyenChucNang", getText("log.phanquyenthanhcong"), getText("log.phanquyenchucnang"), 1);
				
			}
		} catch (Exception e) {
			// TODO: handle exception
			logSV.insertLogUpdateLock(memberShip.getTenDangNhap(), "PhanQuyenChucNang", getText("log.phanquyenthatbai"), getText("log.phanquyenchucnang"), 1);
			e.printStackTrace();
		}
		return SUCCESS;
	}

	public boolean isUpdate() {
		return update;
	}

	public void setUpdate(boolean update) {
		this.update = update;
	}

	public Integer getNhomID() {
		return nhomID;
	}

	public void setNhomID(Integer nhomID) {
		this.nhomID = nhomID;
	}

	public String getModule() {
		return module;
	}

	public void setModule(String module) {
		this.module = module;
	}

	public List<TBLFunctionDetails> getListGroupRole() {
		return listGroupRole;
	}

	public void setListGroupRole(List<TBLFunctionDetails> listGroupRole) {
		this.listGroupRole = listGroupRole;
	}

	public List<TBLNhomTaiKhoan> getListNhomTaiKhoan() {
		return listNhomTaiKhoan;
	}

	public void setListNhomTaiKhoan(List<TBLNhomTaiKhoan> listNhomTaiKhoan) {
		this.listNhomTaiKhoan = listNhomTaiKhoan;
	}

	public String getColumn() {
		return column;
	}

	public void setColumn(String column) {
		this.column = column;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public int getIsEdit() {
		return isEdit;
	}

	public void setIsEdit(int isEdit) {
		this.isEdit = isEdit;
	}

}
