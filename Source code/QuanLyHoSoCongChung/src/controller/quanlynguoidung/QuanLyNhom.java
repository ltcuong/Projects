package controller.quanlynguoidung;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import service.GeneralService;
import service.LogService;
import service.QuanLyNguoiDungService;
import util.Const;
import controller.BaseAction;
import entity.TBLFunctionDetails;
import entity.TBLFunctions;
import entity.TBLNhomTaiKhoan;

public class QuanLyNhom extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private boolean update = false;
	private String result;
	private Integer nhomID;
	private String nhomMa;
	private String nhomTen;
	private Integer nhomChaID;
	
	private int isEdit;
	private int isAdd;
	private int isDelete;
	
	private List<TBLNhomTaiKhoan> listNhomTaiKhoan;
	
	
	public String execute() throws Exception {		
		QuanLyNguoiDungService quanLyNguoiDungSV = new QuanLyNguoiDungService();
		memberShip = super.getMemberShip();
		subAction = super.getSubAction();
		if (memberShip != null) {
			listNhomTaiKhoan = quanLyNguoiDungSV.getAllNhomTaiKhoanByMemberShip(memberShip);
			//Phan quyen
			TBLFunctionDetails gr = quanLyNguoiDungSV.getPrivaleOnPage(memberShip, subAction);
			if (gr != null) {
				isEdit = gr.getIsEdit();
				isAdd = gr.getIsAdd();
				isDelete = gr.getIsDelete();
			}
		}
		return SUCCESS;
	}

	
	
	public String executeCapNhatThongTinNhomTaiKhoan() {
		memberShip = super.getMemberShip();
		subAction = super.getSubAction();
		try {
			TBLNhomTaiKhoan nhomTaiKhoan = null;
			GeneralService gs = new GeneralService();
			QuanLyNguoiDungService quanLyNguoiDungSV = new QuanLyNguoiDungService();
			if(nhomID != null) {			
				nhomTaiKhoan = quanLyNguoiDungSV.getNhomTaiKhoanByID(nhomID);
			} else {
				nhomTaiKhoan = new TBLNhomTaiKhoan();					
			}
			//Create log
			LogService logSV = new LogService();
			HashMap<String, String> changeData = new HashMap<String, String>();
			HashMap<String, String> newData = new HashMap<String, String>();
			if(nhomID != null) {	
				String oldContent = ""; String newContent = "";
				if (nhomTaiKhoan.getNhomChaID() == null) {
					oldContent = "";
				} else {
					oldContent = nhomTaiKhoan.getNhomCha().getNhomTen();
				}
				if (nhomChaID != null && nhomChaID.intValue() == 0 ) {
					newContent = "";
				} else {
					newContent = quanLyNguoiDungSV.getTenNhomTaiKhoanByID(nhomChaID);
				}
				changeData.put(getText("log.nhomcha"), oldContent + "##" + newContent);
				changeData.put(getText("log.manhom"), nhomTaiKhoan.getNhomMa() + "##" + nhomMa);
				changeData.put(getText("log.tenhom"), nhomTaiKhoan.getNhomTen() + "##" + nhomTen);			
			} else {
				//New data
				if (nhomChaID != null && nhomChaID.intValue() != 0) {
					newData.put(getText("log.nhomcha"), quanLyNguoiDungSV.getTenNhomTaiKhoanByID(nhomChaID));
				} else {
					newData.put(getText("log.nhomcha"), "");
				}			
				newData.put(getText("log.manhom"), nhomMa);
				newData.put(getText("log.tenhom"), nhomTen);
			}
			//End log
			
			nhomTaiKhoan.setNhomMa(nhomMa);
			nhomTaiKhoan.setNhomTen(nhomTen);
			if (nhomChaID != null && nhomChaID.intValue() != 0) {
				nhomTaiKhoan.setNhomChaID(nhomChaID);
			}
			if (nhomID != null) {
				gs.updateObject(nhomTaiKhoan);
				logSV.insertLogEdit(memberShip.getTenDangNhap(), subAction, getText("log.chinhsuanhom"), getText("log.quanlynhom"), changeData);
			} else {
				nhomTaiKhoan.setNgayCapNhat(Calendar.getInstance().getTime());
				nhomTaiKhoan.setLocked(Const.UNLOCKED);
				nhomID = gs.createObject(nhomTaiKhoan);
				logSV.insertLogAdd(memberShip.getTenDangNhap(), subAction, getText("log.capnhatnhom"), getText("log.quanlynhom"), newData);
				List<TBLFunctions> listFuntion = quanLyNguoiDungSV.getFunctionPhanQuyen(Const.UNLOCKED);
				if (listFuntion != null) {
					TBLFunctionDetails groupRole = null;
					for (TBLFunctions fn : listFuntion) {
						groupRole = new TBLFunctionDetails();
						groupRole.setFuncID(fn.getFuncID());
						groupRole.setNhomID(nhomID);
						groupRole.setIsAdd(0);
						groupRole.setIsDelete(0);
						groupRole.setIsEdit(0);
						groupRole.setIsView(0);
						gs.createObject(groupRole);
					}
				}
			}
			result = Const.STRING_TRUE;
		} catch (Exception e) {
			// TODO: handle exception
			result = Const.STRING_FALSE;
			e.printStackTrace();
		}
		
		return SUCCESS;
		
	}
	
	public String executeDeleteNhomTaiKhoan() {
		memberShip = super.getMemberShip();
		subAction = super.getSubAction();
		GeneralService sv = new GeneralService();
		LogService logSV = new LogService();
		QuanLyNguoiDungService quanLyNguoiDungSV = new QuanLyNguoiDungService();
		TBLNhomTaiKhoan nhomTaiKhoan = null;
		try {
			if (nhomID != null) {
				nhomTaiKhoan = quanLyNguoiDungSV.getNhomTaiKhoanByID(nhomID);
				if (nhomTaiKhoan != null) {
					//Log delete								
					String[] testArgs = {quanLyNguoiDungSV.getTenNhomTaiKhoanByID(nhomID)};
					String content = getText("log.xoanhomtaikhoan", testArgs);
					logSV.insertLogDelete(memberShip.getTenDangNhap(), subAction, content, getText("log.quanlynhom"));
					//End log				
					
					sv.deleteObject(nhomTaiKhoan);	
					result = Const.STRING_TRUE;
				} else {
					result = Const.STRING_FALSE;
				}
			} else {
				result = Const.STRING_FALSE;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}					
		return SUCCESS;
	}
	
	public String executeUpdateStatusNhomTaiKhoan() {
		memberShip = super.getMemberShip();
		subAction = super.getSubAction();
		GeneralService sv = new GeneralService();
		LogService logSV = new LogService();
		QuanLyNguoiDungService quanLyNguoiDungSV = new QuanLyNguoiDungService();
		TBLNhomTaiKhoan nhomTaiKhoan = null;
		if (nhomID != null) {
			try {
				nhomTaiKhoan = quanLyNguoiDungSV.getNhomTaiKhoanByID(nhomID);
				//Log
				String[] testArgs = {quanLyNguoiDungSV.getTenNhomTaiKhoanByID(nhomID)};
				String content = "";
				int value = 1;
				if (nhomTaiKhoan.getLocked() == Const.LOCKED) {
					content = getText("log.mokhoanhomtaikhoan", testArgs);
					value = 0;
				} else {
					content = getText("log.khoanhomtaikhoan", testArgs);
					value = 1;
				}
				logSV.insertLogUpdateLock(memberShip.getTenDangNhap(), subAction, content, getText("log.quanlynhom"), value);
				
				if (nhomTaiKhoan.getLocked() == Const.LOCKED) {
					nhomTaiKhoan.setLocked(Const.UNLOCKED);
				} else {
					nhomTaiKhoan.setLocked(Const.LOCKED);
				}
				sv.updateObject(nhomTaiKhoan);
				result = Const.STRING_TRUE;
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				result = Const.STRING_FALSE;
			}			
		}		
		return SUCCESS;
	}
	
	public String executeGetListDanhSachNhom() {
		memberShip = super.getMemberShip();
		subAction = super.getSubAction();
		QuanLyNguoiDungService quanLyNguoiDungSV = new QuanLyNguoiDungService();
		listNhomTaiKhoan = quanLyNguoiDungSV.getAllNhomTaiKhoanByMemberShip(memberShip);
		TBLFunctionDetails gr = quanLyNguoiDungSV.getPrivaleOnPage(memberShip, subAction);
		if (gr != null) {
			isEdit = gr.getIsEdit();
			isAdd = gr.getIsAdd();
			isDelete = gr.getIsDelete();
		}
		return SUCCESS;
	}
		
	public String executeCheckExistsMaNhom() {
		QuanLyNguoiDungService quanLyNguoiDungSV = new QuanLyNguoiDungService();
		boolean resultCheck = quanLyNguoiDungSV.checkExistsMaNhomTaiKhoan(nhomMa, nhomID);
		if (resultCheck) {
			result = Const.STRING_TRUE;
		} else {
			result = Const.STRING_FALSE;
		}
		return SUCCESS;	
	}
	
	public String executeCheckExistsTenNhom() {
		QuanLyNguoiDungService quanLyNguoiDungSV = new QuanLyNguoiDungService();
		boolean resultCheck = quanLyNguoiDungSV.checkExistsTenNhomTaiKhoan(nhomTen, nhomID);
		if (resultCheck) {
			result = Const.STRING_TRUE;
		} else {
			result = Const.STRING_FALSE;
		}
		return SUCCESS;	
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


	public Integer getNhomChaID() {
		return nhomChaID;
	}

	public void setNhomChaID(Integer nhomChaID) {
		this.nhomChaID = nhomChaID;
	}

	public boolean isUpdate() {
		return update;
	}

	public void setUpdate(boolean update) {
		this.update = update;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public Integer getNhomID() {
		return nhomID;
	}

	public void setNhomID(Integer nhomID) {
		this.nhomID = nhomID;
	}

	public String getNhomMa() {
		return nhomMa;
	}

	public void setNhomMa(String nhomMa) {
		this.nhomMa = nhomMa;
	}

	public String getNhomTen() {
		return nhomTen;
	}

	public void setNhomTen(String nhomTen) {
		this.nhomTen = nhomTen;
	}

	public List<TBLNhomTaiKhoan> getListNhomTaiKhoan() {
		return listNhomTaiKhoan;
	}

	public void setListNhomTaiKhoan(List<TBLNhomTaiKhoan> listNhomTaiKhoan) {
		this.listNhomTaiKhoan = listNhomTaiKhoan;
	}
}
