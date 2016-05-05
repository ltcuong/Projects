package controller.quanlyhopdong;

import java.util.List;

import service.DanhMucService;
import service.GeneralService;
import service.HopDongService;
import util.Const;
import controller.BaseAction;
import entity.TEMTuKhoaLoaiTaiSan;

public class HDCapNhatMauHopDong extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String result;
	private Integer templateID;
	private String noiDungTemplate;
	
	private List<TEMTuKhoaLoaiTaiSan> listTuKhoa;
	
	
	public String execute() throws Exception {
		memberShip = super.getMemberShip();		
		HopDongService hopDongSV = new HopDongService();
		return SUCCESS;
	}
	
	public String executeCapNhatThongTinMauHopDong() {
		try {
			memberShip = super.getMemberShip();		
			GeneralService gv = new GeneralService();
			HopDongService hopDongSV = new HopDongService();
			
		} catch (Exception e) {
			// TODO: handle exception
			result = Const.STRING_FALSE;
		}
		return SUCCESS;
	}

	public String executeGetContentHopDongByLoaiHopDongChiTiet() {
		memberShip = super.getMemberShip();		
		HopDongService hopDongSV = new HopDongService();
		if (templateID != null) {
			//noiDungTemplate = hopDongSV.getContentTemplateByMaID(templateID);
		}
		return SUCCESS;
	}

	public String executeGetListTuKhoaTemplate() {
		memberShip = super.getMemberShip();		
		DanhMucService danhMucSV = new DanhMucService();
		if (templateID != null) {
			listTuKhoa = danhMucSV.getAllListTuKhoaByTempalte(templateID);
		}
		
		return SUCCESS;
	}
	
	
	public List<TEMTuKhoaLoaiTaiSan> getListTuKhoa() {
		return listTuKhoa;
	}

	public void setListTuKhoa(List<TEMTuKhoaLoaiTaiSan> listTuKhoa) {
		this.listTuKhoa = listTuKhoa;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public Integer getTemplateID() {
		return templateID;
	}

	public void setTemplateID(Integer templateID) {
		this.templateID = templateID;
	}
	public String getNoiDungTemplate() {
		return noiDungTemplate;
	}

	public void setNoiDungTemplate(String noiDungTemplate) {
		this.noiDungTemplate = noiDungTemplate;
	}
}
