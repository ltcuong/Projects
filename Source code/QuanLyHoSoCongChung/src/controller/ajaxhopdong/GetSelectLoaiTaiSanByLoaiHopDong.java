package controller.ajaxhopdong;

import java.util.List;

import service.DanhMucService;
import controller.BaseAction;
import entity.DMLoaiTaiSan;

public class GetSelectLoaiTaiSanByLoaiHopDong extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List<DMLoaiTaiSan> listLoaiTaiSan;	
	private Integer loaiHopDongChiTietID;
	
	public String execute() {
		DanhMucService danhMucSV = new DanhMucService();  
		if (loaiHopDongChiTietID != null) {
			listLoaiTaiSan = danhMucSV.getAllLoaiTaiSanByLoaiHopDongID(loaiHopDongChiTietID);
		}
		return SUCCESS;
	}

	public List<DMLoaiTaiSan> getListLoaiTaiSan() {
		return listLoaiTaiSan;
	}

	public void setListLoaiTaiSan(List<DMLoaiTaiSan> listLoaiTaiSan) {
		this.listLoaiTaiSan = listLoaiTaiSan;
	}

	public Integer getLoaiHopDongChiTietID() {
		return loaiHopDongChiTietID;
	}

	public void setLoaiHopDongChiTietID(Integer loaiHopDongChiTietID) {
		this.loaiHopDongChiTietID = loaiHopDongChiTietID;
	}

}
