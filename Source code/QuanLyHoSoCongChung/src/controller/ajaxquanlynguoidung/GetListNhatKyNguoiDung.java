package controller.ajaxquanlynguoidung;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import service.QuanLyNguoiDungService;
import controller.BaseAction;
import entity.TBLLogHeThong;

public class GetListNhatKyNguoiDung extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<TBLLogHeThong> listLogHeThong;
	private String tuNgay;
	private String denNgay;
	private Integer nhomID;
	private String tenDangNhap;
	private String actionName;
	private String formLamViec;
	
	
	private int page = 1;
	private int totalPage = 0;
	private int totalRecord;
	private int endPage;
	
	public String execute() {		
		QuanLyNguoiDungService nhatKySV = new QuanLyNguoiDungService();
		memberShip = super.getMemberShip();
		int start = 0;
		int limit = 10;
		start = (page - 1) * limit;
		Date d1 = null, d2 = null;
		SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
		
		try {
			d1 = df.parse(tuNgay + " 00:00:00");
		} catch (Exception e) {
			// TODO: handle exception
		}
		try {
			d2 = df.parse(denNgay + " 23:59:59");
		} catch (Exception e) {
			// TODO: handle exception
		}
		listLogHeThong =  nhatKySV.getListLogHeThong(d1, d2, nhomID, tenDangNhap, formLamViec, actionName, start, limit, memberShip);
		totalRecord = nhatKySV.countLogHeThong(d1, d2, nhomID, tenDangNhap, formLamViec, actionName, memberShip);
		totalPage = totalRecord / limit;
		if (totalRecord % limit > 0) {
			totalPage++;
		}
		endPage = page + 9;
		if (endPage > totalPage) {
			endPage = totalPage;
		}
		return SUCCESS;

	}

	public List<TBLLogHeThong> getListLogHeThong() {
		return listLogHeThong;
	}

	public void setListLogHeThong(List<TBLLogHeThong> listLogHeThong) {
		this.listLogHeThong = listLogHeThong;
	}

	public String getTuNgay() {
		return tuNgay;
	}

	public void setTuNgay(String tuNgay) {
		this.tuNgay = tuNgay;
	}

	public String getDenNgay() {
		return denNgay;
	}

	public void setDenNgay(String denNgay) {
		this.denNgay = denNgay;
	}

	public Integer getNhomID() {
		return nhomID;
	}

	public void setNhomID(Integer nhomID) {
		this.nhomID = nhomID;
	}

	public String getTenDangNhap() {
		return tenDangNhap;
	}

	public void setTenDangNhap(String tenDangNhap) {
		this.tenDangNhap = tenDangNhap;
	}

	public String getActionName() {
		return actionName;
	}

	public void setActionName(String actionName) {
		this.actionName = actionName;
	}

	public String getFormLamViec() {
		return formLamViec;
	}

	public void setFormLamViec(String formLamViec) {
		this.formLamViec = formLamViec;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getTotalRecord() {
		return totalRecord;
	}

	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	
}
