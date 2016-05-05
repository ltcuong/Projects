package util;

import java.util.ArrayList;
import java.util.List;

public interface Const {	
	public static String SYSTEM_FILE_PATH = "";
	public static final String MEMBERSHIP = "memberShip";
	
	public static final int INDEX_COLUMN_MA_EXCEL = 20;
	public static final int INDEX_COLUMN_LOAICHITIEU_EXCEL = 21;
	public static String NUMBER_FORMAT = "###,###.##";
	public int ROW_PER_PAGE = 10;
	public int INCONFLIG = 0;
	public int CONFLIG = 1;
	public static final int LOCKED = 1;
	public static final int UNLOCKED = 0;
	public static final int ALLLOCKED = 2;
	public static final int NHOM_NHANGHI = 1;
	public static final int USE_TOKEN = 1;
	public static final int NOT_USE_TOKEN = 0;
	
	
	public static final int DAXOA = 1;
	public static final int CHUAXOA = 0;
	
	
	public static final int GIOITINH_NAM = 1;
	public static final int GIOITINH_NU = 2;

	public static final int ROW_IN_PAGE = 20;
	public static final int ROW_IN_PAGE_CAP_NHAT_DATA = 100;
	
	public static final int GET_ALL_ITEM = 1;
	public static final int NOT_GET_ALL_ITEM = 0;
	public static final String FORMAT_LOCATION_DATE = "dd/MM/yyyy";
	
	
	public static final String MASOTINH_PARM = "masotinh";
	public static final String PREFIXMD5_PARM = "prefixmd5";
	public static final String AUTOSEARCH_PARM = "findauto";
	public static final String TIME_PARM = "timeauto";
	public static final String PASSDEFAULT = "matkhaumacdinh";
	public static final String REPORT_PATH_FOLDER = "thumucchuabaocao";
	public static final String IMAGE_PATH_FOLDER = "thumucchuataptindinhkem";
	public static final String FORMAT_DATE_TIME = "ngaythangnam";
	
	
	
	public static final String STRING_FALSE = "false";
	public static final String STRING_TRUE = "true";
	public static final String STRING_EXISTDATA = "ExistData";
	
	public static final String ADMIN_PRIVALE = "admin";
	public static final String USER_PRIVALE = "user";
	
	public static final String PHANQUYEN_MODULE_USERS = "users";
	public static final String PHANQUYEN_MODULE_STAYS = "stays";
	public static final String PHANQUYEN_MODULE_LISTS = "lists";
	public static final String PHANQUYEN_MODULE_REPORTS = "reports";

	public static final String TIMKIEM_HOTEN = "hoten";
	public static final String TIMKIEM_GIOITINH = "gioitinh";
	public static final String TIMKIEM_NGAYSINH = "ngaysinh";
	public static final String TIMKIEM_DIACHI = "diachi";
	public static final String TIMKIEM_TINH = "tinhthuongtru";
	public static final String TIMKIEM_THANHPHOHUYEN = "thanhphohuyen";
	public static final String TIMKIEM_PHUONGXA = "phuongxa";
	public static final String TIMKIEM_GIAYTOTUYTHAN = "giaytotuythan";
	public static final String TIMKIEM_QUOCTICH = "quoctich";
	public static final String TIMKIEM_DANTOC = "dantoc";
	
	
	public static String MAIN_ACTION_NAME = "";

	
	public static final String PASSWORD_ZIP_REPORT = "p@ssWord";
	
	public static final List<String> memberOnline = new ArrayList<String>();	
    public static final List<String> memberOffline = new ArrayList<String>();
    public static final String SESSION_LOGGED_USER_ANOTHER = "useranother";
    public static final String SESSION_LOGGED_USER_NOT_TOKEN = "nottoken";
    
    public static final String ACTION_VIEW = "View";
    public static final String ACTION_ADD = "Add";
    public static final String ACTION_EDIT = "Edit";
    public static final String ACTION_DELETE = "Delete";
    public static final String ACTION_UPDATE = "Update";
    public static final String ACCOUNT_MASTER = "admin";
    public static final String LOGNAME_KHOA = "Khóa";
    
	public static final int CHITIEU_CONGDON = 1;
	public static final int KYLUAT = 2;
    
	public static String SESSION_THONGTIN_HOPDONG = "ThongTinHopDong";
	
	//Template 
}

