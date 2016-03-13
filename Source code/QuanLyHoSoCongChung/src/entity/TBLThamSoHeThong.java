package entity;

import java.io.Serializable;

public class TBLThamSoHeThong implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer paramID;
	private String paramMa;
	private String paramTen;
	private String paramValue;
	private int locked;
	private String paramType;
	
	public Integer getParamID() {
		return paramID;
	}
	public void setParamID(Integer paramID) {
		this.paramID = paramID;
	}
	public String getParamMa() {
		return paramMa;
	}
	public void setParamMa(String paramMa) {
		this.paramMa = paramMa;
	}
	public String getParamTen() {
		return paramTen;
	}
	public void setParamTen(String paramTen) {
		this.paramTen = paramTen;
	}
	public String getParamValue() {
		return paramValue;
	}
	public void setParamValue(String paramValue) {
		this.paramValue = paramValue;
	}
	public int getLocked() {
		return locked;
	}
	public void setLocked(int locked) {
		this.locked = locked;
	}
	public String getParamType() {
		return paramType;
	}
	public void setParamType(String paramType) {
		this.paramType = paramType;
	}
	
	
}
