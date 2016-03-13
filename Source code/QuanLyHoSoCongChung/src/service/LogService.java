package service;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import util.Const;
import util.HibernateUtil;
import entity.TBLLogDetail;
import entity.TBLLogHeThong;

public class LogService {

	public static List<String> unsecureFunctions;

	public static void setUnsecureFunctions(List<String> unsecureFunctions) {
		LogService.unsecureFunctions = unsecureFunctions;
	}

	public void insertLogView(String userName, String logForm,
			String logContent, String logFormName) {
		//if (!userName.equals(Const.ACCOUNT_MASTER)) {
			GeneralService gv = new GeneralService();
			TBLLogHeThong logHeThong = new TBLLogHeThong();
			logHeThong.setTenDangNhap(userName);
			logHeThong.setActionName(Const.ACTION_VIEW);
			logHeThong.setActionContent(logContent);
			logHeThong.setActionTime(Calendar.getInstance().getTime());
			logHeThong.setFormLamViecTen(logFormName);
			logHeThong.setFormLamViec(logForm);
			gv.createObject(logHeThong);
		//}

	}

	public void insertLogUpdate(String userName, String logForm,
			String logContent, String logFormName) {
		//if (!userName.equals(Const.ACCOUNT_MASTER)) {
			GeneralService gv = new GeneralService();
			TBLLogHeThong logHeThong = new TBLLogHeThong();
			logHeThong.setTenDangNhap(userName);
			logHeThong.setActionName(Const.ACTION_UPDATE);
			logHeThong.setActionContent(logContent);
			logHeThong.setActionTime(Calendar.getInstance().getTime());
			logHeThong.setFormLamViecTen(logFormName);
			logHeThong.setFormLamViec(logForm);
			gv.createObject(logHeThong);
		//}

	}
	
	public void insertLogDelete(String userName, String logForm,
			String logContent, String logFormName) {
		//if (!userName.equals(Const.ACCOUNT_MASTER)) {
			GeneralService gv = new GeneralService();
			TBLLogHeThong logHeThong = new TBLLogHeThong();
			logHeThong.setTenDangNhap(userName);
			logHeThong.setActionName(Const.ACTION_DELETE);
			logHeThong.setActionContent(logContent);
			logHeThong.setActionTime(Calendar.getInstance().getTime());
			logHeThong.setFormLamViecTen(logFormName);
			logHeThong.setFormLamViec(logForm);
			gv.createObject(logHeThong);
	//	}

	}

	public void insertLogUpdateLock(String userName, String logForm,
			String logContent, String logFormName, Integer value) {
		//if (!userName.equals(Const.ACCOUNT_MASTER)) {
			GeneralService gv = new GeneralService();
			TBLLogHeThong logHeThong = new TBLLogHeThong();
			logHeThong.setTenDangNhap(userName);
			logHeThong.setActionName(Const.ACTION_UPDATE);
			logHeThong.setActionContent(logContent);
			logHeThong.setActionTime(Calendar.getInstance().getTime());
			logHeThong.setFormLamViecTen(logFormName);
			logHeThong.setFormLamViec(logForm);
			gv.createObject(logHeThong);
		//}

	}
	
	public void insertLogAdd(String userName, String logForm,
			String logContent, String logFormName,
			HashMap<String, String> newData) {
		//if (!userName.equals(Const.ACCOUNT_MASTER)) {
			GeneralService gv = new GeneralService();
			TBLLogHeThong logHeThong = new TBLLogHeThong();
			logHeThong.setTenDangNhap(userName);
			logHeThong.setActionName(Const.ACTION_ADD);
			logHeThong.setActionContent(logContent);
			logHeThong.setActionTime(Calendar.getInstance().getTime());
			logHeThong.setFormLamViecTen(logFormName);
			logHeThong.setFormLamViec(logForm);
			Integer valueId = gv.createObject(logHeThong);

			TBLLogDetail logDetail = null;
			if (!newData.isEmpty()) {
				List<String> keyList = new ArrayList<String>(newData.keySet());
				for (String key : keyList) {
					logDetail = new TBLLogDetail();
					logDetail.setLogID(valueId);
					logDetail.setLogName(key);
					logDetail.setNoiDungCu("");
					logDetail.setNoiDungMoi(newData.get(key));
					gv.createObject(logDetail);
				}
			}
		//}
	}

	public void insertLogEdit(String userName, String logForm,
			String logContent, String logFormName,
			HashMap<String, String> dataChange) {
		//if (!userName.equals(Const.ACCOUNT_MASTER)) {
			GeneralService gv = new GeneralService();
			TBLLogHeThong logHeThong = new TBLLogHeThong();
			logHeThong.setTenDangNhap(userName);
			logHeThong.setActionName(Const.ACTION_EDIT);
			logHeThong.setActionContent(logContent);
			logHeThong.setActionTime(Calendar.getInstance().getTime());
			logHeThong.setFormLamViecTen(logFormName);
			logHeThong.setFormLamViec(logForm);
			Integer valueId = gv.createObject(logHeThong);

			TBLLogDetail logDetail = null;
			if (!dataChange.isEmpty()) {
				List<String> keyList = new ArrayList<String>(
						dataChange.keySet());
				for (String key : keyList) {
					logDetail = new TBLLogDetail();
					logDetail.setLogID(valueId);
					String strData = dataChange.get(key);
					String dataBefore = "";
					String dataAfter = "";
					if (strData.indexOf("##") > 0) {
						dataBefore = strData.split("##")[0];
					}
					String dataTemp = dataBefore + "##";
					if (dataTemp.length() != strData.length()) {
						dataAfter = strData.split("##")[1];
					}			
					logDetail.setLogName(key);
					logDetail.setNoiDungCu(dataBefore);
					logDetail.setNoiDungMoi(dataAfter);
					gv.createObject(logDetail);
				}
			}
		//}
	}
	
	@SuppressWarnings("unchecked")
	public List<TBLLogDetail> getLogDetailByLogID(Integer logID) {
		Session session;
		List<TBLLogDetail> result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session .createQuery("from TBLLogDetail where logID =:logID order by logName asc");
			query.setInteger("logID", logID);
			result = (List<TBLLogDetail>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
