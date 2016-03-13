package controller.huongdan;

import controller.BaseAction;

public class HDTaiFileImport extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public String execute() throws Exception {
		memberShip = super.getMemberShip();		
		subAction = super.getSubAction();
		return SUCCESS;
	}

	
}

