package entity;

import java.io.Serializable;

public class HDFileDinhKemHopDong implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer fileDinhKemID;
	private String tenFile;
	private String duongDan;
	private Integer hopDongID;
	
	private HDHopDong hopDong;

	public Integer getFileDinhKemID() {
		return fileDinhKemID;
	}

	public void setFileDinhKemID(Integer fileDinhKemID) {
		this.fileDinhKemID = fileDinhKemID;
	}

	public String getTenFile() {
		return tenFile;
	}

	public void setTenFile(String tenFile) {
		this.tenFile = tenFile;
	}

	public String getDuongDan() {
		return duongDan;
	}

	public void setDuongDan(String duongDan) {
		this.duongDan = duongDan;
	}

	public Integer getHopDongID() {
		return hopDongID;
	}

	public void setHopDongID(Integer hopDongID) {
		this.hopDongID = hopDongID;
	}

	public HDHopDong getHopDong() {
		return hopDong;
	}

	public void setHopDong(HDHopDong hopDong) {
		this.hopDong = hopDong;
	}
}
