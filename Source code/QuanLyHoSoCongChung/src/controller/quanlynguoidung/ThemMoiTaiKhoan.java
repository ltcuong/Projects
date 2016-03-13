package controller.quanlynguoidung;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import service.DanhMucService;
import service.GeneralService;
import service.LogService;
import service.QuanLyNguoiDungService;
import util.Const;
import util.WebUtil;
import controller.BaseAction;
import entity.DMHuyen;
import entity.TBLFunctionDetails;
import entity.TBLNhomTaiKhoan;
import entity.TBLTaiKhoan;

public class ThemMoiTaiKhoan extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String result;
	
	private List<DMHuyen> listHuyen;
	private List<TBLNhomTaiKhoan> listNhomTaiKhoan;
	private TBLTaiKhoan taiKhoan;
	private String tenDangNhap;
	private String matKhau;
	private String hoTen;
	private String soDienThoai;
	private String email;
	private String diaChi;
	private Integer nhomID;
	private String donViCongTac;
	private String chucVu;
	private int changePass;
	private int allXa;
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
	
	
	public String executeThemThongTinCoBanTaiKhoan() {
		memberShip = super.getMemberShip();
		QuanLyNguoiDungService quanLyNguoiDungSV= new QuanLyNguoiDungService();
		GeneralService gv = new GeneralService();
		LogService logSV = new LogService();
		HashMap<String, String> newData = new HashMap<String, String>();
		try {
			if (memberShip != null) {
				taiKhoan = new TBLTaiKhoan();
				taiKhoan.setTenDangNhap(tenDangNhap);
				matKhau = quanLyNguoiDungSV.getConfigByParam(Const.PREFIXMD5_PARM).getParamValue() + matKhau;
				taiKhoan.setMatKhau(WebUtil.md5(matKhau));
				taiKhoan.setHoTen(hoTen);
				taiKhoan.setSoDienThoai(soDienThoai);
				taiKhoan.setEmail(email);
				taiKhoan.setDiaChi(diaChi);
				taiKhoan.setNhomID(nhomID);
				taiKhoan.setDonViCongTac(donViCongTac);
				taiKhoan.setChucVu(chucVu);
				taiKhoan.setLocked(0);
				taiKhoan.setUserToken(0);
				taiKhoan.setNguoiTaoTaiKhoan(memberShip.getTenDangNhap());
				taiKhoan.setNgayCapNhat(Calendar.getInstance().getTime());
				taiKhoan.setDaXoa(Const.CHUAXOA);
				taiKhoan.setAllXa(allXa);
				taiKhoan.setListHuyenQuanLy(listHuyenQuanLy);
				if (listXaQuanLy != null && !listXaQuanLy.isEmpty()) {
					taiKhoan.setListXaQuanLy(listXaQuanLy);	
				} else {
					taiKhoan.setListXaQuanLy(null);
				}
				//Log
				newData.put(getText("log.tendangnhap"), tenDangNhap);
				newData.put(getText("log.hoten"), hoTen);
				newData.put(getText("log.nhomtaikhoan"), quanLyNguoiDungSV.getTenNhomTaiKhoanByID(nhomID));
				newData.put(getText("log.email"), email);
				newData.put(getText("log.sodienthoai"), soDienThoai);
				newData.put(getText("log.diachilienlac"), diaChi);
				newData.put(getText("log.chucvu"), chucVu);
				newData.put(getText("log.donvicongtac"), donViCongTac);
				gv.createObjectString(taiKhoan);
				logSV.insertLogAdd(memberShip.getTenDangNhap(), "ThemMoiTaiKhoan", getText("log.ThemTaiKhoan"), getText("log.ThemTaiKhoan"), newData);
				result = Const.STRING_TRUE;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			result = Const.STRING_FALSE;
		}
		return SUCCESS;
	}
	
	public String executeCapNhatThongTinCoBanTaiKhoan() {
		memberShip = super.getMemberShip();
		QuanLyNguoiDungService quanLyNguoiDungSV= new QuanLyNguoiDungService();
		GeneralService gv = new GeneralService();
		LogService logSV = new LogService();
		HashMap<String, String> changeData = new HashMap<String, String>();
		try {
			if (memberShip != null) {
				taiKhoan = quanLyNguoiDungSV.getTaiKhoanByUserName(tenDangNhap);
				if (taiKhoan != null) {
					changeData.put(getText("log.hoten"), taiKhoan.getHoTen() + "##" + hoTen);
					changeData.put(getText("log.nhomtaikhoan"), quanLyNguoiDungSV.getTenNhomTaiKhoanByID(taiKhoan.getNhomID()) + "##" + quanLyNguoiDungSV.getTenNhomTaiKhoanByID(nhomID));
					changeData.put(getText("log.email"), taiKhoan.getEmail() + "##" + email);
					changeData.put(getText("log.sodienthoai"), taiKhoan.getSoDienThoai() + "##" + soDienThoai);
					changeData.put(getText("log.diachilienlac"), taiKhoan.getDiaChi() + "##" + diaChi);
					changeData.put(getText("log.chucvu"), taiKhoan.getChucVu() + "##" + chucVu);
					changeData.put(getText("log.donvicongtac"), taiKhoan.getDonViCongTac() + "##" + donViCongTac);
					if (changePass == 1) {
						matKhau = quanLyNguoiDungSV.getConfigByParam(Const.PREFIXMD5_PARM).getParamValue() + matKhau;
						taiKhoan.setMatKhau(WebUtil.md5(matKhau));
					}
					taiKhoan.setHoTen(hoTen);
					taiKhoan.setSoDienThoai(soDienThoai);
					taiKhoan.setEmail(email);
					taiKhoan.setDiaChi(diaChi);
					taiKhoan.setNhomID(nhomID);
					taiKhoan.setDonViCongTac(donViCongTac);
					taiKhoan.setChucVu(chucVu);
					taiKhoan.setAllXa(allXa);
					taiKhoan.setListHuyenQuanLy(listHuyenQuanLy);
					if (listXaQuanLy != null && !listXaQuanLy.isEmpty()) {
						taiKhoan.setListXaQuanLy(listXaQuanLy);	
					} else {
						taiKhoan.setListXaQuanLy(null);
					}
					
					gv.createObjectString(taiKhoan);
					logSV.insertLogEdit(memberShip.getTenDangNhap(), "ThemMoiTaiKhoan", getText("log.chinhsuataikhoan"), getText("log.ThemTaiKhoan"), changeData);
					result = Const.STRING_TRUE;
				} else {
					result = Const.STRING_FALSE;
				}
				
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			result = Const.STRING_FALSE;
		}
		return SUCCESS;
	}
	
	public String executeCheckTenTaiKhoanDaTonTai() {
		memberShip = super.getMemberShip();
		QuanLyNguoiDungService quanLyNguoiDungSV= new QuanLyNguoiDungService();
		try {
			taiKhoan = quanLyNguoiDungSV.getTaiKhoanByUserName(tenDangNhap);
			if (taiKhoan != null) {
				result = Const.STRING_TRUE;
			} else {
				result = Const.STRING_FALSE;
			}
		} catch (Exception e) {
			// TODO: handle exception
			result = Const.STRING_FALSE;
		}
		
		return SUCCESS;
	}
	public String executeXoaThongTinTaiKhoan() {
		memberShip = super.getMemberShip();
		QuanLyNguoiDungService quanLyNguoiDungSV= new QuanLyNguoiDungService();
		LogService logSV = new LogService();
		GeneralService gv = new GeneralService();  
		try {
			taiKhoan = quanLyNguoiDungSV.getTaiKhoanByUserName(tenDangNhap);
			if (taiKhoan != null) {
				//taiKhoan.setDaXoa(Const.DAXOA);
				//Log delete								
				String[] testArgs = {tenDangNhap};
				String content = getText("log.xoataikhoan", testArgs);
				logSV.insertLogDelete(memberShip.getTenDangNhap(), "ThemMoiTaiKhoan", content, getText("log.ThemTaiKhoan"));
				//End log
				gv.deleteObject(taiKhoan);
				result = Const.STRING_TRUE;
			} else {
				result = Const.STRING_FALSE;
			}
		} catch (Exception e) {
			// TODO: handle exception
			result = Const.STRING_FALSE;
		}
		
		return SUCCESS;
	}
	
	public String executeThayDoiTinhTrangTaiKhoan() {
		memberShip = super.getMemberShip();
		QuanLyNguoiDungService quanLyNguoiDungSV= new QuanLyNguoiDungService();
		GeneralService gv = new GeneralService();
		LogService logSV = new LogService();
		try {
			taiKhoan = quanLyNguoiDungSV.getTaiKhoanByUserName(tenDangNhap);
			if (taiKhoan != null) {
				//Log
				String[] testArgs = {tenDangNhap};
				String content = "";
				int value = 1;
				if (taiKhoan.getLocked() == Const.LOCKED) {
					content = getText("log.mokhoataikhoan", testArgs);
					value = 0;
				} else {
					content = getText("log.khoataikhoan", testArgs);
					value = 1;
				}
				logSV.insertLogUpdateLock(memberShip.getTenDangNhap(), "ThemMoiTaiKhoan", content, getText("log.ThemTaiKhoan"), value);
				
				if (taiKhoan.getLocked() == Const.UNLOCKED) {
					taiKhoan.setLocked(Const.LOCKED);
				} else {
					taiKhoan.setLocked(Const.UNLOCKED);
				}
				gv.updateObject(taiKhoan);
				result = Const.STRING_TRUE;
			} else {
				result = Const.STRING_FALSE;
			}
		} catch (Exception e) {
			// TODO: handle exception
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


	public int getAllXa() {
		return allXa;
	}


	public void setAllXa(int allXa) {
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


	public List<DMHuyen> getListHuyen() {
		return listHuyen;
	}


	public void setListHuyen(List<DMHuyen> listHuyen) {
		this.listHuyen = listHuyen;
	}


	public String getResult() {
		return result;
	}


	public void setResult(String result) {
		this.result = result;
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


	public int getChangePass() {
		return changePass;
	}


	public void setChangePass(int changePass) {
		this.changePass = changePass;
	}
}
