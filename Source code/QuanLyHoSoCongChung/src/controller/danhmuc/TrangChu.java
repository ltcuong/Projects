package controller.danhmuc;

import controller.BaseAction;

public class TrangChu extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private boolean update = false;
	
	public String execute() throws Exception {		
		memberShip = super.getMemberShip();
		return SUCCESS;
	}

	public boolean isUpdate() {
		return update;
	}

	public void setUpdate(boolean update) {
		this.update = update;
	}
	
}
