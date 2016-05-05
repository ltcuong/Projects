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
import entity.TSTauCa;

public class GetFormCapNhatTaiSanTauCa extends BaseAction {

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
	private Integer taiSanTauCaID;
	private String tenTau;
	private String soHieu;
	private String coQuanDangKy;
	private String loaiTau;
	private String congDung;
	private String noiDong;
	private Integer namDong;
	private String mauThietKe;
	private String coQuanThietKe;
	private Double chieuDaiLmax;
	private Double ltk;
	private Double chieuRongBmax;
	private Double btk;
	private Double chieuCaoD;
	private Double chieuChimD;
	private String manKhoF;
	private String vatLieuVo;
	private String tongDungTich;
	private String sucChoToiDa;
	private String tocDoTuDo;
	private String kyHieuMay;
	private String soMay;
	private Double congSuat;
	private String noiCheTao;
	private String cangDangKy;
	private String coQuanDangKiem;
	private String giayCNDangKyTauSo;
	private String ngayCapGiayCNDangKy;
	private String noiCapGiayCNDangKy;
	private String soDangKyCu;
	
	public String execute() {
		
		return SUCCESS;
	}

	public String executeCapNhatThongTinTaiSanTauCa() {
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
			TSTauCa tauCa = new TSTauCa();
			tauCa.setTenTau(tenTau);
			tauCa.setSoHieu(soHieu);
			tauCa.setCoQuanDangKy(coQuanDangKy);
			tauCa.setLoaiTau(loaiTau);
			tauCa.setCongDung(congDung);
			tauCa.setNoiDong(noiDong);
			tauCa.setNamDong(namDong);
			tauCa.setMauThietKe(mauThietKe);
			tauCa.setCoQuanThietKe(coQuanThietKe);
			tauCa.setChieuDaiLmax(chieuDaiLmax);
			tauCa.setLtk(ltk);
			tauCa.setChieuRongBmax(chieuRongBmax);
			tauCa.setBtk(btk);
			tauCa.setChieuCaoD(chieuCaoD);
			tauCa.setChieuChimD(chieuChimD);
			tauCa.setManKhoF(manKhoF);
			tauCa.setVatLieuVo(vatLieuVo);
			tauCa.setTongDungTich(tongDungTich);
			tauCa.setSucChoToiDa(sucChoToiDa);
			tauCa.setTocDoTuDo(tocDoTuDo);
			tauCa.setKyHieuMay(kyHieuMay);
			tauCa.setSoMay(soMay);
			tauCa.setCongSuat(congSuat);
			tauCa.setNoiCheTao(noiCheTao);
			tauCa.setCangDangKy(cangDangKy);
			tauCa.setCoQuanDangKiem(coQuanDangKiem);
			tauCa.setGiayCNDangKyTauSo(giayCNDangKyTauSo);
			Date d1 = null;
			if (ngayCapGiayCNDangKy != null && !ngayCapGiayCNDangKy.isEmpty()) {
				try {
					d1 = df.parse(ngayCapGiayCNDangKy);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			tauCa.setNgayCapGiayCNDangKy(d1);
			tauCa.setNoiCapGiayCNDangKy(noiCapGiayCNDangKy);
			tauCa.setSoDangKyCu(soDangKyCu);
			
			taiSan.setTaiSanTauCa(tauCa);
			tauCa.setTaiSan(taiSan);
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

	public Integer getTaiSanTauCaID() {
		return taiSanTauCaID;
	}

	public void setTaiSanTauCaID(Integer taiSanTauCaID) {
		this.taiSanTauCaID = taiSanTauCaID;
	}

	public String getTenTau() {
		return tenTau;
	}

	public void setTenTau(String tenTau) {
		this.tenTau = tenTau;
	}

	public String getSoHieu() {
		return soHieu;
	}

	public void setSoHieu(String soHieu) {
		this.soHieu = soHieu;
	}

	public String getCoQuanDangKy() {
		return coQuanDangKy;
	}

	public void setCoQuanDangKy(String coQuanDangKy) {
		this.coQuanDangKy = coQuanDangKy;
	}

	public String getLoaiTau() {
		return loaiTau;
	}

	public void setLoaiTau(String loaiTau) {
		this.loaiTau = loaiTau;
	}

	public String getCongDung() {
		return congDung;
	}

	public void setCongDung(String congDung) {
		this.congDung = congDung;
	}

	public String getNoiDong() {
		return noiDong;
	}

	public void setNoiDong(String noiDong) {
		this.noiDong = noiDong;
	}

	public Integer getNamDong() {
		return namDong;
	}

	public void setNamDong(Integer namDong) {
		this.namDong = namDong;
	}

	public String getMauThietKe() {
		return mauThietKe;
	}

	public void setMauThietKe(String mauThietKe) {
		this.mauThietKe = mauThietKe;
	}

	public String getCoQuanThietKe() {
		return coQuanThietKe;
	}

	public void setCoQuanThietKe(String coQuanThietKe) {
		this.coQuanThietKe = coQuanThietKe;
	}

	public Double getChieuDaiLmax() {
		return chieuDaiLmax;
	}

	public void setChieuDaiLmax(Double chieuDaiLmax) {
		this.chieuDaiLmax = chieuDaiLmax;
	}

	public Double getLtk() {
		return ltk;
	}

	public void setLtk(Double ltk) {
		this.ltk = ltk;
	}

	public Double getChieuRongBmax() {
		return chieuRongBmax;
	}

	public void setChieuRongBmax(Double chieuRongBmax) {
		this.chieuRongBmax = chieuRongBmax;
	}

	public Double getBtk() {
		return btk;
	}

	public void setBtk(Double btk) {
		this.btk = btk;
	}

	public Double getChieuCaoD() {
		return chieuCaoD;
	}

	public void setChieuCaoD(Double chieuCaoD) {
		this.chieuCaoD = chieuCaoD;
	}

	public Double getChieuChimD() {
		return chieuChimD;
	}

	public void setChieuChimD(Double chieuChimD) {
		this.chieuChimD = chieuChimD;
	}

	public String getManKhoF() {
		return manKhoF;
	}

	public void setManKhoF(String manKhoF) {
		this.manKhoF = manKhoF;
	}

	public String getVatLieuVo() {
		return vatLieuVo;
	}

	public void setVatLieuVo(String vatLieuVo) {
		this.vatLieuVo = vatLieuVo;
	}

	public String getTongDungTich() {
		return tongDungTich;
	}

	public void setTongDungTich(String tongDungTich) {
		this.tongDungTich = tongDungTich;
	}

	public String getSucChoToiDa() {
		return sucChoToiDa;
	}

	public void setSucChoToiDa(String sucChoToiDa) {
		this.sucChoToiDa = sucChoToiDa;
	}

	public String getTocDoTuDo() {
		return tocDoTuDo;
	}

	public void setTocDoTuDo(String tocDoTuDo) {
		this.tocDoTuDo = tocDoTuDo;
	}

	public String getKyHieuMay() {
		return kyHieuMay;
	}

	public void setKyHieuMay(String kyHieuMay) {
		this.kyHieuMay = kyHieuMay;
	}

	public String getSoMay() {
		return soMay;
	}

	public void setSoMay(String soMay) {
		this.soMay = soMay;
	}

	public Double getCongSuat() {
		return congSuat;
	}

	public void setCongSuat(Double congSuat) {
		this.congSuat = congSuat;
	}

	public String getNoiCheTao() {
		return noiCheTao;
	}

	public void setNoiCheTao(String noiCheTao) {
		this.noiCheTao = noiCheTao;
	}

	public String getCangDangKy() {
		return cangDangKy;
	}

	public void setCangDangKy(String cangDangKy) {
		this.cangDangKy = cangDangKy;
	}

	public String getCoQuanDangKiem() {
		return coQuanDangKiem;
	}

	public void setCoQuanDangKiem(String coQuanDangKiem) {
		this.coQuanDangKiem = coQuanDangKiem;
	}

	public String getGiayCNDangKyTauSo() {
		return giayCNDangKyTauSo;
	}

	public void setGiayCNDangKyTauSo(String giayCNDangKyTauSo) {
		this.giayCNDangKyTauSo = giayCNDangKyTauSo;
	}

	public String getNgayCapGiayCNDangKy() {
		return ngayCapGiayCNDangKy;
	}

	public void setNgayCapGiayCNDangKy(String ngayCapGiayCNDangKy) {
		this.ngayCapGiayCNDangKy = ngayCapGiayCNDangKy;
	}

	public String getNoiCapGiayCNDangKy() {
		return noiCapGiayCNDangKy;
	}

	public void setNoiCapGiayCNDangKy(String noiCapGiayCNDangKy) {
		this.noiCapGiayCNDangKy = noiCapGiayCNDangKy;
	}

	public String getSoDangKyCu() {
		return soDangKyCu;
	}

	public void setSoDangKyCu(String soDangKyCu) {
		this.soDangKyCu = soDangKyCu;
	}
	
}
