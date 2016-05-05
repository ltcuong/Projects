package controller.ajaxhopdong;

import java.util.List;

import service.DanhMucService;
import controller.BaseAction;
import entity.DMLoaiHopDongChiTiet;

public class GetSelectLoaiHopDongChiTiet extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List<DMLoaiHopDongChiTiet> listLoaiHopDongChiTiet;	
	private Integer loaiHopDongID;
	
	public String execute() {
		DanhMucService danhMucSV = new DanhMucService();  
		if (loaiHopDongID != null) {
			listLoaiHopDongChiTiet = danhMucSV.getAllLoaiHopDongChiTietByLoaiHopDongID(loaiHopDongID);
		}
		return SUCCESS;
	}

	public List<DMLoaiHopDongChiTiet> getListLoaiHopDongChiTiet() {
		return listLoaiHopDongChiTiet;
	}

	public void setListLoaiHopDongChiTiet(
			List<DMLoaiHopDongChiTiet> listLoaiHopDongChiTiet) {
		this.listLoaiHopDongChiTiet = listLoaiHopDongChiTiet;
	}

	public Integer getLoaiHopDongID() {
		return loaiHopDongID;
	}

	public void setLoaiHopDongID(Integer loaiHopDongID) {
		this.loaiHopDongID = loaiHopDongID;
	}
}
