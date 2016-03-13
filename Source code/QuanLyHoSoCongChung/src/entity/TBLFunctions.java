package entity;

import java.io.Serializable;

public class TBLFunctions implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer funcID;
	private String funcMa;
	private String funcTen;
	private int locked;
	private Integer ordinal;
	private String module;
	
	
	public String getFuncMa() {
		return funcMa;
	}
	public void setFuncMa(String funcMa) {
		this.funcMa = funcMa;
	}
	public Integer getFuncID() {
		return funcID;
	}
	public void setFuncID(Integer funcID) {
		this.funcID = funcID;
	}
	public String getFuncTen() {
		return funcTen;
	}
	public void setFuncTen(String funcTen) {
		this.funcTen = funcTen;
	}
	public int getLocked() {
		return locked;
	}
	public void setLocked(int locked) {
		this.locked = locked;
	}
	public Integer getOrdinal() {
		return ordinal;
	}
	public void setOrdinal(Integer ordinal) {
		this.ordinal = ordinal;
	}
	public String getModule() {
		return module;
	}
	public void setModule(String module) {
		this.module = module;
	}
	

}
