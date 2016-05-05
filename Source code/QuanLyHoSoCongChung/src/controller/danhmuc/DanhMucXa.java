package controller.danhmuc;

import java.util.List;

import service.DanhMucService;
import service.GeneralService;
import service.QuanLyNguoiDungService;
import util.Const;
import controller.BaseAction;
import entity.DMHuyen;
import entity.DMTinh;
import entity.DMXa;
import entity.TBLFunctionDetails;

public class DanhMucXa extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private boolean update = false;
	
	private Integer danhmuc_maso;
	private String danhmuc_ma;
	private String danhmuc_ten;
	private String maBaoCao;
	private Integer laBenhVien;
	
	
	private Integer huyen_maso;
	private Integer tinh_maso;
	
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
	private List<DMHuyen> listHuyen;
	private List<DMTinh> listTinh;
	private List<DMXa> listXa;
	
	public String execute() throws Exception {		
		memberShip = super.getMemberShip();
		subAction = super.getSubAction();		
		DanhMucService danhMucSV = new DanhMucService();
		listTinh = danhMucSV.getAllTinh(Const.UNLOCKED);
		if (listTinh != null && listTinh.size() != 0) {
			listHuyen = danhMucSV.getAllHuyenByTinhID(38, Const.UNLOCKED);
		}
		QuanLyNguoiDungService quanLyNguoiDungSV = new QuanLyNguoiDungService();
		TBLFunctionDetails gr = quanLyNguoiDungSV.getPrivaleOnPage(memberShip, subAction);
		if (gr != null) {
			isAdd = gr.getIsAdd();
		}
		return SUCCESS;
	}
	
	public String executeCheckExistDanhMucXaMa(){
		DanhMucService danhMucSV = new DanhMucService();
		if (danhMucSV.checkExistMaXa(danhmuc_maso, danhmuc_ma, huyen_maso)) {
			result = Const.STRING_EXISTDATA;
		}		
		return SUCCESS;
	}
	
	public String executeCheckExistDanhMucXaTen(){
		DanhMucService danhMucSV = new DanhMucService();
		if (danhMucSV.checkExistTenXa(danhmuc_maso, danhmuc_ten, huyen_maso)) {
			result = Const.STRING_EXISTDATA;
		}		
		return SUCCESS;
	}
	
	public String executeUpdateDanhMucXa(){
		GeneralService sv = new GeneralService();
		DanhMucService danhMucSV = new DanhMucService();
		DMXa dmXa = null;
		try {
			if (danhmuc_maso != null) {
				dmXa = danhMucSV.getXaByMaso(danhmuc_maso);						
			} else {
				dmXa = new DMXa();
				dmXa.setLocked(Const.UNLOCKED);
			}
			if (dmXa != null) {
				dmXa.setXaMa(danhmuc_ma);
				dmXa.setXaTen(danhmuc_ten);
				dmXa.setHuyenID(huyen_maso);
				dmXa.setMaBaoCao(maBaoCao);
			}
			if (danhmuc_maso != null) {
				sv.updateObject(dmXa);
			} else {
				sv.createObject(dmXa);
			}
			result = Const.STRING_TRUE;
		} catch (Exception e) {
			// TODO: handle exception
			result = Const.STRING_FALSE;
		}
		
		return SUCCESS;
	}
	
	public String executeDeleteDanhMucXa(){
		GeneralService sv = new GeneralService();
		DanhMucService danhMucSV = new DanhMucService();
		DMXa hinhThuc = null;
		if (danhmuc_maso != null) {
			hinhThuc = danhMucSV.getXaByMaso(danhmuc_maso);
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
	
	public String executeUpdateStatusXa() throws Exception {
		DanhMucService danhMucSV = new DanhMucService();
		GeneralService gv = new GeneralService();
		DMXa  hinhThuc = null;
		if (danhmuc_maso != null) {
			hinhThuc = danhMucSV.getXaByMaso(danhmuc_maso);
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
	
	
	public String executeGetListDanhMucXa() throws Exception {
		memberShip = super.getMemberShip();
		subAction = super.getSubAction();	
		DanhMucService danhMucSV = new DanhMucService();
		int start = 0;
		int limit = rowinpage;
		start = (page - 1) * limit;
		listXa = danhMucSV.getAllXaByHuyenMaSo(start, limit, huyen_maso, laBenhVien);
		totalRecord = danhMucSV.countAllXaByHuyenMaSo(huyen_maso, laBenhVien);
		totalPage = totalRecord / limit;
		if (totalRecord % limit > 0) {
			totalPage++;
		}
		endPage = page + 9;
		if (endPage > totalPage) {
			endPage = totalPage;
		}
		
		//Phan quyen
		QuanLyNguoiDungService quanLyNguoiDungSV = new QuanLyNguoiDungService();
		TBLFunctionDetails gr = quanLyNguoiDungSV.getPrivaleOnPage(memberShip, subAction);
		if (gr != null) {
			isEdit = gr.getIsEdit();
			isDelete = gr.getIsDelete();
		}
		
		return SUCCESS;
	}

	
	
	
	public Integer getLaBenhVien() {
		return laBenhVien;
	}

	public void setLaBenhVien(Integer laBenhVien) {
		this.laBenhVien = laBenhVien;
	}

	public int getIsAdd() {
		return isAdd;
	}

	public void setIsAdd(int isAdd) {
		this.isAdd = isAdd;
	}

	public Integer getHuyen_maso() {
		return huyen_maso;
	}

	public void setHuyen_maso(Integer huyen_maso) {
		this.huyen_maso = huyen_maso;
	}

	public List<DMHuyen> getListHuyen() {
		return listHuyen;
	}

	public void setListHuyen(List<DMHuyen> listHuyen) {
		this.listHuyen = listHuyen;
	}

	public List<DMXa> getListXa() {
		return listXa;
	}

	public void setListXa(List<DMXa> listXa) {
		this.listXa = listXa;
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
