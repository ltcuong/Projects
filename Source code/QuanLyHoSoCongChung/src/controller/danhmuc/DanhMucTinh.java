package controller.danhmuc;

import java.util.List;

import service.DanhMucService;
import service.GeneralService;
import util.Const;
import controller.BaseAction;
import entity.DMTinh;

public class DanhMucTinh extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private boolean update = false;
	
	private Integer danhmuc_maso;
	private String danhmuc_ma;
	private String danhmuc_ten;
	private String danhmuc_tentp;
	private String maBaoCao;
	
	private String result;
	private int isAdd;
	private int isEdit;
	private int isDelete;
	//Paging
	private int page = 1;
	private int totalPage = 0;
	private int totalRecord = 0;
	private int rowinpage = Const.ROW_IN_PAGE;
	private int endPage;
	private List<DMTinh> listDanhMucTinh;
	
	public String execute() throws Exception {		
		memberShip = super.getMemberShip();
		isAdd = 1;
		return SUCCESS;
	}
	
	public String executeCheckExistDanhMucTinhMa(){
		DanhMucService danhMucSV = new DanhMucService();
		if (danhMucSV.checkExistMaTinh(danhmuc_maso, danhmuc_ma)) {
			result = Const.STRING_EXISTDATA;
		}		
		return SUCCESS;
	}
	
	public String executeCheckExistDanhMucTinhTen(){
		DanhMucService danhMucSV = new DanhMucService();
		if (danhMucSV.checkExistTenTinh(danhmuc_maso, danhmuc_ten)) {
			result = Const.STRING_EXISTDATA;
		}		
		return SUCCESS;
	}
	
	public String executeUpdateDanhMucTinh(){
		GeneralService sv = new GeneralService();
		DanhMucService danhMucSV = new DanhMucService();
		DMTinh tinh = null;
		try {
			if (danhmuc_maso != null) {
				tinh = danhMucSV.getTinhByMaso(danhmuc_maso);						
			} else {
				tinh = new DMTinh();
				tinh.setLocked(Const.UNLOCKED);
			}
			if (tinh != null) {
				tinh.setTinhMa(danhmuc_ma);
				tinh.setTinhTen(danhmuc_ten);
				tinh.setTenThanhPho(danhmuc_tentp);
				tinh.setMaBaoCao(maBaoCao);
			}
			if (danhmuc_maso != null) {
				sv.updateObject(tinh);
			} else {
				sv.createObject(tinh);
			}
			result = Const.STRING_TRUE;
		} catch (Exception e) {
			// TODO: handle exception
			result = Const.STRING_FALSE;
		}
		
		return SUCCESS;
	}
	
	public String executeDeleteDanhMucTinh(){
		GeneralService sv = new GeneralService();
		DanhMucService danhMucSV = new DanhMucService();
		DMTinh hinhThuc = null;
		if (danhmuc_maso != null) {
			hinhThuc = danhMucSV.getTinhByMaso(danhmuc_maso);
			if (hinhThuc != null) {
				try {
					sv.deleteObject(hinhThuc);
					result = Const.STRING_TRUE;
				} catch (Exception e) {
					// TODO: handle exception
					result = Const.STRING_FALSE;
				}
			}
		}
		
		return SUCCESS;
	}
	
	public String executeUpdateStatusTinh() throws Exception {
		DanhMucService danhMucSV = new DanhMucService();
		GeneralService gv = new GeneralService();
		DMTinh  hinhThuc = null;
		if (danhmuc_maso != null) {
			hinhThuc = danhMucSV.getTinhByMaso(danhmuc_maso);
			if (hinhThuc != null) {
				if (hinhThuc.getLocked() == Const.UNLOCKED) {
					hinhThuc.setLocked(Const.LOCKED);
				} else {
					hinhThuc.setLocked(Const.UNLOCKED);
				}	
				gv.updateObject(hinhThuc);
				result = Const.STRING_TRUE;
			}
			
		}
		return SUCCESS;
	}
	
	
	public String executeGetListDanhMucTinh() throws Exception {
		DanhMucService danhMucSV = new DanhMucService();
		int start = 0;
		int limit = rowinpage;
		start = (page - 1) * limit;
		listDanhMucTinh = danhMucSV.getAllTinh(start, limit);		
		totalRecord = danhMucSV.countAllTinh();
		totalPage = totalRecord / limit;
		if (totalRecord % limit > 0) {
			totalPage++;
		}
		endPage = page + 9;
		if (endPage > totalPage) {
			endPage = totalPage;
		}
		isAdd = 1;
		isEdit = 1;
		isDelete = 1;
		return SUCCESS;
	}
	
	
	public int getIsAdd() {
		return isAdd;
	}

	public void setIsAdd(int isAdd) {
		this.isAdd = isAdd;
	}

	public String getDanhmuc_tentp() {
		return danhmuc_tentp;
	}

	public void setDanhmuc_tentp(String danhmuc_tentp) {
		this.danhmuc_tentp = danhmuc_tentp;
	}

	public List<DMTinh> getListDanhMucTinh() {
		return listDanhMucTinh;
	}

	public void setListDanhMucTinh(List<DMTinh> listDanhMucTinh) {
		this.listDanhMucTinh = listDanhMucTinh;
	}

	public Integer getDanhmuc_maso() {
		return danhmuc_maso;
	}

	public void setDanhmuc_maso(Integer danhmuc_maso) {
		this.danhmuc_maso = danhmuc_maso;
	}

	public String getDanhmuc_ma() {
		return danhmuc_ma;
	}

	public void setDanhmuc_ma(String danhmuc_ma) {
		this.danhmuc_ma = danhmuc_ma;
	}

	public String getDanhmuc_ten() {
		return danhmuc_ten;
	}

	public void setDanhmuc_ten(String danhmuc_ten) {
		this.danhmuc_ten = danhmuc_ten;
	}
	
	public String getMaBaoCao() {
		return maBaoCao;
	}

	public void setMaBaoCao(String maBaoCao) {
		this.maBaoCao = maBaoCao;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public boolean isUpdate() {
		return update;
	}

	public void setUpdate(boolean update) {
		this.update = update;
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
	public int getIsEdit() {
		return isEdit;
	}

	public void setIsEdit(int isEdit) {
		this.isEdit = isEdit;
	}

	public int getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}
}
