package controller.ajaxquanlynguoidung;

import java.util.List;

import service.LogService;
import controller.BaseAction;
import entity.TBLLogDetail;

public class GetListChinhSuaNguoiDung extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer logID;
	private List<TBLLogDetail> listLogDetail;	
	
	public String execute() {
		
		LogService logSV = new LogService();
		if (logID != null) {
			listLogDetail = logSV.getLogDetailByLogID(logID);
		}
		return SUCCESS;

	}

	public Integer getLogID() {
		return logID;
	}

	public void setLogID(Integer logID) {
		this.logID = logID;
	}

	public List<TBLLogDetail> getListLogDetail() {
		return listLogDetail;
	}

	public void setListLogDetail(List<TBLLogDetail> listLogDetail) {
		this.listLogDetail = listLogDetail;
	}
	
}
