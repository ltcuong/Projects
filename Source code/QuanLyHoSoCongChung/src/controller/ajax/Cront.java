package controller.ajax;

import util.Const;
import controller.BaseAction;

public class Cront  extends BaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String result;
	public String execute(){ 
		if(getSession(Const.SESSION_LOGGED_USER_ANOTHER) != null ) {
			result = "anotherlog";
			setSession(Const.MEMBERSHIP, null);
			setSession(Const.SESSION_LOGGED_USER_ANOTHER, null);			
		} else if (getSession(Const.SESSION_LOGGED_USER_NOT_TOKEN) != null) {
			//System.out.println("nottoken");
			result = "nottoken";
			setSession(Const.MEMBERSHIP, null);
			setSession(Const.SESSION_LOGGED_USER_NOT_TOKEN, null);			
		}
		return SUCCESS;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getResult() {
		return result;
	}
}
