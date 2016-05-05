package entity;

import java.io.Serializable;

public class TSTaiSanLaDongSanKhac implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static final String TS_TENPHIEUTAISAN = "#TENPHIEUTAISAN";
	public static final String TS_TENKHOATAISAN = "#TENKHOATAISAN";
	public static final String TS_DACDIEMTAISAN = "#DACDIEMTAISAN";

	private Integer taiSanLaDongSanKhacID;
	private String dacDiemTaiSan;

	private TSTaiSan taiSan;

	public TSTaiSan getTaiSan() {
		return taiSan;
	}

	public void setTaiSan(TSTaiSan taiSan) {
		this.taiSan = taiSan;
	}

	public Integer getTaiSanLaDongSanKhacID() {
		return taiSanLaDongSanKhacID;
	}

	public void setTaiSanLaDongSanKhacID(Integer taiSanLaDongSanKhacID) {
		this.taiSanLaDongSanKhacID = taiSanLaDongSanKhacID;
	}

	public String getDacDiemTaiSan() {
		return dacDiemTaiSan;
	}

	public void setDacDiemTaiSan(String dacDiemTaiSan) {
		this.dacDiemTaiSan = dacDiemTaiSan;
	}
}
