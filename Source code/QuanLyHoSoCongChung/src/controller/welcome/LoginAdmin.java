package controller.welcome;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import service.DanhMucService;
import service.GeneralService;
import service.LogService;
import service.QuanLyNguoiDungService;
import util.Const;
import util.WebUtil;
import authentication.MemberShip;
import controller.BaseAction;
import entity.DMHuyen;
import entity.DMXa;
import entity.TBLTaiKhoan;
import entity.TBLThamSoHeThong;

public class LoginAdmin extends BaseAction {

	private String taikhoan_dangnhap;
	private String taikhoan_matkhau;
	private boolean update = false;
	private String url = "quanlynguoidung/AdminHome";
	private String result;
	private String type;
	
	private static final long serialVersionUID = 1L;

	public String execute() {
		
		
		return SUCCESS;
	}

	public String executeCheckLoginAdmin() {
		// getCookieLanguage();
		if (update) {
			QuanLyNguoiDungService quanLyNguoiDungSV = new QuanLyNguoiDungService();
			GeneralService genSV = new GeneralService();
			LogService logSV = new LogService();
			TBLTaiKhoan user = quanLyNguoiDungSV.getTaiKhoanByUserName(taikhoan_dangnhap);
			TBLThamSoHeThong conf = quanLyNguoiDungSV.getConfigByParam(
					Const.PREFIXMD5_PARM);
			TBLThamSoHeThong confTinh = quanLyNguoiDungSV.getConfigByParam(
					Const.MASOTINH_PARM);
			
			String prefMd5 = "";
			if (conf != null) {
				prefMd5 = conf.getParamValue();
			}

			if (taikhoan_matkhau != null) {
				taikhoan_matkhau = prefMd5 + taikhoan_matkhau;
				taikhoan_matkhau = WebUtil.md5(taikhoan_matkhau);
			}
			if (user != null && user.getMatKhau().equalsIgnoreCase(taikhoan_matkhau)) {
				//Write Log login
								
				if (user.getLocked() == Const.LOCKED) {
					result = "Lock";
					logSV.insertLogView(user.getTenDangNhap(), "LoginAdmin", "Đăng nhập thất bại", "Đăng nhập");
				} else if (user.getNhomTaiKhoan() != null && user.getNhomTaiKhoan().getLocked() == Const.LOCKED){
					result = "LockNhom";
					logSV.insertLogView(user.getTenDangNhap(), "LoginAdmin", "Đăng nhập thất bại", "Đăng nhập");
				} else {
					if (user.getUserToken() == 1 && user.getLastTokenOnline() != null) {						
						double lastSecondOnline = WebUtil.diff2HourBySecond(user.getLastTokenOnline(), Calendar.getInstance().getTime());
						if (lastSecondOnline > 0.5) {
							result = "Token";
							logSV.insertLogView(user.getTenDangNhap(), "LoginAdmin", "Đăng nhập thất bại", "Đăng nhập");
							return SUCCESS;
						}						
					}
					MemberShip memberShip = super.getMemberShip();
					memberShip.setTenDangNhap(user.getTenDangNhap());
					memberShip.setDonViCongTac(user.getDonViCongTac());
					memberShip.setChucVu(user.getChucVu());
					if (user.getTenDangNhap().equals(Const.ADMIN_PRIVALE)) {
						memberShip.setRole(Const.ADMIN_PRIVALE);
					} else {
						memberShip.setRole(Const.USER_PRIVALE);
					}
					if (user.getNhomID() != null) {
						memberShip.setNhomID(user.getNhomID());
					}
					memberShip.setHoTen(user.getHoTen());
					memberShip.setTinhQuanLyID(Integer.parseInt(confTinh.getParamValue()));
					memberShip.setIsTokenOnline(user.getUserToken());
					memberShip.setAllXa(user.getAllXa());
					//List huyenID
					String listHuyenStr = user.getListHuyenQuanLy();
					if (listHuyenStr != null && !listHuyenStr.isEmpty()) {
						String[] huyenArr = listHuyenStr.split(",");
						List<Integer> listHuyenID = new ArrayList<>();
						if (huyenArr.length == 1) {
							Integer huyenID = Integer.parseInt(huyenArr[0]);
							listHuyenID.add(huyenID);
						} else {
							for (int i = 0; i < huyenArr.length; i++) {
								if (!huyenArr[i].trim().isEmpty()) {
									Integer huyenID = Integer.parseInt(huyenArr[i]);
									listHuyenID.add(huyenID);
								}
							}
						}
						
						memberShip.setListHuyenQuanLy(listHuyenID);
					} else {
						memberShip.setListHuyenQuanLy(null);
					}
					//List xaID
					String listXaStr = user.getListXaQuanLy();
					if (listXaStr != null && !listXaStr.isEmpty()) {
						String[] xaArr = listXaStr.split(",");
						List<Integer> listXaID = new ArrayList<>();
						for (int i = 0; i < xaArr.length; i++) {
							if (!xaArr[i].trim().isEmpty()) {
								Integer xaID = Integer.parseInt(xaArr[i]);
								listXaID.add(xaID);
							}
						}
						memberShip.setListXaQuanLy(listXaID);
					} else {
						memberShip.setListXaQuanLy(null);
					}
					
					
					user.setLastLogin(Calendar.getInstance().getTime());
					
					HttpSession httpSession = this.servletRequest.getSession();
					Const.memberOnline.add(httpSession.getId() + "@" + user.getTenDangNhap());
					if (checkOnline(user.getTenDangNhap())) {
						setAccountToListOffline(user.getTenDangNhap());
					}
					genSV.saveOrUpdate(user);				
					
					result = Const.STRING_TRUE;					
					logSV.insertLogView(user.getTenDangNhap(), "LoginAdmin", getText("log.dangnhapthanhcong"), getText("log.dangnhap"));
				}
				
			} else {
				result = Const.STRING_FALSE;
			}
		}

		return SUCCESS;
	}
	
	
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public boolean isUpdate() {
		return update;
	}

	public void setUpdate(boolean update) {
		this.update = update;
	}

	public String getTaikhoan_dangnhap() {
		return taikhoan_dangnhap;
	}

	public void setTaikhoan_dangnhap(String taikhoan_dangnhap) {
		this.taikhoan_dangnhap = taikhoan_dangnhap;
	}

	public String getTaikhoan_matkhau() {
		return taikhoan_matkhau;
	}

	public void setTaikhoan_matkhau(String taikhoan_matkhau) {
		this.taikhoan_matkhau = taikhoan_matkhau;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}
