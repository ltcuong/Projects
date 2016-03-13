package controller.ajax;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import service.GeneralService;
import service.LogService;
import util.Const;
import util.WebUtil;
import controller.BaseAction;
import entity.TBLNhatKySaoLuu;

public class BackupDatabase extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String result;
	private static final String USERNAME_DATABASE = "usernamedb";
	private static final String PASSWORD_DATABASE = "passworddb";
	private static final String NAME_DATABASE = "databasename";
	private static final String FOLDERSETTUPDB = "pathsettupmysql";
	private static final String THUMUCCHUABACKUP = "BackupDatabase";
	
	@SuppressWarnings("resource")
	public String execute() {
		try {
			memberShip = super.getMemberShip();
			GeneralService gv = new GeneralService();
			SimpleDateFormat df = new SimpleDateFormat("dd-MM-yyyy hhmmss");
			SimpleDateFormat df2 = new SimpleDateFormat("dd-MM-yyyy");
			Date  current = Calendar.getInstance().getTime();
			String ngaySaoLuuFull = df.format(current);
			String ngaySaoLuu = df2.format(current);
			
			LogService logSV = new LogService();
			String userName = WebUtil.getValueConfigByCode(USERNAME_DATABASE);
			String password = WebUtil.getValueConfigByCode(PASSWORD_DATABASE);
			String dbName = WebUtil.getValueConfigByCode(NAME_DATABASE);
			String folderMYSQL = WebUtil.getValueConfigByCode(FOLDERSETTUPDB);
			//Duong dan chua file backup
			String folderSaveDB = WebUtil.getPathFolderSaveImages();
			folderSaveDB += "/" + THUMUCCHUABACKUP + "/" + ngaySaoLuu;
			String duongDanLuu = THUMUCCHUABACKUP + "/" + ngaySaoLuu;
			File theDir = new File(folderSaveDB);
			// if the directory does not exist, create it
			if (!theDir.exists()) {
				theDir.mkdirs();
			}
			String dbBackupName = "soyteninhthuan_" + ngaySaoLuuFull + ".sql";
			String path = folderSaveDB + "/" + dbBackupName;
			duongDanLuu += "/" + dbBackupName;
			byte[] data = getData("localhost", "3306", userName,
					password, dbName, folderMYSQL).getBytes("UTF8");
			File filedst = new File(path);
			FileOutputStream dest = new FileOutputStream(filedst);
			dest.write(data);
			
			//Luu database
			TBLNhatKySaoLuu nhatKySaoLuu = new TBLNhatKySaoLuu();
			nhatKySaoLuu.setTenSaoLuu(dbBackupName);
			nhatKySaoLuu.setNgaySaoLuu(current);
			nhatKySaoLuu.setTaiKhoanSaoLuu(memberShip.getTenDangNhap());
			nhatKySaoLuu.setDuongDan(duongDanLuu);
			gv.createObject(nhatKySaoLuu);
			
			result = Const.STRING_TRUE;
			logSV.insertLogUpdateLock(memberShip.getTenDangNhap(), "SaoLuuDuLieu", getText("log.saoluudulieuthanhcong"), getText("log.saoluudulieu"), 1);
			

		} catch (Exception e) {
			// TODO: handle exception
			result = Const.STRING_FALSE;
		}
		return SUCCESS;

	}

	static int BUFFER = 10485760;

	public static String getData(String host, String port, String user,
			String password, String db, String folderMYSQL) throws Exception {

		Process run = Runtime
				.getRuntime()
				.exec(folderMYSQL
						+ " --host="
						+ host
						+ " --port="
						+ port
						+ " --user="
						+ user
						+ " --password="
						+ password
						+ " --compact --databases --add-drop-table --complete-insert --extended-insert "
						+ "--skip-comments --skip-triggers " + db);
		InputStream in = run.getInputStream();
		BufferedReader br = new BufferedReader(new InputStreamReader(in));
		StringBuffer temp = new StringBuffer();
		int count;
		char[] cbuf = new char[BUFFER];

		while ((count = br.read(cbuf, 0, BUFFER)) != -1)
			temp.append(cbuf, 0, count);

		br.close();
		in.close();

		return temp.toString();
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

}
