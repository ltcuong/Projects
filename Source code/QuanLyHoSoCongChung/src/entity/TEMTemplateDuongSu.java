package entity;

import java.io.Serializable;

public class TEMTemplateDuongSu implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer templateDuongSuID;
	private String maTemplateDuongSu;
	private String tenTemplateDuongSu;
	private String noiDungTemplateDuongSu;
	private Integer loaiDuongSuID;
	
	private DMLoaiDuongSu loaiDuongSu;

	public Integer getTemplateDuongSuID() {
		return templateDuongSuID;
	}

	public void setTemplateDuongSuID(Integer templateDuongSuID) {
		this.templateDuongSuID = templateDuongSuID;
	}

	public String getMaTemplateDuongSu() {
		return maTemplateDuongSu;
	}

	public void setMaTemplateDuongSu(String maTemplateDuongSu) {
		this.maTemplateDuongSu = maTemplateDuongSu;
	}

	public String getTenTemplateDuongSu() {
		return tenTemplateDuongSu;
	}

	public void setTenTemplateDuongSu(String tenTemplateDuongSu) {
		this.tenTemplateDuongSu = tenTemplateDuongSu;
	}

	public String getNoiDungTemplateDuongSu() {
		return noiDungTemplateDuongSu;
	}

	public void setNoiDungTemplateDuongSu(String noiDungTemplateDuongSu) {
		this.noiDungTemplateDuongSu = noiDungTemplateDuongSu;
	}

	public Integer getLoaiDuongSuID() {
		return loaiDuongSuID;
	}

	public void setLoaiDuongSuID(Integer loaiDuongSuID) {
		this.loaiDuongSuID = loaiDuongSuID;
	}

	public DMLoaiDuongSu getLoaiDuongSu() {
		return loaiDuongSu;
	}

	public void setLoaiDuongSu(DMLoaiDuongSu loaiDuongSu) {
		this.loaiDuongSu = loaiDuongSu;
	}
	
}
