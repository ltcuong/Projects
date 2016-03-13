package controller.quanlynguoidung;

import java.util.HashMap;

import service.GeneralService;
import service.LogService;
import service.QuanLyNguoiDungService;
import util.Const;
import util.WebUtil;
import controller.BaseAction;
import entity.TBLFunctionDetails;
import entity.TBLTaiKhoan;

public class HoSoCaNhan extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private boolean update = false;
	private int isEdit;
	private TBLTaiKhoan taikhoan;

	private String taikhoan_hoten;
	private String taikhoan_sdt;
	private String email;
	private String taikhoan_diachi;
	private String taikhoan_matkhau;
	private String taikhoan_chucvu;
	private String taikhoan_donvi;
	private String result;
	private boolean doiMatKhau;
	
	public String execute() throws Exception {
		QuanLyNguoiDungService taikhoanSv = new QuanLyNguoiDungService();		
		memberShip = super.getMemberShip();
		subAction = super.getSubAction();
		if (memberShip != null) {
			TBLFunctionDetails gr = taikhoanSv.getPrivaleOnPage(memberShip, subAction);
			if (gr != null) {
				isEdit = gr.getIsEdit();
				taikhoan = taikhoanSv.getTaiKhoanByUserName(memberShip
						.getTenDangNhap());	
			}
				
		}
		
		return SUCCESS;
	}

	public String executeUpdateHoSoCaNhan() throws Exception {
		memberShip = super.getMemberShip();
		subAction = super.getSubAction();
		QuanLyNguoiDungService taikhoanSv = new QuanLyNguoiDungService();
		LogService logSV = new LogService();
		GeneralService gv = new GeneralService();
		taikhoan = taikhoanSv.getTaiKhoanByUserName(memberShip.getTenDangNhap());
		
		//Write log - begin
		HashMap<String, String> changeData = new HashMap<String, String>();
		changeData.put(getText("log.hoten"), taikhoan.getHoTen() + "##" + taikhoan_hoten);
		changeData.put(getText("log.donvi"), taikhoan.getDonViCongTac() + "##" + taikhoan_donvi);
		changeData.put(getText("log.chucvu"), taikhoan.getChucVu() + "##" + taikhoan_chucvu);
		changeData.put(getText("log.sodienthoai"), taikhoan.getSoDienThoai() + "##" + taikhoan_sdt);
		changeData.put(getText("log.email"), taikhoan.getEmail() + "##" + email);
		changeData.put(getText("log.diachilienlac"), taikhoan.getDiaChi() + "##" + taikhoan_diachi);		
		logSV.insertLogEdit(memberShip.getTenDangNhap(), subAction, getText("log.suahosocanhan"), getText("log.hosocanhan"), changeData);
		//Write log - end		
		
		taikhoan.setHoTen(taikhoan_hoten);
		taikhoan.setDonViCongTac(taikhoan_donvi);
		taikhoan.setSoDienThoai(taikhoan_sdt);
		taikhoan.setDiaChi(taikhoan_diachi);
		taikhoan.setEmail(email);
		taikhoan.setChucVu(taikhoan_chucvu);
		memberShip.setEmail(email);
		if (doiMatKhau) {
			String prefMD5 = taikhoanSv.getValueByCode(Const.PREFIXMD5_PARM);
			String mkMoi = WebUtil.md5(prefMD5 + taikhoan_matkhau);
			taikhoan.setMatKhau(mkMoi);
		}
		try {
			gv.updateObject(taikhoan);
			result = Const.STRING_TRUE;			
		} catch (Exception e) {
			// TODO: handle exception
			result = Const.STRING_FALSE;
		}				
		return SUCCESS;
	}
	
	public String executeCheckMatKhauCu() throws Exception {
		memberShip = super.getMemberShip();
		QuanLyNguoiDungService taikhoanSv = new QuanLyNguoiDungService();
		String prefMD5 = taikhoanSv.getValueByCode(Const.PREFIXMD5_PARM);
		String mkCu = WebUtil.md5(prefMD5 + taikhoan_matkhau);
		if (taikhoanSv.checkMatKhauCuIsCorrect(memberShip.getTenDangNhap(), mkCu)) {
			result = Const.STRING_TRUE;
		} else {
			result = Const.STRING_FALSE;
		}		
		return SUCCESS;
	}
	
	public boolean isDoiMatKhau() {
		return doiMatKhau;
	}

	public void setDoiMatKhau(boolean doiMatKhau) {
		this.doiMatKhau = doiMatKhau;
	}

	public String getTaikhoan_chucvu() {
		return taikhoan_chucvu;
	}

	public void setTaikhoan_chucvu(String taikhoan_chucvu) {
		this.taikhoan_chucvu = taikhoan_chucvu;
	}

	public String getTaikhoan_donvi() {
		return taikhoan_donvi;
	}

	public void setTaikhoan_donvi(String taikhoan_donvi) {
		this.taikhoan_donvi = taikhoan_donvi;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getTaikhoan_hoten() {
		return taikhoan_hoten;
	}

	public void setTaikhoan_hoten(String taikhoan_hoten) {
		this.taikhoan_hoten = taikhoan_hoten;
	}

	public String getTaikhoan_sdt() {
		return taikhoan_sdt;
	}

	public void setTaikhoan_sdt(String taikhoan_sdt) {
		this.taikhoan_sdt = taikhoan_sdt;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTaikhoan_diachi() {
		return taikhoan_diachi;
	}

	public void setTaikhoan_diachi(String taikhoan_diachi) {
		this.taikhoan_diachi = taikhoan_diachi;
	}

	public String getTaikhoan_matkhau() {
		return taikhoan_matkhau;
	}

	public void setTaikhoan_matkhau(String taikhoan_matkhau) {
		this.taikhoan_matkhau = taikhoan_matkhau;
	}

	public TBLTaiKhoan getTaikhoan() {
		return taikhoan;
	}

	public void setTaikhoan(TBLTaiKhoan taikhoan) {
		this.taikhoan = taikhoan;
	}

	public boolean isUpdate() {
		return update;
	}

	public void setUpdate(boolean update) {
		this.update = update;
	}

	public int getIsEdit() {
		return isEdit;
	}

	public void setIsEdit(int isEdit) {
		this.isEdit = isEdit;
	}

}
