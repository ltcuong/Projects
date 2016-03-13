package controller;

import java.util.Locale;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import util.Const;
import authentication.MemberShip;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport implements RequestAware,
SessionAware, ServletResponseAware, ServletRequestAware, Const{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected Map<String, Object> session;
	protected Map<String, Object> request;
	protected MemberShip memberShip;
	private String language;
	protected String mainAction = "";
	protected String subAction = "";		
	public static final String REDIRECT = "redirect";
	
	
	
	public String getMainAction() {		
		return getMemberShip().getActionMenu();
	}

	public void setMainAction(String action) {
		this.mainAction = action;
	}
	
	/**
	 * @return the action
	 */
	public String getSubAction() {		
		return getMemberShip().getActionSubMenu();
	}
	/**
	 * @param action
	 *            the action to set
	 */
	public void setSubAction(String action) {
		this.subAction = action;
	}
	
	
	public MemberShip getMemberShip() {
		MemberShip user = (MemberShip) this.getSession().get(Const.MEMBERSHIP);
		return user;

	}
	public void setMemberShip(MemberShip memberShip) {
		this.memberShip = memberShip;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	public Object getSession(String strKey) {
		try {
			return this.session.get(strKey);
		} catch (Exception e) {
			return null;
		}
	}
	
	public void setSession(String strKey, Object object) {
		try {
			this.session.remove(strKey);
			this.session.put(strKey, object);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Map<String, Object> getRequest() {
		return request;
	}
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}
	
	protected HttpServletResponse servletResponse;

	@Override
	public void setServletResponse(HttpServletResponse servletResponse) {
		this.servletResponse = servletResponse;
	}

	protected HttpServletRequest servletRequest;

	@Override
	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;
	}
	
	public void setLocale(String locale) {
		ActionContext.getContext().setLocale(new Locale(locale));
		language = locale;
	}
	
	public void getCookieLanguage() {
		try {
			String lang = "";
			// Load from cookie
			for (Cookie c : servletRequest.getCookies()) {
				if (c.getName().equals("LANGUAGE")) {
					lang = c.getValue();

				}
			}
			if (lang == "") {
				lang = "en";
				Cookie div = new Cookie("LANGUAGE", lang);
				div.setPath("/");
				div.setMaxAge(60 * 60 * 24 * 365);
				servletResponse.addCookie(div);
			}
			setLocale(lang);
		} catch (Exception e) {
			// System.out.println(e);
		}

	}
	public void setCookieLanguage(String language) {
		// Save to cookie
		for (Cookie c : servletRequest.getCookies()) {
			if (c.getName().equals("LANGUAGE")) {
				c.setValue(language);
				c.setPath("/");
				c.setMaxAge(60 * 60 * 24 * 365);
				servletResponse.addCookie(c);
				// break;
			}
		}
	}

	public boolean checkOnline(String userName) {
		boolean result = false;
		HttpSession httpSession = this.servletRequest.getSession();
		String sessionID = httpSession.getId();
		for (int i = 0; i < Const.memberOnline.size(); i++) {
			String key = Const.memberOnline.get(i);
			String[] user = key.split("@");
			if (user.length == 2) {
				if (userName.equals(user[1]) && !sessionID.equals(user[0])) {

					result = true;
				}
			}
		}
		return result;
	}
	
	public void setAccountToListOffline(String userName) {
		HttpSession httpSession = servletRequest.getSession();
		String sessionID = httpSession.getId();
		for (int i = 0; i < Const.memberOnline.size(); i++) {
			String key = Const.memberOnline.get(i);
			String[] user = key.split("@");
			if (user.length == 2) {
				if (userName.equals(user[1]) && !sessionID.equals(user[0])) {
					Const.memberOffline.add(key);
					Const.memberOnline.remove(i);
				}
			}
		}
	}
	
	public void accountOffline(String userName) {
		HttpSession httpSession = this.servletRequest.getSession();
		for (int i = 0; i < Const.memberOnline.size(); i++) {
			String key = Const.memberOnline.get(i);
			String[] user = key.split("@");
			if (user.length == 2) {
				if (httpSession.getId().equals(user[0])
						&& userName.equals(user[1])) {
					Const.memberOnline.remove(i);
					break;
				}
			}
		}
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}

}
