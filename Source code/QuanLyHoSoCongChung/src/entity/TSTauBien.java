package entity;

import java.io.Serializable;
import java.util.Date;

public class TSTauBien implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static final String TS_TENPHIEUTAISAN = "#TENPHIEUTAISAN";
	public static final String TS_TENKHOATAISAN = "#TENKHOATAISAN";
	public static final String TS_TENTAU = "#TENTAU";
	public static final String TS_LOAITAU = "#LOAITAU";
	public static final String TS_NAMDONG = "#NAMDONG";
	public static final String TS_NOIDONG = "#NOIDONG";
	public static final String TS_CHIEUDAILONNHAT = "#CHIEUDAILONNHAT";
	public static final String TS_CHIEURONGLONNHAT = "#CHIEURONGLONNHAT";
	public static final String TS_CHIEUCAOMAN = "#CHIEUCAOMAN";
	public static final String TS_MUCNUOCTOIDA = "#MUCNUOCTOIDA";
	public static final String TS_DUNGTICHTOANTHAN = "#DUNGTICHTOANTHAN";
	public static final String TS_DUNGTICHTHUCDUNG = "#DUNGTICHTHUCDUNG";
	public static final String TS_TRONGTAI = "#TRONGTAI";
	public static final String TS_CONGSUATMAYCHINH = "#CONGSUATMAYCHINH";
	public static final String TS_CANGDANGKY = "#CANGDANGKY";
	public static final String TS_NGAYDANGKY = "#NGAYDANGKY";
	public static final String TS_COQUANDANGKIEM = "#COQUANDANGKIEM";
	public static final String TS_GIAYCHUNGNHANDANGKYTAUSO = "#GIAYCHUNGNHANDANGKYTAUSO";
	public static final String TS_NOICAPGIAYCHUNGNHANDANGKYTAUSO = "#NOICAPGIAYCHUNGNHANDANGKYTAUSO";
	public static final String TS_NGAYCAPGIAYCHUNGNHANDANGKYTAUSO = "#NGAYCAPGIAYCHUNGNHANDANGKYTAUSO";

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
	private Date ngayDangKy;
	private String coQuanDangKiem;
	private String giayChungNhanDangKyTauSo;
	private String noiCapGiayChungNhanDangKyTauSo;
	private Date ngayCapGiayChungNhanDangKyTauSo;

	private TSTaiSan taiSan;

	public TSTaiSan getTaiSan() {
		return taiSan;
	}

	public void setTaiSan(TSTaiSan taiSan) {
		this.taiSan = taiSan;
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

	public Date getNgayDangKy() {
		return ngayDangKy;
	}

	public void setNgayDangKy(Date ngayDangKy) {
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

	public Date getNgayCapGiayChungNhanDangKyTauSo() {
		return ngayCapGiayChungNhanDangKyTauSo;
	}

	public void setNgayCapGiayChungNhanDangKyTauSo(
			Date ngayCapGiayChungNhanDangKyTauSo) {
		this.ngayCapGiayChungNhanDangKyTauSo = ngayCapGiayChungNhanDangKyTauSo;
	}

}
