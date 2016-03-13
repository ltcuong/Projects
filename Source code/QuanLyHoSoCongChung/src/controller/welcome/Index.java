package controller.welcome;

import controller.BaseAction;
public class Index extends BaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public String execute() throws Exception{
		getCookieLanguage();
		
		return SUCCESS;
	}
}
