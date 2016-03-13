package entity;

import java.io.Serializable;

public class TBLLogDetail implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer logDetailID;
	private Integer logID;
	private String logName;
	private String noiDungCu;
	private String noiDungMoi;
	
	private TBLLogHeThong logHeThong;

	
	public String getLogName() {
		return logName;
	}

	public void setLogName(String logName) {
		this.logName = logName;
	}

	public Integer getLogDetailID() {
		return logDetailID;
	}

	public void setLogDetailID(Integer logDetailID) {
		this.logDetailID = logDetailID;
	}

	public Integer getLogID() {
		return logID;
	}

	public void setLogID(Integer logID) {
		this.logID = logID;
	}

	public String getNoiDungCu() {
		return noiDungCu;
	}

	public void setNoiDungCu(String noiDungCu) {
		this.noiDungCu = noiDungCu;
	}

	public String getNoiDungMoi() {
		return noiDungMoi;
	}

	public void setNoiDungMoi(String noiDungMoi) {
		this.noiDungMoi = noiDungMoi;
	}

	public TBLLogHeThong getLogHeThong() {
		return logHeThong;
	}

	public void setLogHeThong(TBLLogHeThong logHeThong) {
		this.logHeThong = logHeThong;
	}

	
	
	
}
