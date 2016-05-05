package entity;

import java.io.Serializable;
import java.util.Date;

public class TSTauCa implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static final String TS_TENPHIEUTAISAN = "#TENPHIEUTAISAN";
	public static final String TS_TENKHOATAISAN = "#TENKHOATAISAN";
	public static final String TS_TENTAU = "#TENTAU";
	public static final String TS_SOHIEU = "#SOHIEU";
	public static final String TS_COQUANDANGKY = "#COQUANDANGKY";
	public static final String TS_LOAITAU = "#LOAITAU";
	public static final String TS_CONGDUNG = "#CONGDUNG";
	public static final String TS_NOIDONG = "#NOIDONG";
	public static final String TS_NAMDONG = "#NAMDONG";
	public static final String TS_MAUTHIETKE = "#MAUTHIETKE";
	public static final String TS_COQUANTHIETKE = "#COQUANTHIETKE";
	public static final String TS_CHIEUDAILMAX = "#CHIEUDAILMAX";
	public static final String TS_LTK = "#LTK";
	public static final String TS_CHIEURONGBMAX = "#CHIEURONGBMAX";
	public static final String TS_BTK = "#BTK";
	public static final String TS_CHIEUCAOD = "#CHIEUCAOD";
	public static final String TS_CHIEUCHIMD = "#CHIEUCHIMD";
	public static final String TS_MANKHOF = "#MANKHOF";
	public static final String TS_VATLIEUVO = "#VATLIEUVO";
	public static final String TS_TONGDUNGTICH = "#TONGDUNGTICH";
	public static final String TS_SUCCHOTOIDA = "#SUCCHOTOIDA";
	public static final String TS_TOCDOTUDO = "#TOCDOTUDO";
	public static final String TS_KYHIEUMAY = "#KYHIEUMAY";
	public static final String TS_SOMAY = "#SOMAY";
	public static final String TS_CONGSUAT = "#CONGSUAT";
	public static final String TS_NOICHETAO = "#NOICHETAO";
	public static final String TS_CANGDANGKY = "#CANGDANGKY";
	public static final String TS_COQUANDANGKIEM = "#COQUANDANGKIEM";
	public static final String TS_GIAYCNDANGKYTAUSO = "#GIAYCNDANGKYTAUSO";
	public static final String TS_NGAYCAPGIAYCNDANGKY = "#NGAYCAPGIAYCNDANGKY";
	public static final String TS_NOICAPGIAYCNDANGKY = "#NOICAPGIAYCNDANGKY";
	public static final String TS_SODANGKYCU = "#SODANGKYCU";

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
	private Date ngayCapGiayCNDangKy;
	private String noiCapGiayCNDangKy;
	private String soDangKyCu;

	private TSTaiSan taiSan;

	public TSTaiSan getTaiSan() {
		return taiSan;
	}

	public void setTaiSan(TSTaiSan taiSan) {
		this.taiSan = taiSan;
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

	public Date getNgayCapGiayCNDangKy() {
		return ngayCapGiayCNDangKy;
	}

	public void setNgayCapGiayCNDangKy(Date ngayCapGiayCNDangKy) {
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
