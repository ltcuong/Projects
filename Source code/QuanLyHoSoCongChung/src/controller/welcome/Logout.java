package controller.welcome;

import util.Const;
import authentication.MemberShip;
import controller.BaseAction;

public class Logout extends BaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String url = "LoginAdmin";	
	public String execute() throws Exception{
		MemberShip memberShip = (MemberShip) session.get(Const.MEMBERSHIP);				
		accountOffline(memberShip.getTenDangNhap());
		getSession().remove(Const.MEMBERSHIP);
		return REDIRECT;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
}
