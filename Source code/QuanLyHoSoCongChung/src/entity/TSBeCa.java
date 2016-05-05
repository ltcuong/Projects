package entity;

import java.io.Serializable;
import java.util.Date;

public class TSBeCa implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static final String TS_TENPHIEUTAISAN = "#TENPHIEUTAISAN";
	public static final String TS_TENKHOATAISAN = "#TENKHOATAISAN";
	public static final String TS_TENPHUONGTIEN = "#TENPHUONGTIEN";
	public static final String TS_COQUANDANGKY = "#COQUANDANGKY";
	public static final String TS_NAMDONG = "#NAMDONG";
	public static final String TS_NOIDONG = "#NOIDONG";
	public static final String TS_CHIEUDAILMAX = "#CHIEUDAILMAX";
	public static final String TS_CHIEURONGBMAX = "#CHIEURONGBMAX";
	public static final String TS_CHIEUCAOD = "#CHIEUCAOD";
	public static final String TS_LTK = "#LTK";
	public static final String TS_VATLIEUVO = "#VATLIEUVO";
	public static final String TS_TONGDUNGTICH = "#TONGDUNGTICH";
	public static final String TS_KICHTHUOCCABIN = "#KICHTHUOCCABIN";
	public static final String TS_KYHIEUMAY = "#KYHIEUMAY";
	public static final String TS_SOMAY = "#SOMAY";
	public static final String TS_CONGSUAT = "#CONGSUAT";
	public static final String TS_DUOCPHEPSUDUNG = "#DUOCPHEPSUDUNG";
	public static final String TS_GIAYDKPHUONGTIENNGHECA = "#GIAYDKPHUONGTIENNGHECA";
	public static final String TS_NGAYCAPGIAYDKPHUONGTIENNGHECA = "#NGAYCAPGIAYDKPHUONGTIENNGHECA";
	public static final String TS_NOICAPGIAYDKPHUONGTIENNGHECA = "#NOICAPGIAYDKPHUONGTIENNGHECA";
	public static final String TS_SODANGKYCU = "#SODANGKYCU";

	private Integer taiSanBeCaID;
	private String tenPhuongTien;
	private String coQuanDangKy;
	private Integer namDong;
	private String noiDong;
	private Double chieuDaiLmax;
	private Double chieuRongBmax;
	private Double chieuCaoD;
	private Double ltk;
	private String vatLieuVo;
	private String tongDungTich;
	private String kichThuocCabin;
	private String kyHieuMay;
	private String soMay;
	private String congSuat;
	private String duocPhepSuDung;
	private String giayDKPhuongTienNgheCa;
	private Date ngayCapGiayDKPhuongTienNgheCa;
	private String noiCapGiayDKPhuongTienNgheCa;
	private String soDangKyCu;

	private TSTaiSan taiSan;

	public TSTaiSan getTaiSan() {
		return taiSan;
	}

	public void setTaiSan(TSTaiSan taiSan) {
		this.taiSan = taiSan;
	}

	public Integer getTaiSanBeCaID() {
		return taiSanBeCaID;
	}

	public void setTaiSanBeCaID(Integer taiSanBeCaID) {
		this.taiSanBeCaID = taiSanBeCaID;
	}

	public String getTenPhuongTien() {
		return tenPhuongTien;
	}

	public void setTenPhuongTien(String tenPhuongTien) {
		this.tenPhuongTien = tenPhuongTien;
	}

	public String getCoQuanDangKy() {
		return coQuanDangKy;
	}

	public void setCoQuanDangKy(String coQuanDangKy) {
		this.coQuanDangKy = coQuanDangKy;
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

	public Double getChieuDaiLmax() {
		return chieuDaiLmax;
	}

	public void setChieuDaiLmax(Double chieuDaiLmax) {
		this.chieuDaiLmax = chieuDaiLmax;
	}

	public Double getChieuRongBmax() {
		return chieuRongBmax;
	}

	public void setChieuRongBmax(Double chieuRongBmax) {
		this.chieuRongBmax = chieuRongBmax;
	}

	public Double getChieuCaoD() {
		return chieuCaoD;
	}

	public void setChieuCaoD(Double chieuCaoD) {
		this.chieuCaoD = chieuCaoD;
	}

	public Double getLtk() {
		return ltk;
	}

	public void setLtk(Double ltk) {
		this.ltk = ltk;
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

	public String getKichThuocCabin() {
		return kichThuocCabin;
	}

	public void setKichThuocCabin(String kichThuocCabin) {
		this.kichThuocCabin = kichThuocCabin;
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

	public String getCongSuat() {
		return congSuat;
	}

	public void setCongSuat(String congSuat) {
		this.congSuat = congSuat;
	}

	public String getDuocPhepSuDung() {
		return duocPhepSuDung;
	}

	public void setDuocPhepSuDung(String duocPhepSuDung) {
		this.duocPhepSuDung = duocPhepSuDung;
	}

	public String getGiayDKPhuongTienNgheCa() {
		return giayDKPhuongTienNgheCa;
	}

	public void setGiayDKPhuongTienNgheCa(String giayDKPhuongTienNgheCa) {
		this.giayDKPhuongTienNgheCa = giayDKPhuongTienNgheCa;
	}

	public Date getNgayCapGiayDKPhuongTienNgheCa() {
		return ngayCapGiayDKPhuongTienNgheCa;
	}

	public void setNgayCapGiayDKPhuongTienNgheCa(
			Date ngayCapGiayDKPhuongTienNgheCa) {
		this.ngayCapGiayDKPhuongTienNgheCa = ngayCapGiayDKPhuongTienNgheCa;
	}

	public String getNoiCapGiayDKPhuongTienNgheCa() {
		return noiCapGiayDKPhuongTienNgheCa;
	}

	public void setNoiCapGiayDKPhuongTienNgheCa(
			String noiCapGiayDKPhuongTienNgheCa) {
		this.noiCapGiayDKPhuongTienNgheCa = noiCapGiayDKPhuongTienNgheCa;
	}

	public String getSoDangKyCu() {
		return soDangKyCu;
	}

	public void setSoDangKyCu(String soDangKyCu) {
		this.soDangKyCu = soDangKyCu;
	}

}
