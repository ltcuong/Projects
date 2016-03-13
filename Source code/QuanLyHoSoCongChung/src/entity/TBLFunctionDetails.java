package entity;

import java.io.Serializable;

public class TBLFunctionDetails implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer roleID;
	private Integer nhomID;
	private Integer funcID;
	private int isView;
	private int isAdd;
	private int isDelete;
	private int isEdit;
	private int locked;
	
	private TBLFunctions functions;
		

	public TBLFunctions getFunctions() {
		return functions;
	}
	public void setFunctions(TBLFunctions functions) {
		this.functions = functions;
	}
	
	public Integer getRoleID() {
		return roleID;
	}
	public void setRoleID(Integer roleID) {
		this.roleID = roleID;
	}
	
	public Integer getNhomID() {
		return nhomID;
	}
	public void setNhomID(Integer nhomID) {
		this.nhomID = nhomID;
	}
	public Integer getFuncID() {
		return funcID;
	}
	public void setFuncID(Integer funcID) {
		this.funcID = funcID;
	}
	
	public int getIsView() {
		return isView;
	}
	public void setIsView(int isView) {
		this.isView = isView;
	}
	public int getIsAdd() {
		return isAdd;
	}
	public void setIsAdd(int isAdd) {
		this.isAdd = isAdd;
	}
	public int getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}
	public int getIsEdit() {
		return isEdit;
	}
	public void setIsEdit(int isEdit) {
		this.isEdit = isEdit;
	}
	public int getLocked() {
		return locked;
	}
	public void setLocked(int locked) {
		this.locked = locked;
	}
	
}
