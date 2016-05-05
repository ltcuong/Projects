package entity;

import java.io.Serializable;

public class TSMayMoc implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static final String TS_NHANHIEU = "#NHANHIEU";
	public static final String TS_CONGSUAT = "#CONGSUAT";
	public static final String TS_NOICHETAO = "#NOICHETAO";
	public static final String TS_DACDIEMTAISAN = "#DACDIEMTAISAN";
	public static final String TS_COQUANDANGKIEM = "#COQUANDANGKIEM";
	public static final String TS_TENPHIEUTAISAN = "#TENPHIEUTAISAN";
	public static final String TS_TENKHOATAISAN = "#TENKHOATAISAN";

	private Integer taiSanMayMocID;
	private String nhanHieu;
	private String congSuat;
	private String noiCheTao;
	private String dacDiemTaiSan;
	private String coQuanDangKiem;

	private TSTaiSan taiSan;

	public TSTaiSan getTaiSan() {
		return taiSan;
	}

	public void setTaiSan(TSTaiSan taiSan) {
		this.taiSan = taiSan;
	}

	public Integer getTaiSanMayMocID() {
		return taiSanMayMocID;
	}

	public void setTaiSanMayMocID(Integer taiSanMayMocID) {
		this.taiSanMayMocID = taiSanMayMocID;
	}

	public String getNhanHieu() {
		return nhanHieu;
	}

	public void setNhanHieu(String nhanHieu) {
		this.nhanHieu = nhanHieu;
	}

	public String getCongSuat() {
		return congSuat;
	}

	public void setCongSuat(String congSuat) {
		this.congSuat = congSuat;
	}

	public String getNoiCheTao() {
		return noiCheTao;
	}

	public void setNoiCheTao(String noiCheTao) {
		this.noiCheTao = noiCheTao;
	}

	public String getDacDiemTaiSan() {
		return dacDiemTaiSan;
	}

	public void setDacDiemTaiSan(String dacDiemTaiSan) {
		this.dacDiemTaiSan = dacDiemTaiSan;
	}

	public String getCoQuanDangKiem() {
		return coQuanDangKiem;
	}

	public void setCoQuanDangKiem(String coQuanDangKiem) {
		this.coQuanDangKiem = coQuanDangKiem;
	}

}
