package authentication;

import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.StrutsStatics;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import service.QuanLyNguoiDungService;
import util.Const;
import util.SystemMenu;
import util.WebUtil;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.util.TextParseUtil;

import entity.TBLTaiKhoan;

public class AuthenticationInterceptor extends AbstractInterceptor implements ServletResponseAware, ServletRequestAware, SystemMenu {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected HttpServletRequest servletRequest;
	protected HttpServletResponse servletResponse;
	private Set<?> excludeActions = Collections.EMPTY_SET;
	private Map<String, Set> roleActions = Collections.EMPTY_MAP;
	
	private List<String> chiTieu = Arrays.asList("CTTrangChu","CTQuanLyNhomChiTieu","CTQuanLyLoaiChiTieu","CTQuanLyDuLieuChiTieu",
			"CTTraCuuChiTieu","CTQuanLyThoiGianNhapLieu","CTQuanLyDuLieuChiTieuTuFile", "CTXemTruocDuLieuImport","CTCapNhatTepTinDinhKem");
	private List<String> baoCao = Arrays.asList("BCTrangChu","BCQuanLyCauHinhBaoCao","BCDanhSachBaoCao","BCThongKeBaoCao","BCChiTietCauHinhBaoCao", "BCQuanLyFileDinhKem");
	private List<String> danhMuc = Arrays.asList("DanhMucTinh","DanhMucHuyen","DanhMucXa","DanhMucDonViTinh","DanhMucDonViTrucThuocHuyen","TrangChu", "DanhMucDonViTrucThuocTinh");
	private List<String> huongDan = Arrays.asList("HDTrangChu","HDTaiFileImport");
	
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {		
		ActionContext context = invocation.getInvocationContext();
		HttpServletResponse response = (HttpServletResponse) context.get(StrutsStatics.HTTP_RESPONSE);
		Map<String, Object> session = context.getSession();
		String actionName = context.getName();
		MemberShip memberShip = (MemberShip) session.get(Const.MEMBERSHIP);		
		if (memberShip != null) {
			if (checkAccountOffline(memberShip.getTenDangNhap())) {		
				session.put(Const.SESSION_LOGGED_USER_ANOTHER, "1");
				return invocation.invoke();
			} else if (memberShip.getIsTokenOnline() != null && memberShip.getIsTokenOnline().intValue() == 1) {
				QuanLyNguoiDungService tkSV = new QuanLyNguoiDungService();
				TBLTaiKhoan user = tkSV.getTaiKhoanByUserName(memberShip.getTenDangNhap());
				if (user.getLastTokenOnline() != null) {
					double lastSecondOnline = WebUtil.diff2HourBySecond(user.getLastTokenOnline(), Calendar.getInstance().getTime());
					if (lastSecondOnline > 0.5) {
						session.put(Const.SESSION_LOGGED_USER_NOT_TOKEN, "1");
						return invocation.invoke();
					}
				}				
			}
		}
		
		if(memberShip == null){
			memberShip = new MemberShip();
			session.put(Const.MEMBERSHIP, memberShip);
		}
		
		if(excludeActions.contains("*"))
			return invocation.invoke();
		if(memberShip.getTenDangNhap() == null){
			if(!actionName.equals("LoginAdmin"))
				response.sendRedirect("../LoginAdmin");
			return invocation.invoke();
		}
		if (memberShip != null) {
			if (!WebUtil.taiKhoanSV.checkLinkSubMenu(memberShip, actionName)) {
				if(!actionName.equals("LoginAdmin")) {
					response.sendRedirect("../LoginAdmin");	
				}			
				return invocation.invoke();
			}	
		}
		
		//Set active menu		
		if (memberShip != null) {
			if (!actionName.equals("Cront")) {
				memberShip.setActionMenu("QuanLyNguoiDung");
				if (chiTieu.contains(actionName)) {
					memberShip.setActionMenu("ChiTieu");
				}
				if (baoCao.contains(actionName)) {
					memberShip.setActionMenu("BaoCao");
				}
				if (danhMuc.contains(actionName)) {
					memberShip.setActionMenu("DanhMuc");
				}
				if (huongDan.contains(actionName)) {
					memberShip.setActionMenu("HuongDan");
				}
				
				memberShip.setActionSubMenu(actionName);
			}
			
		}	
		return invocation.invoke();
	}

	
	public void setExcludeActions(String values) {
		if (values != null) {
			this.excludeActions = TextParseUtil.commaDelimitedStringToSet(values);
		}
	}
		
	@SuppressWarnings("rawtypes")
	public void setRoleActions(String roleActionsParam) {
		StringTokenizer roleActionsParamTokenizer = new StringTokenizer(
				roleActionsParam, ";");
		this.roleActions = new HashMap<String, Set>(roleActionsParamTokenizer.countTokens());

		while (roleActionsParamTokenizer.hasMoreTokens()) {
			String roleActionArray[] = roleActionsParamTokenizer.nextToken().trim().split(":");
			if (roleActionArray.length == 2) {
				String role = roleActionArray[0].toLowerCase();
				Set actions = TextParseUtil
						.commaDelimitedStringToSet(roleActionArray[1]);

				this.roleActions.put(role, actions);
			}

		}
	}


	@Override
	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;		
	}

	@Override
	public void setServletResponse(HttpServletResponse servletResponse) {
		this.servletResponse = servletResponse;		
	}
	
	public boolean hasSufficientRole(String userRole, String actionName) {
		if (userRole != null) {			
			StringTokenizer userRoleTokenizer = new StringTokenizer(userRole,",");
			while (userRoleTokenizer.hasMoreTokens()) {
				String findRole = userRoleTokenizer.nextToken().trim();
				
				if (this.roleActions.containsKey(findRole)) {
					if (this.roleActions.get(findRole).contains("*") || this.roleActions.get(findRole).contains(actionName)) {
						return true;
					}
				}
			}
		}

		return false;
	}

	public boolean checkAccountOffline(String userName) {
		boolean result = false;

		HttpServletRequest httpSession = ServletActionContext.getRequest();
		String sessionID = httpSession.getRequestedSessionId();

		if (Const.memberOffline != null) {
			for (int i = 0; i < Const.memberOffline.size(); i++) {
				String key = Const.memberOffline.get(i);
				String[] user = key.split("@");
				if (user != null && user.length == 2 && sessionID != null) {
					if (user[1] != null && user[0] != null && userName != null) {
						if (userName.equals(user[1]) && sessionID.equals(user[0])) {
							result = true;
							Const.memberOffline.remove(i);
						}	
					}
					
				}
			}
		}
		
		return result;
	}
}
