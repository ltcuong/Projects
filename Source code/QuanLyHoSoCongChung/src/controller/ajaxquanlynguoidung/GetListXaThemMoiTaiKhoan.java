package controller.ajaxquanlynguoidung;

import java.util.ArrayList;
import java.util.List;

import service.DanhMucService;
import util.Const;
import controller.BaseAction;
import entity.DMXa;

public class GetListXaThemMoiTaiKhoan extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String listHuyenStr;
	private List<DMXa> listXa;
	// Paging
	private int page = 1;
	private int totalPage = 0;
	private int totalRecord = 0;
	private int rowinpage = 10;
	private int endPage;
	
	public String execute() {
		memberShip = super.getMemberShip();
		DanhMucService danhMucSV = new DanhMucService();
		if (memberShip != null) {
			if (listHuyenStr != null && !listHuyenStr.isEmpty()) {
				String[] listHuyenArr = listHuyenStr.split(",");
				List<Integer> listHuyenID = new ArrayList<>();
				for (int i = 0; i < listHuyenArr.length; i++) {
					if (!listHuyenArr[i].trim().isEmpty()) {
						Integer huyenID = Integer.parseInt(listHuyenArr[i].trim());
						listHuyenID.add(huyenID);
					}
				}
				
				int start = 0;
				int limit = rowinpage;
				start = (page - 1) * limit;
				listXa = danhMucSV.getAllXaByMembership(listHuyenID, Const.UNLOCKED,start, limit, memberShip);
				totalRecord = danhMucSV.countAllXaByMembership(listHuyenID, Const.UNLOCKED, memberShip);
				totalPage = totalRecord / limit;
				if (totalRecord % limit > 0) {
					totalPage++;
				}
				endPage = page + 9;
				if (endPage > totalPage) {
					endPage = totalPage;
				}
			}
		}
		
		return SUCCESS;

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

	public String getListHuyenStr() {
		return listHuyenStr;
	}

	public void setListHuyenStr(String listHuyenStr) {
		this.listHuyenStr = listHuyenStr;
	}

	public List<DMXa> getListXa() {
		return listXa;
	}

	public void setListXa(List<DMXa> listXa) {
		this.listXa = listXa;
	}
}
