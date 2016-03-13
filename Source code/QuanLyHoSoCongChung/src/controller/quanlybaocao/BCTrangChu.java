package controller.quanlybaocao;

import controller.BaseAction;

public class BCTrangChu extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public String execute() throws Exception {
		memberShip = super.getMemberShip();		
		
		return SUCCESS;
	}
	
}
