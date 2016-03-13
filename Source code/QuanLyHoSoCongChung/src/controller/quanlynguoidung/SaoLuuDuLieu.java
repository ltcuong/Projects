package controller.quanlynguoidung;

import java.io.File;
import java.util.List;

import service.GeneralService;
import service.QuanLyNguoiDungService;
import util.Const;
import util.WebUtil;
import controller.BaseAction;
import entity.TBLNhatKySaoLuu;

public class SaoLuuDuLieu extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<TBLNhatKySaoLuu> listSaoLuu;
	private String result;
	
	private Integer saoLuuID;
	private int page = 1;
	private int totalPage = 0;
	private int totalRecord = 0;
	private int rowinpage = Const.ROW_IN_PAGE;
	private int endPage;
	
	
	public String execute() {
		memberShip = super.getMemberShip();
		QuanLyNguoiDungService nguoiDungSV = new QuanLyNguoiDungService();
		int start = 0;
		int limit = rowinpage;
		start = (page - 1) * limit;

		listSaoLuu = nguoiDungSV.getAllNhatKySaoLuu(start, limit);
		totalRecord = nguoiDungSV.countAllNhatKySaoLuu();
		
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
	
	public String executeGetListNhatKySaoLuu() {
		memberShip = super.getMemberShip();
		QuanLyNguoiDungService nguoiDungSV = new QuanLyNguoiDungService();
		int start = 0;
		int limit = rowinpage;
		start = (page - 1) * limit;

		listSaoLuu = nguoiDungSV.getAllNhatKySaoLuu(start, limit);
		totalRecord = nguoiDungSV.countAllNhatKySaoLuu();
		
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

	public String executeXoaNhatKySaoLuuDuLieu() {
		memberShip = super.getMemberShip();
		QuanLyNguoiDungService nguoiDungSV = new QuanLyNguoiDungService();
		GeneralService gv = new GeneralService();
		TBLNhatKySaoLuu nhatKySaoLuu = null;
		String thuMucLuuTru = WebUtil.getPathFolderSaveImages();
		if (saoLuuID != null) {
			try {
				nhatKySaoLuu = nguoiDungSV.getSaoLuuDuLieuByID(saoLuuID);
				String duongDanFile = thuMucLuuTru + "/" + nhatKySaoLuu.getDuongDan();
				File f = new File(duongDanFile);
				if(f.exists() && !f.isDirectory()) { 
				    // do something
					f.delete();
					gv.deleteObject(nhatKySaoLuu);
					result = Const.STRING_TRUE;
				} else {
					result = Const.STRING_FALSE;
				}
			} catch (Exception e) {
				// TODO: handle exception
				result = Const.STRING_FALSE;
			}
		} else {
			result = Const.STRING_FALSE;
		}
		return SUCCESS;
	}
	

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public List<TBLNhatKySaoLuu> getListSaoLuu() {
		return listSaoLuu;
	}


	public void setListSaoLuu(List<TBLNhatKySaoLuu> listSaoLuu) {
		this.listSaoLuu = listSaoLuu;
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


	public int getRowinpage() {
		return rowinpage;
	}


	public void setRowinpage(int rowinpage) {
		this.rowinpage = rowinpage;
	}


	public int getEndPage() {
		return endPage;
	}


	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public Integer getSaoLuuID() {
		return saoLuuID;
	}

	public void setSaoLuuID(Integer saoLuuID) {
		this.saoLuuID = saoLuuID;
	}
	
}
