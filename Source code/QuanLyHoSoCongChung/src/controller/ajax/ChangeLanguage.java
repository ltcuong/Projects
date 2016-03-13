package controller.ajax;

import java.util.Locale;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import controller.BaseAction;

public class ChangeLanguage extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String lang;

	public String getLang() {
		return lang;
	}

	public void setLang(String lang) {
		this.lang = lang;
	}

	public String execute() {
		setCookieLanguage(lang);
		return SUCCESS;

	}
}
