package controller.quanlynguoidung;

import java.util.List;

import service.GeneralService;
import service.QuanLyNguoiDungService;
import util.Const;
import util.Util;
import controller.BaseAction;
import entity.TBLFunctionDetails;
import entity.TBLThamSoHeThong;

public class ThamSoHeThong extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private boolean update = false;
	private List<TBLThamSoHeThong> listConfig;
	private String param_value;
	private String param_ma;
	private String result;
	private int isEdit;
	
	public String execute() throws Exception {		
		memberShip = super.getMemberShip();
		subAction = super.getSubAction();
		QuanLyNguoiDungService taikhoanSv = new QuanLyNguoiDungService();		
		TBLFunctionDetails gr = taikhoanSv.getPrivaleOnPage(memberShip, subAction);
		isEdit = gr.getIsEdit();		
		return SUCCESS;
	}
	
	public String executeUpdateThamSoHeThong(){
		GeneralService sv = new GeneralService();
		QuanLyNguoiDungService confSV = new QuanLyNguoiDungService();
		TBLThamSoHeThong conf = null;
		TBLThamSoHeThong conf01 = null;
		conf = confSV.getConfigByParam(param_ma);
		conf01 = confSV.getConfigByParam(Const.PASSDEFAULT);
		if (conf != null) {
			conf.setParamValue(param_value);
			sv.updateObject(conf);
			if (param_ma.equals("prefixmd5")) {
				//Reset password
				 if (conf01 != null) {
					 String matKhau = conf01.getParamValue();
					 if (matKhau != null && !matKhau.isEmpty()) {
						 String md5mk = Util.md5(param_value + matKhau);
						 confSV.updateTaiKhoanInfo(md5mk);
					 }
				 }
			}
			result = Const.STRING_TRUE;
		}		
		return SUCCESS;
	}

	
	public int getIsEdit() {
		return isEdit;
	}

	public void setIsEdit(int isEdit) {
		this.isEdit = isEdit;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getParam_value() {
		return param_value;
	}

	public void setParam_value(String param_value) {
		this.param_value = param_value;
	}

	public String getParam_ma() {
		return param_ma;
	}

	public void setParam_ma(String param_ma) {
		this.param_ma = param_ma;
	}

	public boolean isUpdate() {
		return update;
	}

	public void setUpdate(boolean update) {
		this.update = update;
	}

	public List<TBLThamSoHeThong> getListConfig() {
		return listConfig;
	}

	public void setListConfig(List<TBLThamSoHeThong> listConfig) {
		this.listConfig = listConfig;
	}

}
