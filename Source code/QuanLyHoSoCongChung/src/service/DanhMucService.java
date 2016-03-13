package service;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import util.Const;
import util.HibernateUtil;
import authentication.MemberShip;
import entity.DMHuyen;
import entity.DMTinh;
import entity.DMXa;

public class DanhMucService {

	public static List<String> unsecureFunctions;

	public static void setUnsecureFunctions(List<String> unsecureFunctions) {
		DanhMucService.unsecureFunctions = unsecureFunctions;
	}
	
	public int countAllDonViDinh() {
		Session session;
		int result = 0;
		session = HibernateUtil.getSession();
		try {
			Query query = session .createQuery("select count (*) from DMDonViTinh");
			result = (Integer) query.list().get(0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@SuppressWarnings("unchecked")
	public List<DMXa> getAllXaByListXaID(List<Integer> listXaID, MemberShip memberShip) {
		Session session;
		List<DMXa> result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session .createQuery("from DMXa where xaID in (:listXaID)  order by xaTen asc");
			query.setParameterList("listXaID", listXaID);
			result = (List<DMXa>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}	
	
	@SuppressWarnings("unchecked")
	public List<DMXa> getAllXaByHuyenID(Integer huyenID, int locked) {
		Session session;
		List<DMXa> result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session .createQuery("from DMXa where locked =:locked and huyenID=:huyenID  order by xaTen ASC");
			query.setInteger("locked", locked);
			query.setInteger("huyenID", huyenID);
			result = (List<DMXa>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	public List<DMHuyen> getAllHuyenInListID(List<Integer> listHuyenID, MemberShip memberShip) {
		Session session;
		List<DMHuyen> result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session .createQuery("from DMHuyen where huyenID in (:listHuyenID)  order by huyenTen asc");
			query.setParameterList("listHuyenID", listHuyenID);
			result = (List<DMHuyen>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}	

	@SuppressWarnings("unchecked")
	public List<DMHuyen> getAllHuyenByMemberShip(int locked, MemberShip memberShip) {
		Session session;
		List<DMHuyen> result;
		session = HibernateUtil.getSession();
		result = null;
		String filer = "";
		if (!memberShip.getRole().equals(Const.ADMIN_PRIVALE)) {
			if (memberShip.getListHuyenQuanLy() != null && memberShip.getListHuyenQuanLy().size() != 0) {
				filer += " and huyenID in (:listHuyenQuanLy)";
			}
		}
		try {
			Query query = session .createQuery("from DMHuyen where tinhID =:tinhID and locked=:locked" + filer + " order by huyenTen asc");
			query.setInteger("tinhID", memberShip.getTinhQuanLyID());
			query.setInteger("locked", locked);
			if (!memberShip.getRole().equals(Const.ADMIN_PRIVALE)) {
				if (memberShip.getListHuyenQuanLy() != null && memberShip.getListHuyenQuanLy().size() != 0) {
					query.setParameterList("listHuyenQuanLy", memberShip.getListHuyenQuanLy());
				}
			}
			result = (List<DMHuyen>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}	
	
	
	public Integer getHuyenIDByName(String huyenTen) {
		Session session;
		Integer result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session .createQuery("select huyenID from DMHuyen where huyenTen =:huyenTen");
			query.setString("huyenTen", huyenTen);
			result = (Integer) query.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public String getHuyenTenByID(Integer huyenID) {
		Session session;
		String result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session .createQuery("select huyenTen from DMHuyen where huyenID =:huyenID");
			query.setInteger("huyenID", huyenID);
			result = (String) query.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	public List<DMXa> getAllXaByMembershipForSelect(Integer huyenID, int locked, MemberShip memberShip) {
		Session session;
		List<DMXa> result;
		session = HibernateUtil.getSession();
		result = null;
		String filter = "";
		if (!memberShip.getRole().equals(Const.ADMIN_PRIVALE)) {
			if (memberShip.getListXaQuanLy() != null && memberShip.getListXaQuanLy().size() != 0) {
				filter += " and xaID in (:listXaQuanLy)";
			}
		}	
		if (huyenID != null) {
			filter += " and huyenID =:huyenID";
		}
		try {
			Query query = session
					.createQuery("from DMXa where locked=:locked " + filter + " order by xaTen asc");
			query.setInteger("locked", locked);
			if (!memberShip.getRole().equals(Const.ADMIN_PRIVALE)) {
				if (memberShip.getListXaQuanLy() != null && memberShip.getListXaQuanLy().size() != 0) {
					query.setParameterList("listXaQuanLy", memberShip.getListXaQuanLy());
				}
			}	
			if (huyenID != null) {
				query.setInteger("huyenID", huyenID);
			}
			result = (List<DMXa>) query.list();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	public List<DMXa> getAllXaByMembership(List<Integer> listHuyenID, int locked, int start, int limit, MemberShip memberShip) {
		Session session;
		List<DMXa> result;
		session = HibernateUtil.getSession();
		result = null;
		String filter = "";
		if (!memberShip.getRole().equals(Const.ADMIN_PRIVALE)) {
			if (memberShip.getListXaQuanLy() != null && memberShip.getListXaQuanLy().size() != 0) {
				filter += " and xaID in (:listXaQuanLy)";
			}
		}	
		try {
			Query query = session
					.createQuery("from DMXa where huyenID in (:listHuyenID) and locked=:locked " + filter + " order by huyen.huyenID desc");
			query.setFirstResult(start);
			query.setMaxResults(limit);
			query.setParameterList("listHuyenID", listHuyenID);
			query.setInteger("locked", locked);
			
			if (!memberShip.getRole().equals(Const.ADMIN_PRIVALE)) {
				if (memberShip.getListXaQuanLy() != null && memberShip.getListXaQuanLy().size() != 0) {
					query.setParameterList("listXaQuanLy", memberShip.getListXaQuanLy());
				}
			}	
			result = (List<DMXa>) query.list();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public Integer countAllXaByMembership(List<Integer> listHuyenID, int locked, MemberShip memberShip) {
		Session session;
		Integer result = 0;
		session = HibernateUtil.getSession();
		String filter = "";
		if (!memberShip.getRole().equals(Const.ADMIN_PRIVALE)) {
			if (memberShip.getListXaQuanLy() != null && memberShip.getListXaQuanLy().size() != 0) {
				filter += " and xaID in (:listXaQuanLy)";
			}
		}	
		try {
			Query query = session
					.createQuery("select count(*) from DMXa where huyenID in (:listHuyenID) and locked=:locked " + filter + " order by huyen.huyenID desc");
			query.setParameterList("listHuyenID", listHuyenID);
			query.setInteger("locked", locked);
			
			if (!memberShip.getRole().equals(Const.ADMIN_PRIVALE)) {
				if (memberShip.getListXaQuanLy() != null && memberShip.getListXaQuanLy().size() != 0) {
					query.setParameterList("listXaQuanLy", memberShip.getListXaQuanLy());
				}
			}	
			result = (Integer) query.list().get(0);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public Integer getXaIDByName(String xaTen) {
		Session session;
		Integer result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session .createQuery("select xaID from DMXa where xaTen =:xaTen");
			query.setString("xaTen", xaTen);
			result = (Integer) query.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public String getXaTenByID(Integer xaID) {
		Session session;
		String result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session .createQuery("select xaTen from DMXa where xaID =:xaID");
			query.setInteger("xaID", xaID);
			result = (String) query.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	public List<DMTinh> getAllTinh(int locked) {
		Session session;
		List<DMTinh> result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session .createQuery("from DMTinh where locked =:locked order by tinhTen ASC");
			query.setInteger("locked", locked);
			result = (List<DMTinh>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	//Add
	//DMTinh
	public String getNameTinhByID(Integer tinhID) {
		Session session;
		String result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session .createQuery("select tinhTen from DMTinh where tinhID=:tinhID");
			query.setInteger("tinhID", tinhID);
			result = (String) query.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public String getNameHuyenByID(Integer huyenID) {
		Session session;
		String result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session .createQuery("select huyenTen from DMHuyen where huyenID=:huyenID");
			query.setInteger("huyenID", huyenID);
			result = (String) query.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public String getNameXaByID(Integer xaID) {
		Session session;
		String result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session .createQuery("select xaTen from DMXa where xaID=:xaID");
			query.setInteger("xaID", xaID);
			result = (String) query.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	/*
	 * Danh muc tinh begin
	 * */
	public DMTinh getTinhByMaso(Integer tinhID) {
		Session session;
		DMTinh result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session .createQuery("from DMTinh where tinhID=:tinhID");
			query.setInteger("tinhID", tinhID);
			result = (DMTinh) query.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	public List<DMTinh> getAllTinh(int start, int limit) {
		Session session;
		List<DMTinh> result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session .createQuery("from DMTinh");
			query.setFirstResult(start);
			query.setMaxResults(limit);
			result = (List<DMTinh>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int countAllTinh() {
		Session session;
		int result = 0;
		session = HibernateUtil.getSession();
		try {
			Query query = session .createQuery("select count (*) from DMTinh");
			result = (Integer) query.list().get(0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public boolean checkExistMaTinh(Integer tinhID, String tinhMa) {
		Session session;
		boolean result = false;
		int total = 0;
		String filter = "";
		session = HibernateUtil.getSession();
		if (tinhID != null && tinhID.intValue() != 0) {
			filter += " AND tinhID != " + tinhID;
		}
		
		try {
			Query query = session
					.createQuery("select count(*) from DMTinh where tinhMa=:tinhMa " + filter);
			query.setString("tinhMa", tinhMa);
			total = (Integer) query.list().get(0);
			if (total != 0) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public boolean checkExistTenTinh(Integer tinhID, String tinhTen) {
		Session session;
		boolean result = false;
		int total = 0;
		String filter = "";
		session = HibernateUtil.getSession();
		if (tinhID != null && tinhID.intValue() != 0) {
			filter += " AND tinhID != " + tinhID;
		}
		
		try {
			Query query = session
					.createQuery("select count(*) from DMTinh where tinhTen=:tinhTen " + filter);
			query.setString("tinhTen", tinhTen);
			total = (Integer) query.list().get(0);
			if (total != 0) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}	
	/*
	 * Danh muc tinh end
	 * */
	
	/*
	 * Danh muc huyen begin
	 * */
	public DMHuyen getHuyenByMaso(Integer huyenID) {
		Session session;
		DMHuyen result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session .createQuery("from DMHuyen where huyenID=:huyenID");
			query.setInteger("huyenID", huyenID);
			result = (DMHuyen) query.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	public List<DMHuyen> getAllHuyenByTinhMaSo(Integer tinhID) {
		Session session;
		List<DMHuyen> result;
		session = HibernateUtil.getSession();
		result = null;
		String filter = "";
		if (tinhID != null && tinhID != 0) {
			filter += " WHERE tinhID = " + tinhID;
		}
		try {
			Query query = session .createQuery("from DMHuyen" + filter);			
			result = (List<DMHuyen>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	public List<DMHuyen> getAllHuyenByTinhMaSo(int start, int limit, Integer tinhID) {
		Session session;
		List<DMHuyen> result;
		session = HibernateUtil.getSession();
		result = null;
		String filter = "";
		if (tinhID != null && tinhID != 0) {
			filter += " WHERE tinhID = " + tinhID;
		}
		try {
			Query query = session .createQuery("from DMHuyen" + filter);
			query.setFirstResult(start);
			query.setMaxResults(limit);
			result = (List<DMHuyen>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int countAllHuyenByTinhMaSo(Integer tinhID) {
		Session session;
		int result = 0;
		session = HibernateUtil.getSession();
		String filter = "";
		if (tinhID != null && tinhID != 0) {
			filter += " WHERE tinhID = " + tinhID;
		}
		try {
			Query query = session .createQuery("select count (*) from DMHuyen" + filter);
			result = (Integer) query.list().get(0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	public List<DMHuyen> getAllHuyenByTinhMaSo(int start, int limit, Integer tinhID, Integer laBenhVien) {
		Session session;
		List<DMHuyen> result;
		session = HibernateUtil.getSession();
		result = null;
		String filter = "";
		if (tinhID != null && tinhID.intValue() != 0) {
			filter += " AND tinhID =:tinhID ";
		}
		if (laBenhVien != null) {
			filter += " AND laBenhVien =:laBenhVien ";
		}
		try {
			Query query = session .createQuery("from DMHuyen WHERE 1 = 1" + filter);
			query.setInteger("tinhID", tinhID);
			if (laBenhVien != null) {
				query.setInteger("laBenhVien", laBenhVien);
			}
			query.setFirstResult(start);
			query.setMaxResults(limit);
			result = (List<DMHuyen>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int countAllHuyenByTinhMaSo(Integer tinhID, Integer laBenhVien) {
		Session session;
		int result = 0;
		session = HibernateUtil.getSession();
		String filter = "";
		if (tinhID != null && tinhID.intValue() != 0) {
			filter += " AND tinhID =:tinhID ";
		}
		if (laBenhVien != null) {
			filter += " AND laBenhVien =:laBenhVien ";
		}
		try {
			Query query = session .createQuery("select count (*) from DMHuyen WHERE 1 = 1 " + filter);
			query.setInteger("tinhID", tinhID);
			if (laBenhVien != null) {
				query.setInteger("laBenhVien", laBenhVien);
			}
			result = (Integer) query.list().get(0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	public boolean checkExistMaHuyen(Integer huyenID, String huyenMa) {
		Session session;
		boolean result = false;
		int total = 0;
		String filter = "";
		session = HibernateUtil.getSession();
		if (huyenID != null && huyenID.intValue() != 0) {
			filter += " AND huyenID != " + huyenID;
		}
		
		try {
			Query query = session
					.createQuery("select count(*) from DMHuyen where huyenMa=:huyenMa " + filter);
			query.setString("huyenMa", huyenMa);
			total = (Integer) query.list().get(0);
			if (total != 0) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public boolean checkExistTenHuyen(Integer huyenID, String huyenTen) {
		Session session;
		boolean result = false;
		int total = 0;
		String filter = "";
		session = HibernateUtil.getSession();
		if (huyenID != null && huyenID.intValue() != 0) {
			filter += " AND huyenID != " + huyenID;
		}
		
		try {
			Query query = session
					.createQuery("select count(*) from DMHuyen where huyenTen=:huyenTen " + filter);
			query.setString("huyenTen", huyenTen);
			total = (Integer) query.list().get(0);
			if (total != 0) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}	
	/*
	 * Danh muc huyen end
	 * */
	
	/*
	 * Danh muc DMXa begin
	 * */
	public DMXa getXaByMaso(Integer xaID) {
		Session session;
		DMXa result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session .createQuery("from DMXa where xaID=:xaID");
			query.setInteger("xaID", xaID);
			result = (DMXa) query.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	public List<DMXa> getAllXaByHuyenMaSo(Integer huyenID) {
		Session session;
		List<DMXa> result;
		session = HibernateUtil.getSession();
		result = null;
		String filter = "";
		if (huyenID != null && huyenID != 0) {
			filter += " WHERE huyenID = " + huyenID;
		}
		try {
			Query query = session .createQuery("from DMXa" + filter);			
			result = (List<DMXa>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	public List<DMXa> getAllXaByHuyenMaSo(int start, int limit, Integer huyenID, Integer laBenhVien) {
		Session session;
		List<DMXa> result;
		session = HibernateUtil.getSession();
		result = null;
		String filter = "";
		if (huyenID != null && huyenID != 0) {
			filter += " and huyenID = " + huyenID;
		}
		try {
			Query query = session .createQuery("from DMXa where laBenhVien=:laBenhVien " + filter);
			query.setInteger("laBenhVien", laBenhVien);
			query.setFirstResult(start);
			query.setMaxResults(limit);
			result = (List<DMXa>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int countAllXaByHuyenMaSo(Integer huyenID, Integer laBenhVien) {
		Session session;
		int result = 0;
		session = HibernateUtil.getSession();
		String filter = "";
		if (huyenID != null && huyenID != 0) {
			filter += " and huyenID = " + huyenID;
		}
		try {
			Query query = session .createQuery("select count (*) from DMXa where laBenhVien=:laBenhVien " + filter);
			query.setInteger("laBenhVien", laBenhVien);
			result = (Integer) query.list().get(0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public boolean checkExistMaXa(Integer xaID, String xaMa, Integer huyenID) {
		Session session;
		boolean result = false;
		int total = 0;
		String filter = "";
		session = HibernateUtil.getSession();
		if (xaID != null && xaID.intValue() != 0) {
			filter += " AND xaID != " + xaID;
		}
		
		try {
			Query query = session
					.createQuery("select count(*) from DMXa where xaMa=:xaMa  and huyenID =:huyenID" + filter);
			query.setString("xaMa", xaMa);
			query.setInteger("huyenID", huyenID);
			total = (Integer) query.list().get(0);
			if (total != 0) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public boolean checkExistTenXa(Integer xaID, String xaTen, Integer huyenID) {
		Session session;
		boolean result = false;
		int total = 0;
		String filter = "";
		session = HibernateUtil.getSession();
		if (xaID != null && xaID.intValue() != 0) {
			filter += " AND xaID != " + xaID;
		}
		
		try {
			Query query = session
					.createQuery("select count(*) from DMXa where xaTen=:xaTen and huyenID=:huyenID " + filter);
			query.setString("xaTen", xaTen);
			query.setInteger("huyenID", huyenID);
			total = (Integer) query.list().get(0);
			if (total != 0) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}	
}
