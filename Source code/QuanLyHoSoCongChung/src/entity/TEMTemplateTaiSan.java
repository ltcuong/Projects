package entity;

import java.io.Serializable;

public class TEMTemplateTaiSan implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer templateTaiSanID;
	private String maTemplateTaiSan;
	private String tenTemplateTaiSan;
	private String noiDungTemplateTaiSan;
	private Integer loaiTaiSanID;
	
	private DMLoaiTaiSan loaiTaiSan;

	public Integer getTemplateTaiSanID() {
		return templateTaiSanID;
	}

	public void setTemplateTaiSanID(Integer templateTaiSanID) {
		this.templateTaiSanID = templateTaiSanID;
	}

	public String getMaTemplateTaiSan() {
		return maTemplateTaiSan;
	}

	public void setMaTemplateTaiSan(String maTemplateTaiSan) {
		this.maTemplateTaiSan = maTemplateTaiSan;
	}

	public String getTenTemplateTaiSan() {
		return tenTemplateTaiSan;
	}

	public void setTenTemplateTaiSan(String tenTemplateTaiSan) {
		this.tenTemplateTaiSan = tenTemplateTaiSan;
	}

	public String getNoiDungTemplateTaiSan() {
		return noiDungTemplateTaiSan;
	}

	public void setNoiDungTemplateTaiSan(String noiDungTemplateTaiSan) {
		this.noiDungTemplateTaiSan = noiDungTemplateTaiSan;
	}

	public Integer getLoaiTaiSanID() {
		return loaiTaiSanID;
	}

	public void setLoaiTaiSanID(Integer loaiTaiSanID) {
		this.loaiTaiSanID = loaiTaiSanID;
	}

	public DMLoaiTaiSan getLoaiTaiSan() {
		return loaiTaiSan;
	}

	public void setLoaiTaiSan(DMLoaiTaiSan loaiTaiSan) {
		this.loaiTaiSan = loaiTaiSan;
	}
}
