package controller.danhmuc;

import java.util.List;

import service.DanhMucService;
import service.GeneralService;
import util.Const;
import controller.BaseAction;
import entity.DMHuyen;
import entity.DMTinh;

public class DanhMucHuyen extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private boolean update = false;
	
	private Integer danhmuc_maso;
	private String danhmuc_ma;
	private String danhmuc_ten;
	private String maBaoCao;
	private Integer tinh_maso;
	private Integer laBenhVien;
	
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
	private List<DMHuyen> listDanhMucHuyen;
	private List<DMTinh> listTinh;
	
	public String execute() throws Exception {		
		memberShip = super.getMemberShip();
		subAction = super.getSubAction();
		DanhMucService danhMucSV = new DanhMucService();
		listTinh = danhMucSV.getAllTinh(Const.UNLOCKED);
		isAdd = 1;
		return SUCCESS;
	}
	
	public String executeCheckExistDanhMucHuyenMa(){
		DanhMucService danhMucSV = new DanhMucService();
		if (danhMucSV.checkExistMaHuyen(danhmuc_maso, danhmuc_ma)) {
			result = Const.STRING_EXISTDATA;
		}		
		return SUCCESS;
	}
	
	public String executeCheckExistDanhMucHuyenTen(){
		DanhMucService danhMucSV = new DanhMucService();
		if (danhMucSV.checkExistTenHuyen(danhmuc_maso, danhmuc_ten)) {
			result = Const.STRING_EXISTDATA;
		}		
		return SUCCESS;
	}
	
	public String executeUpdateDanhMucHuyen(){
		GeneralService sv = new GeneralService();
		DanhMucService danhMucSV = new DanhMucService();
		DMHuyen huyen = null;
		try {
			if (danhmuc_maso != null) {
				huyen = danhMucSV.getHuyenByMaso(danhmuc_maso);						
			} else {
				huyen = new DMHuyen();
				huyen.setLocked(Const.UNLOCKED);
			}
			if (huyen != null) {
				huyen.setHuyenMa(danhmuc_ma);
				huyen.setHuyenTen(danhmuc_ten);
				huyen.setTinhID(tinh_maso);
				huyen.setMaBaoCao(maBaoCao);
				huyen.setLaBenhVien(laBenhVien);
			}
			if (danhmuc_maso != null) {
				sv.updateObject(huyen);
			} else {
				sv.createObject(huyen);
			}
			result = Const.STRING_TRUE;
		} catch (Exception e) {
			// TODO: handle exception
			result = Const.STRING_FALSE;
		}
		
		return SUCCESS;
	}
	
	public String executeDeleteDanhMucHuyen(){
		GeneralService sv = new GeneralService();
		DanhMucService danhMucSV = new DanhMucService();
		DMHuyen huyen = null;
		if (danhmuc_maso != null) {
			huyen = danhMucSV.getHuyenByMaso(danhmuc_maso);
			if (huyen != null) {
				try {
					sv.deleteObject(huyen);
					result = Const.STRING_TRUE;
				} catch (Exception e) {
					// TODO: handle exception
					result = Const.STRING_FALSE;
				}
			}
		}
		
		return SUCCESS;
	}
	
	public String executeUpdateStatusHuyen() throws Exception {
		DanhMucService danhMucSV = new DanhMucService();
		GeneralService gv = new GeneralService();
		DMHuyen  huyen = null;
		if (danhmuc_maso != null) {
			huyen = danhMucSV.getHuyenByMaso(danhmuc_maso);
			if (huyen != null) {
				if (huyen.getLocked() == Const.UNLOCKED) {
					huyen.setLocked(Const.LOCKED);
				} else {
					huyen.setLocked(Const.UNLOCKED);
				}	
				gv.updateObject(huyen);
				result = Const.STRING_TRUE;
			}
			
		}
		return SUCCESS;
	}
	
	
	public String executeGetListDanhMucHuyen() throws Exception {
		DanhMucService danhMucSV = new DanhMucService();
		int start = 0;
		int limit = rowinpage;
		start = (page - 1) * limit;
		listDanhMucHuyen = danhMucSV.getAllHuyenByTinhMaSo(start, limit, tinh_maso, laBenhVien);
		totalRecord = danhMucSV.countAllHuyenByTinhMaSo(tinh_maso, laBenhVien);
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

	public Integer getTinh_maso() {
		return tinh_maso;
	}

	public void setTinh_maso(Integer tinh_maso) {
		this.tinh_maso = tinh_maso;
	}

	public List<DMTinh> getListTinh() {
		return listTinh;
	}

	public void setListTinh(List<DMTinh> listTinh) {
		this.listTinh = listTinh;
	}

	public List<DMHuyen> getListDanhMucHuyen() {
		return listDanhMucHuyen;
	}

	public void setListDanhMucHuyen(List<DMHuyen> listDanhMucHuyen) {
		this.listDanhMucHuyen = listDanhMucHuyen;
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

	public String getMaBaoCao() {
		return maBaoCao;
	}

	public void setMaBaoCao(String maBaoCao) {
		this.maBaoCao = maBaoCao;
	}

	public void setDanhmuc_ten(String danhmuc_ten) {
		this.danhmuc_ten = danhmuc_ten;
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

	public Integer getLaBenhVien() {
		return laBenhVien;
	}

	public void setLaBenhVien(Integer laBenhVien) {
		this.laBenhVien = laBenhVien;
	}
	
}
