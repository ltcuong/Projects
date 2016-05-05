package controller.ajaxhopdong;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import service.DanhMucService;
import util.Const;
import controller.BaseAction;
import entity.HDHopDongTam;
import entity.TSTaiSan;
import entity.TSTauBien;

public class GetFormCapNhatTaiSanTauBien extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String result;
	private Integer taiSanID;
	private Integer loaiTaiSanID;
	private String tenPhieuTaiSan;
	private String tenKhoaTaiSan;
	private String ghiChu;
	private int benSoHuuTaiSan;
	//
	private Integer taiSanTauBienID;
	private String tenTau;
	private String loaiTau;
	private Integer namDong;
	private String noiDong;
	private Double chieuDaiLonNhat;
	private Double chieuRongLonNhat;
	private Double chieuCaoMan;
	private String mucNuocToiDa;
	private String dungTichToanThan;
	private String dungTichThucDung;
	private String trongTai;
	private String congSuatMayChinh;
	private String cangDangKy;
	private String ngayDangKy;
	private String coQuanDangKiem;
	private String giayChungNhanDangKyTauSo;
	private String noiCapGiayChungNhanDangKyTauSo;
	private String ngayCapGiayChungNhanDangKyTauSo;
	
	public String execute() {
		
		return SUCCESS;
	}

	public String executeCapNhatThongTinTaiSanTauBien() {
		HDHopDongTam hopDongTam = (HDHopDongTam) session.get(Const.SESSION_THONGTIN_HOPDONG);
		SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
		DanhMucService danhMucSV = new DanhMucService();
		if (hopDongTam != null) {
			//Thong tin chung
			TSTaiSan taiSan = new TSTaiSan();
			List<TSTaiSan> listTaiSan = null;
			if (benSoHuuTaiSan == 1) {
				listTaiSan = hopDongTam.getListTaiSanBenA();
			} else {
				listTaiSan = hopDongTam.getListTaiSanBenB();
			}
			taiSan.setLoaiTaiSanID(loaiTaiSanID);
			taiSan.setLoaiTaiSan(danhMucSV.getAllLoaiTaiSanByID(loaiTaiSanID));
			taiSan.setTenPhieuTaiSan(tenPhieuTaiSan);
			taiSan.setTenKhoaTaiSan(tenKhoaTaiSan);
			taiSan.setGhiChu(ghiChu);
			//Thong tin chi tiet
			TSTauBien tauBien = new TSTauBien();
			tauBien.setTenTau(tenTau);
			tauBien.setLoaiTau(loaiTau);
			tauBien.setNamDong(namDong);
			tauBien.setNoiDong(noiDong);
			tauBien.setChieuDaiLonNhat(chieuDaiLonNhat);
			tauBien.setChieuRongLonNhat(chieuRongLonNhat);
			tauBien.setChieuCaoMan(chieuCaoMan);
			tauBien.setMucNuocToiDa(mucNuocToiDa);
			tauBien.setDungTichThucDung(dungTichThucDung);
			tauBien.setDungTichToanThan(dungTichToanThan);
			tauBien.setTrongTai(trongTai);
			tauBien.setCongSuatMayChinh(congSuatMayChinh);
			tauBien.setCangDangKy(cangDangKy);
			Date d1 = null;
			if (ngayDangKy != null && !ngayDangKy.isEmpty()) {
				try {
					d1 = df.parse(ngayDangKy);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			tauBien.setNgayDangKy(d1);
			tauBien.setCoQuanDangKiem(coQuanDangKiem);
			tauBien.setGiayChungNhanDangKyTauSo(giayChungNhanDangKyTauSo);
			tauBien.setNoiCapGiayChungNhanDangKyTauSo(noiCapGiayChungNhanDangKyTauSo);
			Date d2 = null;
			if (ngayCapGiayChungNhanDangKyTauSo != null && !ngayCapGiayChungNhanDangKyTauSo.isEmpty()) {
				try {
					d2 = df.parse(ngayCapGiayChungNhanDangKyTauSo);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			tauBien.setNgayDangKy(d1);
			tauBien.setNgayCapGiayChungNhanDangKyTauSo(d2);
			
			taiSan.setTaiSanTauBien(tauBien);
			tauBien.setTaiSan(taiSan);
			
			if (listTaiSan == null) {
				listTaiSan = new ArrayList<>();
			}
			listTaiSan.add(taiSan);	
			if (benSoHuuTaiSan == 1) {
				hopDongTam.setListTaiSanBenA(listTaiSan);
			} else {
				hopDongTam.setListTaiSanBenB(listTaiSan);
			}
			session.remove(Const.SESSION_THONGTIN_HOPDONG);
			session.put(Const.SESSION_THONGTIN_HOPDONG, hopDongTam);
			result = Const.STRING_TRUE;
		} else {
			result = Const.STRING_FALSE;
		}
		return SUCCESS;
	}

	public int getBenSoHuuTaiSan() {
		return benSoHuuTaiSan;
	}

	public void setBenSoHuuTaiSan(int benSoHuuTaiSan) {
		this.benSoHuuTaiSan = benSoHuuTaiSan;
	}

	public String getGhiChu() {
		return ghiChu;
	}

	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}

	public String getTenKhoaTaiSan() {
		return tenKhoaTaiSan;
	}

	public void setTenKhoaTaiSan(String tenKhoaTaiSan) {
		this.tenKhoaTaiSan = tenKhoaTaiSan;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public Integer getTaiSanID() {
		return taiSanID;
	}

	public void setTaiSanID(Integer taiSanID) {
		this.taiSanID = taiSanID;
	}

	public Integer getLoaiTaiSanID() {
		return loaiTaiSanID;
	}

	public void setLoaiTaiSanID(Integer loaiTaiSanID) {
		this.loaiTaiSanID = loaiTaiSanID;
	}

	public String getTenPhieuTaiSan() {
		return tenPhieuTaiSan;
	}

	public void setTenPhieuTaiSan(String tenPhieuTaiSan) {
		this.tenPhieuTaiSan = tenPhieuTaiSan;
	}

	public Integer getTaiSanTauBienID() {
		return taiSanTauBienID;
	}

	public void setTaiSanTauBienID(Integer taiSanTauBienID) {
		this.taiSanTauBienID = taiSanTauBienID;
	}

	public String getTenTau() {
		return tenTau;
	}

	public void setTenTau(String tenTau) {
		this.tenTau = tenTau;
	}

	public String getLoaiTau() {
		return loaiTau;
	}

	public void setLoaiTau(String loaiTau) {
		this.loaiTau = loaiTau;
	}

	public Integer getNamDong() {
		return namDong;
	}

	public void setNamDong(Integer namDong) {
		this.namDong = namDong;
	}

	public String getNoiDong() {
		return noiDong;
	}

	public void setNoiDong(String noiDong) {
		this.noiDong = noiDong;
	}

	public Double getChieuDaiLonNhat() {
		return chieuDaiLonNhat;
	}

	public void setChieuDaiLonNhat(Double chieuDaiLonNhat) {
		this.chieuDaiLonNhat = chieuDaiLonNhat;
	}

	public Double getChieuRongLonNhat() {
		return chieuRongLonNhat;
	}

	public void setChieuRongLonNhat(Double chieuRongLonNhat) {
		this.chieuRongLonNhat = chieuRongLonNhat;
	}

	public Double getChieuCaoMan() {
		return chieuCaoMan;
	}

	public void setChieuCaoMan(Double chieuCaoMan) {
		this.chieuCaoMan = chieuCaoMan;
	}

	public String getMucNuocToiDa() {
		return mucNuocToiDa;
	}

	public void setMucNuocToiDa(String mucNuocToiDa) {
		this.mucNuocToiDa = mucNuocToiDa;
	}

	public String getDungTichToanThan() {
		return dungTichToanThan;
	}

	public void setDungTichToanThan(String dungTichToanThan) {
		this.dungTichToanThan = dungTichToanThan;
	}

	public String getDungTichThucDung() {
		return dungTichThucDung;
	}

	public void setDungTichThucDung(String dungTichThucDung) {
		this.dungTichThucDung = dungTichThucDung;
	}

	public String getTrongTai() {
		return trongTai;
	}

	public void setTrongTai(String trongTai) {
		this.trongTai = trongTai;
	}

	public String getCongSuatMayChinh() {
		return congSuatMayChinh;
	}

	public void setCongSuatMayChinh(String congSuatMayChinh) {
		this.congSuatMayChinh = congSuatMayChinh;
	}

	public String getCangDangKy() {
		return cangDangKy;
	}

	public void setCangDangKy(String cangDangKy) {
		this.cangDangKy = cangDangKy;
	}

	public String getNgayDangKy() {
		return ngayDangKy;
	}

	public void setNgayDangKy(String ngayDangKy) {
		this.ngayDangKy = ngayDangKy;
	}

	public String getCoQuanDangKiem() {
		return coQuanDangKiem;
	}

	public void setCoQuanDangKiem(String coQuanDangKiem) {
		this.coQuanDangKiem = coQuanDangKiem;
	}

	public String getGiayChungNhanDangKyTauSo() {
		return giayChungNhanDangKyTauSo;
	}

	public void setGiayChungNhanDangKyTauSo(String giayChungNhanDangKyTauSo) {
		this.giayChungNhanDangKyTauSo = giayChungNhanDangKyTauSo;
	}

	public String getNoiCapGiayChungNhanDangKyTauSo() {
		return noiCapGiayChungNhanDangKyTauSo;
	}

	public void setNoiCapGiayChungNhanDangKyTauSo(
			String noiCapGiayChungNhanDangKyTauSo) {
		this.noiCapGiayChungNhanDangKyTauSo = noiCapGiayChungNhanDangKyTauSo;
	}

	public String getNgayCapGiayChungNhanDangKyTauSo() {
		return ngayCapGiayChungNhanDangKyTauSo;
	}

	public void setNgayCapGiayChungNhanDangKyTauSo(
			String ngayCapGiayChungNhanDangKyTauSo) {
		this.ngayCapGiayChungNhanDangKyTauSo = ngayCapGiayChungNhanDangKyTauSo;
	}
	
}
