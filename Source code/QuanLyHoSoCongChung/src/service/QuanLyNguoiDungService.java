package service;

import java.math.BigDecimal;
import java.math.MathContext;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import util.Const;
import util.HibernateUtil;
import authentication.MemberShip;
import entity.DMHuyen;
import entity.DMXa;
import entity.TBLFunctionDetails;
import entity.TBLFunctions;
import entity.TBLLogHeThong;
import entity.TBLNhatKySaoLuu;
import entity.TBLNhomTaiKhoan;
import entity.TBLTaiKhoan;
import entity.TBLThamSoHeThong;

public class QuanLyNguoiDungService {

	public static List<String> unsecureFunctions;

	public static void setUnsecureFunctions(List<String> unsecureFunctions) {
		QuanLyNguoiDungService.unsecureFunctions = unsecureFunctions;
	}
	
	public Integer checkRoleNguoiDung(String tenDangNhap) {
		Session session;
		Integer kq = null;
		if (tenDangNhap == null || tenDangNhap.isEmpty()) {
			return kq;
		}
		TBLTaiKhoan taiKhoan = null;
		session = HibernateUtil.getSession();
		try {
			Query query = session
					.createQuery("from TBLTaiKhoan where tenDangNhap=:tenDangNhap");
			query.setString("tenDangNhap", tenDangNhap);
			taiKhoan = (TBLTaiKhoan) query.uniqueResult();
			if (taiKhoan != null && !tenDangNhap.equals(Const.ADMIN_PRIVALE)) {
				//1: Chi tieu don vi thuoc huyen, 2: chi tieu don vi thuoc tinh, 3: chi tieu xa, 4: chi tieu huyen, 5: chi tieu tinh
				DanhMucService danhMucSV = new DanhMucService();
				List<Integer> listHuyenQuanLy = null;
				List<Integer> listXaQuanLy = null;
				int taiKhoanBenhVienThuocTinh = 0;
				int laTaiKhoanBenhVienThuocHuyen = 0;
				String listHuyenStr = taiKhoan.getListHuyenQuanLy();
				if (listHuyenStr != null && !listHuyenStr.isEmpty()) {
					String[] huyenArr = listHuyenStr.split(",");
					listHuyenQuanLy = new ArrayList<>();
					if (huyenArr.length == 1) {
						Integer huyenID = Integer.parseInt(huyenArr[0]);
						DMHuyen huyenQuanLy = danhMucSV.getHuyenByMaso(huyenID);
						if (huyenQuanLy.getLaBenhVien().intValue() == 1) {
							taiKhoanBenhVienThuocTinh = 1;
						}
						listHuyenQuanLy.add(huyenID);
					} else {
						for (int i = 0; i < huyenArr.length; i++) {
							if (!huyenArr[i].trim().isEmpty()) {
								Integer huyenID = Integer.parseInt(huyenArr[i]);
								listHuyenQuanLy.add(huyenID);
							}
						}
					}
				}
				String listXaStr = taiKhoan.getListXaQuanLy();
				if (listXaStr != null && !listXaStr.isEmpty()) {
					String[] xaArr = listXaStr.split(",");
					listXaQuanLy = new ArrayList<>();
					for (int i = 0; i < xaArr.length; i++) {
						if (!xaArr[i].trim().isEmpty()) {
							Integer xaID = Integer.parseInt(xaArr[i]);
							DMXa xaQuanLy = danhMucSV.getXaByMaso(xaID);
							if (xaQuanLy.getLaBenhVien().intValue() == 1) {
								laTaiKhoanBenhVienThuocHuyen = 1;
							}
							listXaQuanLy.add(xaID);
						}
					}
				}
				if (taiKhoan.getAllXa().intValue() == 1) {
					if (listHuyenQuanLy.size() == 1) {
						if (taiKhoanBenhVienThuocTinh == 1) {
							//La tai khoan benh vien thuoc tinh
							kq = 2;
						} else {
							//La tai khoan huyen
							kq = 4;
						}
					} else {
						//La tai khoan tinh
						kq = 5;
					}
				} else {
					//Tai khoan benh vien
					if (laTaiKhoanBenhVienThuocHuyen == 1) {
						kq = 1;
					} else {
						//tai khoan la xa
						kq = 3;
					}
				}
			
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return kq;
	}

	
	public TBLNhatKySaoLuu getSaoLuuDuLieuByID(Integer saoLuuID) {
		TBLNhatKySaoLuu tk = null;
		Session session;
		session = HibernateUtil.getSession();
		try {
			Query query = session
					.createQuery("from TBLNhatKySaoLuu where saoLuuID =:saoLuuID");
			query.setInteger("saoLuuID", saoLuuID);
			tk = (TBLNhatKySaoLuu) query.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return tk;
	}
	
	@SuppressWarnings("unchecked")
	public List<TBLNhatKySaoLuu> getAllNhatKySaoLuu(int start, int limit) {
		Session session;
		List<TBLNhatKySaoLuu> result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session
					.createQuery("from TBLNhatKySaoLuu order by ngaySaoLuu desc");
			query.setFirstResult(start);
			query.setMaxResults(limit);
			result = (List<TBLNhatKySaoLuu>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int countAllNhatKySaoLuu() {
		Session session;
		int result = 0;
		session = HibernateUtil.getSession();
		try {
			Query query = session
					.createQuery("select count(*) from TBLNhatKySaoLuu");
			result = (Integer) query.list().get(0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public String formatNumber(Double number) {
		String value = "0";
		DecimalFormat formatter = new DecimalFormat(Const.NUMBER_FORMAT);
		if (number!= null && !number.equals(0.0)) {
			value = formatter.format(number);
		}
		return value;
		
	}
	
	public Double fractionToDouble(Double tuSo, Double mauSo)
			throws ParseException {
		Double d = null;
		if (tuSo != null && mauSo != null) {
			if (mauSo != 0) {
				BigDecimal d1 = BigDecimal.valueOf(tuSo);
				BigDecimal d2 = BigDecimal.valueOf(mauSo);
				BigDecimal response = d1.divide(d2, MathContext.DECIMAL128);
				d = response.doubleValue();
			} else {
				d = 0.0;
			}
		}
		return d;
	}
	
	public List<TBLNhomTaiKhoan> getAllNhomTaiKhoanByMemberShip(MemberShip memberShip) {
		List<TBLNhomTaiKhoan> listNhomTK = null;
		if (memberShip == null) {
			return listNhomTK;
		}
		if (memberShip.getRole() != null && memberShip.getRole().equals(Const.ADMIN_PRIVALE)) {
			return getAllNhomTaiKhoan();
		} else {
			Set<Integer> ids = new HashSet<>();
			ids.add(memberShip.getNhomID());
			while (true) {
				listNhomTK = getAllNhomTaiKhoanInList(ids, Const.UNLOCKED);
				for (TBLNhomTaiKhoan nhomTK : listNhomTK) {
					ids.add(nhomTK.getNhomID());
					listNhomTK = getAllNhomTaiKhoanInList(ids, Const.UNLOCKED);
				}
				if (ids.size() == listNhomTK.size()) {
					break;
				}
			}
			return listNhomTK;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<TBLNhomTaiKhoan> getAllNhomTaiKhoanInList(Set<Integer> ids,
			int locked) {
		Session session;
		List<TBLNhomTaiKhoan> result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session
					.createQuery("from TBLNhomTaiKhoan  where locked =:locked and nhomID in (:ids) or nhomChaID in (:ids)");
			query.setInteger("locked", locked);
			query.setParameterList("ids", ids);
			result = (List<TBLNhomTaiKhoan>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	public List<TBLTaiKhoan> getAllTaiKhoan(int locked, int start, int limit) {
		Session session;
		List<TBLTaiKhoan> result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session
					.createQuery("from TBLTaiKhoan where locked=:locked");
			query.setFirstResult(start);
			query.setMaxResults(limit);
			query.setInteger("locked", locked);
			result = (List<TBLTaiKhoan>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int countAllTaiKhoan(int locked) {
		Session session;
		int result = 0;
		session = HibernateUtil.getSession();
		try {
			Query query = session
					.createQuery("select count (*) from TBLTaiKhoan where locked=:locked");
			query.setInteger("locked", locked);
			result = (Integer) query.list().get(0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@SuppressWarnings("unchecked")
	public List<TBLTaiKhoan> getAllTaiKhoanByTaiKhoanDangNhap(
			List<String> tenDangNhap) {
		Session session;
		List<TBLTaiKhoan> result;
		session = HibernateUtil.getSession();
		result = null;
		if (tenDangNhap != null && !tenDangNhap.isEmpty()) {
			try {
				Query query = session
						.createQuery("from TBLTaiKhoan where tenDangNhap in (:tenDangNhap)");
				query.setParameterList("tenDangNhap", tenDangNhap);
				result = (List<TBLTaiKhoan>) query.list();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return result;
	}

	@SuppressWarnings("unchecked")
	public List<TBLTaiKhoan> getAllTaiKhoan() {
		Session session;
		List<TBLTaiKhoan> result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session.createQuery("from TBLTaiKhoan");
			result = (List<TBLTaiKhoan>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public boolean checkUserNameIsExists(String tenDangNhap) {
		Session session;
		boolean result = false;
		TBLTaiKhoan tk = null;
		session = HibernateUtil.getSession();
		try {
			Query query = session
					.createQuery("from TBLTaiKhoan where tenDangNhap =:tenDangNhap");
			query.setString("tenDangNhap", tenDangNhap);
			tk = (TBLTaiKhoan) query.uniqueResult();
			if (tk != null) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	public List<TBLTaiKhoan> getAllTaiKhoanFilter(String tenDangNhap, Integer nhomID, MemberShip memberShip) {
		Session session;
		List<TBLTaiKhoan> result;
		session = HibernateUtil.getSession();
		result = null;
		String filter = "";
		if (tenDangNhap != null && !tenDangNhap.trim().isEmpty()) {
			filter += " and tenDangNhap like '%" + tenDangNhap + "%'";
		}
		if (nhomID != null && nhomID.intValue() != 0) {
			filter += " and nhomID =:nhomID";
		}
		try {
			Query query = session.createQuery("from TBLTaiKhoan where 1 = 1" + filter + " and daXoa = 0 and locked = 0 order by tenDangNhap asc");
			if (nhomID != null && nhomID.intValue() != 0) {
				query.setInteger("nhomID", nhomID);
			}
			result = (List<TBLTaiKhoan>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	

	@SuppressWarnings("unchecked")
	public List<TBLTaiKhoan> getAllTaiKhoanFilter(String tenDangNhap,
			String hoTen, String soDienThoai, String email, String diaChi,
			Integer nhomID, String donViCongTac, String chucVu, Integer locked,
			int start, int limit, MemberShip memberShip) {
		Session session;
		List<TBLTaiKhoan> result;
		session = HibernateUtil.getSession();
		result = null;
		String filter = "";
		if (tenDangNhap != null && !tenDangNhap.trim().isEmpty()) {
			filter += " and tenDangNhap like '%" + tenDangNhap + "%'";
		}
		if (hoTen != null && !hoTen.trim().isEmpty()) {
			filter += " and hoTen like '%" + hoTen + "%'";
		}
		if (soDienThoai != null && !soDienThoai.trim().isEmpty()) {
			filter += " and soDienThoai like '%" + soDienThoai + "%'";
		}
		if (email != null && !email.trim().isEmpty()) {
			filter += " and email like '%" + email + "%'";
		}
		if (diaChi != null && !diaChi.trim().isEmpty()) {
			filter += " and diaChi like '%" + diaChi + "%'";
		}
		if (nhomID != null && nhomID.intValue() != 0) {
			filter += " and nhomID =:nhomID";
		}
		if (donViCongTac != null && !donViCongTac.trim().isEmpty()) {
			filter += " and donViCongTac like '%" + donViCongTac + "%'";
		}
		if (chucVu != null && !chucVu.trim().isEmpty()) {
			filter += " and chucVu like '%" + chucVu + "%'";
		}
		if (locked != null && locked.intValue() != -1) {
			filter += " and locked =:locked";
		}

		try {
			Query query = session.createQuery("from TBLTaiKhoan where 1 = 1" + filter + " and daXoa = 0 order by ngayCapNhat desc");
			query.setFirstResult(start);
			query.setMaxResults(limit);
			if (nhomID != null && nhomID.intValue() != 0) {
				query.setInteger("nhomID", nhomID);
			}
			if (locked != null && locked.intValue() != -1) {
				query.setInteger("locked", locked);
			}
			result = (List<TBLTaiKhoan>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int countGetAllTaiKhoanFilter(String tenDangNhap,
			String hoTen, String soDienThoai, String email, String diaChi,
			Integer nhomID, String donViCongTac, String chucVu, Integer locked, MemberShip memberShip) {
		Session session;
		int result = 0;
		session = HibernateUtil.getSession();
		String filter = "";
		if (tenDangNhap != null && !tenDangNhap.trim().isEmpty()) {
			filter += " and tenDangNhap like '%" + tenDangNhap + "%'";
		}
		if (hoTen != null && !hoTen.trim().isEmpty()) {
			filter += " and hoTen like '%" + hoTen + "%'";
		}
		if (soDienThoai != null && !soDienThoai.trim().isEmpty()) {
			filter += " and soDienThoai like '%" + soDienThoai + "%'";
		}
		if (email != null && !email.trim().isEmpty()) {
			filter += " and email like '%" + email + "%'";
		}
		if (diaChi != null && !diaChi.trim().isEmpty()) {
			filter += " and diaChi like '%" + diaChi + "%'";
		}
		if (nhomID != null && nhomID.intValue() != 0) {
			filter += " and nhomID =:nhomID";
		}
		if (donViCongTac != null && !donViCongTac.trim().isEmpty()) {
			filter += " and donViCongTac like '%" + donViCongTac + "%'";
		}
		if (chucVu != null && !chucVu.trim().isEmpty()) {
			filter += " and chucVu like '%" + chucVu + "%'";
		}
		if (locked != null && locked.intValue() != -1) {
			filter += " and locked =:locked";
		}

		try {
			Query query = session
					.createQuery("select count(*) from TBLTaiKhoan where 1 = 1 and daXoa = 0 "
							+ filter);
			if (nhomID != null && nhomID.intValue() != 0) {
				query.setInteger("nhomID", nhomID);
			}
			if (locked != null && locked.intValue() != -1) {
				query.setInteger("locked", locked);
			}
			result = (Integer) query.list().get(0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public TBLTaiKhoan getTaiKhoanByUserName(String tenDangNhap) {
		TBLTaiKhoan tk = null;
		Session session;
		session = HibernateUtil.getSession();
		try {
			Query query = session
					.createQuery("from TBLTaiKhoan where tenDangNhap =:tenDangNhap");
			query.setString("tenDangNhap", tenDangNhap);
			tk = (TBLTaiKhoan) query.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return tk;
	}

	public boolean checkMatKhauCuIsCorrect(String tenDangNhap, String matKhau) {
		TBLTaiKhoan tk = null;
		boolean result = false;
		Session session;
		session = HibernateUtil.getSession();
		try {
			Query query = session
					.createQuery("from TBLTaiKhoan where tenDangNhap =:tenDangNhap and matKhau=:matKhau");
			query.setString("tenDangNhap", tenDangNhap);
			query.setString("matKhau", matKhau);
			tk = (TBLTaiKhoan) query.uniqueResult();
			if (tk != null) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public TBLTaiKhoan getTaiKhoanByUserName(String tenDangNhap, int locked) {
		TBLTaiKhoan tk = null;
		Session session;
		session = HibernateUtil.getSession();
		try {
			Query query = session
					.createQuery("from TBLTaiKhoan where tenDangNhap =:tenDangNhap and locked =:locked");
			query.setString("tenDangNhap", tenDangNhap);
			query.setInteger("locked", locked);
			tk = (TBLTaiKhoan) query.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return tk;
	}

	public TBLTaiKhoan getTaiKhoanNguoiTao(String tenDangNhap) {
		TBLTaiKhoan tk = null;
		Session session;
		session = HibernateUtil.getSession();
		try {
			Query query = session
					.createQuery("from TBLTaiKhoan where tenDangNhap in (select nguoiTaoTaiKhoan from TBLTaiKhoan where tenDangNhap=:tenDangNhap)");
			query.setString("tenDangNhap", tenDangNhap);
			tk = (TBLTaiKhoan) query.uniqueResult();
			if (tk != null) {
				/*
				 * if (tk.getDbquanly_khachsan() != null) {
				 * Hibernate.initialize(tk.getKhachSan()); }
				 */
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return tk;
	}

	public TBLFunctionDetails getPrivaleOnPage(MemberShip memberShip,
			String subAction) {
		Session session;
		session = HibernateUtil.getSession();
		TBLFunctionDetails tk = null;
		if (memberShip != null) {
			if (memberShip.getRole().equals(Const.ADMIN_PRIVALE)) {
				tk = new TBLFunctionDetails();
				tk.setIsAdd(1);
				tk.setIsEdit(1);
				tk.setIsDelete(1);
				tk.setIsView(1);
				return tk;
			} else {
				try {
					Query query = session
							.createQuery("from TBLFunctionDetails where nhomID =:nhomID and functions.funcMa =:subAction");
					query.setInteger("nhomID", memberShip.getNhomID());
					query.setString("subAction", subAction);
					tk = (TBLFunctionDetails) query.uniqueResult();
					if (tk == null) {
						tk = new TBLFunctionDetails();
						tk.setIsAdd(0);
						tk.setIsEdit(0);
						tk.setIsDelete(0);
						tk.setIsView(0);
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

		}
		return tk;
	}

	public boolean checkLinkSubMenu(MemberShip memberShip, String page) {
		boolean result = true;
		if (memberShip.getRole().equals(Const.ADMIN_PRIVALE)) {
			return result;
		} else {
			Session session;
			session = HibernateUtil.getSession();
			TBLFunctionDetails tk = null;
			try {
				Query query = session
						.createQuery("from TBLFunctionDetails where nhomID =:nhomID and functions.funcMa =:page");
				query.setInteger("nhomID", memberShip.getNhomID());
				query.setString("page", page);
				tk = (TBLFunctionDetails) query.uniqueResult();
				if (tk != null) {
					if (tk.getIsView() == 1) {
						result = true;
					} else {
						result = false;
					}
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;

	}

	public boolean checkLinkSubMenu(MemberShip memberShip, String page,
			String module) {
		boolean result = true;
		if (memberShip.getRole().equals(Const.ADMIN_PRIVALE)) {
			return result;
		} else {
			Session session;
			session = HibernateUtil.getSession();
			TBLFunctionDetails tk = null;
			try {
				Query query = session
						.createQuery("from TBLFunctionDetails where nhomID =:nhomID and functions.funcMa =:page and functions.module =:module");
				query.setInteger("nhomID", memberShip.getNhomID());
				query.setString("page", page);
				query.setString("module", module);
				tk = (TBLFunctionDetails) query.uniqueResult();
				if (tk != null) {
					if (tk.getIsView() == 1) {
						result = true;
					} else {
						result = false;
					}
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;

	}

	@SuppressWarnings("unchecked")
	public boolean checkLinkMainMenu(MemberShip memberShip, String module) {
		boolean result = true;
		if (memberShip.getRole().equals(Const.ADMIN_PRIVALE)) {
			return result;
		} else {
			Session session;
			session = HibernateUtil.getSession();
			List<TBLFunctionDetails> tk = null;
			try {
				Query query = session
						.createQuery("from TBLFunctionDetails where nhomID =:nhomID and isView = 1 and functions.module =:module");
				query.setInteger("nhomID", memberShip.getNhomID());
				query.setString("module", module);
				tk = (List<TBLFunctionDetails>) query.list();
				if (tk != null && tk.size() != 0) {
					result = true;
				} else {
					result = false;
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;

	}

	public void updateTaiKhoanInfo(String matKhau) {
		Session session = HibernateUtil.getSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();

			Query query = session
					.createQuery("update TBLTaiKhoan set matKhau=:matKhau");
			query.setString("matKhau", matKhau);
			query.executeUpdate();

			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
			if (tx != null)
				tx.rollback();

		}
		session.close();
	}

	@SuppressWarnings("unchecked")
	public List<TBLTaiKhoan> getAllTaiKhoanByNhomTaiKhoan(int nhomID) {
		Session session;
		List<TBLTaiKhoan> result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session
					.createQuery("from TBLTaiKhoan where nhomID=:nhomID");
			query.setInteger("nhomID", nhomID);
			result = (List<TBLTaiKhoan>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	public List<TBLTaiKhoan> getAllTaiKhoanByNhomTaiKhoan(int nhomID, MemberShip memberShip) {
		Session session;
		List<TBLTaiKhoan> result;
		session = HibernateUtil.getSession();
		result = null;
		String filter = "";
		if (memberShip.getNhomID() != null && memberShip.getNhomID().intValue() == nhomID) {
			filter += " AND tenDangNhap =:tenDangNhap ";
		}
		try {
			Query query = session
					.createQuery("from TBLTaiKhoan where nhomID=:nhomID" + filter);
			query.setInteger("nhomID", nhomID);
			if (memberShip.getNhomID() != null && memberShip.getNhomID().intValue() == nhomID) {
				query.setString("tenDangNhap", memberShip.getTenDangNhap());
			}
			result = (List<TBLTaiKhoan>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int diff2Date(Date dateBegin, Date dateEnd) {
		try {
			long diff = dateEnd.getTime() - dateBegin.getTime();
			Integer diffInHours = (int) (diff / ((int) 1000 * 60 * 60 * 24));
			return diffInHours;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	public String getWebSiteName() {
		String webName = "";
		// ConfigurationService confSV = new ConfigurationService();
		TBLThamSoHeThong conf = getConfigByParam("webname");
		if (conf != null) {
			webName = conf.getParamValue();
		}
		return webName;
	}

	@SuppressWarnings("unchecked")
	public List<TBLFunctions> getFunctionPhanQuyen(int locked) {
		Session session;
		List<TBLFunctions> result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session
					.createQuery("from TBLFunctions where locked=:locked");
			query.setInteger("locked", locked);
			result = (List<TBLFunctions>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	/* Select all Nhom Tai khoan */
	@SuppressWarnings("unchecked")
	public List<TBLFunctions> getFunctionPhanQuyenByModule(int locked,
			String module) {
		Session session;
		List<TBLFunctions> result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session
					.createQuery("from TBLFunctions where locked=:locked and module=:module");
			query.setInteger("locked", locked);
			query.setString("module", module);
			result = (List<TBLFunctions>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@SuppressWarnings("unchecked")
	public List<TBLFunctionDetails> getGroupRoleByFunctionModule(int locked,
			Integer nhomID, String module) {
		Session session;
		List<TBLFunctionDetails> result = new ArrayList<TBLFunctionDetails>();
		session = HibernateUtil.getSession();
		try {
			Query query = session
					.createQuery("from TBLFunctionDetails where nhomID =:nhomID and funcID in (select funcID from TBLFunctions where module=:module and locked =:locked order by ordinal asc)");
			query.setInteger("locked", locked);
			query.setInteger("nhomID", nhomID);
			query.setString("module", module);
			result = (List<TBLFunctionDetails>) query.list();
			for (TBLFunctionDetails groupRole : result) {
				if (groupRole.getFuncID() != null) {
					Hibernate.initialize(groupRole.getFunctions());
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@SuppressWarnings("unchecked")
	public List<TBLNhomTaiKhoan> getAllNhomTaiKhoan(int start, int limit,
			MemberShip memberShip) {
		Session session;
		List<TBLNhomTaiKhoan> result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session
					.createQuery("from TBLNhomTaiKhoan order by nhomTen ASC");
			query.setFirstResult(start);
			query.setMaxResults(limit);
			result = (List<TBLNhomTaiKhoan>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@SuppressWarnings("unchecked")
	public List<TBLNhomTaiKhoan> getAllNhomTaiKhoan(int locked) {
		Session session;
		List<TBLNhomTaiKhoan> result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session
					.createQuery("from TBLNhomTaiKhoan  where locked =:locked order by nhomTen ASC");
			query.setInteger("locked", locked);
			result = (List<TBLNhomTaiKhoan>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@SuppressWarnings("unchecked")
	public List<TBLNhomTaiKhoan> getAllNhomTaiKhoan() {
		Session session;
		List<TBLNhomTaiKhoan> result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session
					.createQuery("from TBLNhomTaiKhoan  order by nhomTen ASC");
			result = (List<TBLNhomTaiKhoan>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public TBLNhomTaiKhoan getNhomTaiKhoanByID(Integer nhomID) {
		TBLNhomTaiKhoan tk = null;
		Session session;
		session = HibernateUtil.getSession();
		try {
			Query query = session
					.createQuery("from TBLNhomTaiKhoan where nhomID =:nhomID");
			query.setInteger("nhomID", nhomID);
			tk = (TBLNhomTaiKhoan) query.uniqueResult();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return tk;
	}

	public String getTenNhomTaiKhoanByID(Integer nhomID) {
		String tk = null;
		Session session;
		session = HibernateUtil.getSession();
		try {
			Query query = session
					.createQuery("select nhomTen from TBLNhomTaiKhoan where nhomID =:nhomID");
			query.setInteger("nhomID", nhomID);
			tk = (String) query.uniqueResult();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return tk;
	}

	public int countNhomTaiKhoan() {
		int result = 0;
		Session session;
		session = HibernateUtil.getSession();
		try {
			Query query = session
					.createQuery("select count(*) from TBLNhomTaiKhoan");
			result = (Integer) query.list().get(0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;

	}

	public boolean checkExistsMaNhomTaiKhoan(String nhomMa, Integer nhomID) {
		boolean result = false;
		Integer countNhom = null;
		Session session;
		session = HibernateUtil.getSession();
		String filter = "";
		if (nhomID != null) {
			filter += " AND nhomID !=:nhomID";
		}
		try {
			Query query = session
					.createQuery("select count(*) from TBLNhomTaiKhoan where nhomMa=:nhomMa "
							+ filter);
			query.setString("nhomMa", nhomMa);
			if (nhomID != null) {
				query.setInteger("nhomID", nhomID);
			}
			countNhom = (Integer) query.list().get(0);
			if (countNhom != null && countNhom != 0) {
				result = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	public boolean checkExistsTenNhomTaiKhoan(String nhomTen, Integer nhomID) {
		boolean result = false;
		Integer countNhom = null;
		Session session;
		session = HibernateUtil.getSession();
		String filter = "";
		if (nhomID != null) {
			filter += " AND nhomID !=:nhomID";
		}
		try {
			Query query = session
					.createQuery("select count(*) from TBLNhomTaiKhoan where nhomTen=:nhomTen "
							+ filter);
			query.setString("nhomTen", nhomTen);
			if (nhomID != null) {
				query.setInteger("nhomID", nhomID);
			}
			countNhom = (Integer) query.list().get(0);
			if (countNhom != null && countNhom != 0) {
				result = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	@SuppressWarnings("unchecked")
	public List<TBLThamSoHeThong> getAllConfig(int locked) {
		Session session;
		List<TBLThamSoHeThong> result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session
					.createQuery("from TBLThamSoHeThong where locked =:locked");
			query.setInteger("locked", locked);
			result = (List<TBLThamSoHeThong>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public String getValueByCode(String paramMa) {
		Session session;
		String result = "";
		session = HibernateUtil.getSession();
		try {
			Query query = session
					.createQuery("select paramValue from TBLThamSoHeThong where paramMa =:paramMa");
			query.setString("paramMa", paramMa);
			result = (String) query.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	/*
	 * public TBLThamSoHeThong getConfigByParam(String paramMa, int locked) {
	 * Session session; TBLThamSoHeThong result; session =
	 * HibernateUtil.getSession(); result = null; try { Query query = session
	 * .createQuery
	 * ("from TBLThamSoHeThong where paramMa =:paramMa and locked =:locked");
	 * query.setString("paramMa", paramMa); query.setInteger("locked", locked);
	 * result = (TBLThamSoHeThong) query.uniqueResult(); } catch (Exception e) {
	 * e.printStackTrace(); } return result; }
	 */

	public TBLThamSoHeThong getConfigByParam(String paramMa) {
		Session session;
		TBLThamSoHeThong result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session
					.createQuery("from TBLThamSoHeThong where paramMa =:paramMa");
			query.setString("paramMa", paramMa);
			result = (TBLThamSoHeThong) query.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	public List<TBLLogHeThong> getListLogHeThong(Date dTuNgay, Date dDenNgay, Integer nhomID, String tenDangNhap, String formLamViec, String actionName, int start, int limit, MemberShip memberShip) {
		Session session;
		List<TBLLogHeThong> result = null;
		session = HibernateUtil.getSession();
		List<TBLNhomTaiKhoan> listNhomTK = getAllNhomTaiKhoanByMemberShip(memberShip);
		List<Integer> listInt = new ArrayList<>();
		
		if (nhomID != null && nhomID.intValue() != 0) {
			listInt.add(nhomID);
		} else {
			if (listNhomTK != null) {			
				for (TBLNhomTaiKhoan nhomTK : listNhomTK) {
					if (memberShip.getNhomID() != null) {
						if (memberShip.getNhomID().intValue() != nhomTK.getNhomID().intValue()) {
							listInt.add(nhomTK.getNhomID());		
						}
					}
				}
			}
		}
		
		String filter = "";
		//
		if (dTuNgay != null  && dDenNgay == null) {
			filter += " AND actionTime >= :dTuNgay";
		}
		if (dDenNgay != null && dTuNgay == null) {
			filter += " AND actionTime <= :dDenNgay";
		}	
		//
		if (dTuNgay != null && dDenNgay != null) {
			filter += " AND actionTime between :dTuNgay and :dDenNgay";
		}
		if (tenDangNhap != null && !tenDangNhap.isEmpty()) {
			filter += " AND tenDangNhap =:tenDangNhap ";
		} else if (memberShip.getAllXa().intValue() == 1) {
			//tai khoan tinh hoac huyen
			if (listInt != null && listInt.size() != 0) {		
				String filter1 = "";
				if (nhomID != null && nhomID.intValue() == 0) {
					filter1 += " or tenDangNhap =:tenDangNhap";
				}
				filter += " AND tenDangNhap in (select tenDangNhap from TBLTaiKhoan where nhomID in (:listIdNhom) " + filter1 + ") ";
			}
		} else {
			//La tai khoan xa
			filter += " AND tenDangNhap =:tenDangNhap ";
		}
		if (formLamViec != null && !formLamViec.isEmpty()) {
			filter += " AND formLamViec =:formLamViec ";
		}
		if (actionName != null && !actionName.isEmpty()) {
			filter += " AND actionName =:actionName ";
		} 		
		try {
			Query query = session .createQuery("from TBLLogHeThong where 1 = 1 " + filter );
			
			if (dTuNgay != null  && dDenNgay == null) {
				query.setDate("dTuNgay", dTuNgay);
			}
			if (dDenNgay != null && dTuNgay == null) {
				query.setDate("dDenNgay", dDenNgay);
			}	
			if (dTuNgay != null && dDenNgay != null) {
				query.setDate("dTuNgay", dTuNgay);
				query.setDate("dDenNgay", dDenNgay);
			}
			if (tenDangNhap != null && !tenDangNhap.isEmpty()) {
				query.setString("tenDangNhap", tenDangNhap);
			} else if (memberShip.getAllXa().intValue() == 1) {
				//tai khoan tinh hoac huyen
				if (listInt != null && listInt.size() != 0) {			
					query.setParameterList("listIdNhom", listInt);
					if (nhomID != null && nhomID.intValue() == 0) {
						query.setString("tenDangNhap", memberShip.getTenDangNhap());
					}
				}
			} else {
				//La tai khoan xa
				query.setString("tenDangNhap", memberShip.getTenDangNhap());
			}
			if (formLamViec != null && !formLamViec.isEmpty()) {
				query.setString("formLamViec", formLamViec);
			}
			if (actionName != null && !actionName.isEmpty()) {
				query.setString("actionName", actionName);
			} 
			query.setFirstResult(start);
			query.setMaxResults(limit);
			
			result = (List<TBLLogHeThong>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	
	public int countLogHeThong(Date dTuNgay, Date dDenNgay, Integer nhomID, String tenDangNhap, String formLamViec, String actionName, MemberShip memberShip) {
		Session session;
		int result = 0;
		session = HibernateUtil.getSession();
		List<TBLNhomTaiKhoan> listNhomTK = getAllNhomTaiKhoanByMemberShip(memberShip);
		List<Integer> listInt = new ArrayList<>();
		if (nhomID != null && nhomID.intValue() != 0) {
			listInt.add(nhomID);
		} else {
			if (listNhomTK != null) {			
				for (TBLNhomTaiKhoan nhomTK : listNhomTK) {
					if (memberShip.getNhomID() != null) {
						if (memberShip.getNhomID().intValue() != nhomTK.getNhomID().intValue()) {
							listInt.add(nhomTK.getNhomID());		
						}
					}
				}
			}
		}
		
		String filter = "";
		//
		if (dTuNgay != null  && dDenNgay == null) {
			filter += " AND actionTime >= :dTuNgay";
		}
		if (dDenNgay != null && dTuNgay == null) {
			filter += " AND actionTime <= :dDenNgay";
		}	
		//
		if (dTuNgay != null && dDenNgay != null) {
			filter += " AND actionTime between :dTuNgay and :dDenNgay";
		}
		if (tenDangNhap != null && !tenDangNhap.isEmpty()) {
			filter += " AND tenDangNhap =:tenDangNhap ";
		} else if (memberShip.getAllXa().intValue() == 1) {
			//tai khoan tinh hoac huyen
			if (listInt != null && listInt.size() != 0) {		
				String filter1 = "";
				if (nhomID != null && nhomID.intValue() == 0) {
					filter1 += " or tenDangNhap =:tenDangNhap";
				}
				filter += " AND tenDangNhap in (select tenDangNhap from TBLTaiKhoan where nhomID in (:listIdNhom) " + filter1 + ") ";
			}
		} else {
			//La tai khoan xa
			filter += " AND tenDangNhap =:tenDangNhap ";
		}
		if (formLamViec != null && !formLamViec.isEmpty()) {
			filter += " AND formLamViec =:formLamViec ";
		}
		if (actionName != null && !actionName.isEmpty()) {
			filter += " AND actionName =:actionName ";
		} 		
		try {
			Query query = session .createQuery("select count (*) from TBLLogHeThong where 1 = 1 " + filter );
			
			if (dTuNgay != null  && dDenNgay == null) {
				query.setDate("dTuNgay", dTuNgay);
			}
			if (dDenNgay != null && dTuNgay == null) {
				query.setDate("dDenNgay", dDenNgay);
			}	
			if (dTuNgay != null && dDenNgay != null) {
				query.setDate("dTuNgay", dTuNgay);
				query.setDate("dDenNgay", dDenNgay);
			}
			if (tenDangNhap != null && !tenDangNhap.isEmpty()) {
				query.setString("tenDangNhap", tenDangNhap);
			} else if (memberShip.getAllXa().intValue() == 1) {
				//tai khoan tinh hoac huyen
				if (listInt != null && listInt.size() != 0) {			
					query.setParameterList("listIdNhom", listInt);
					if (nhomID != null && nhomID.intValue() == 0) {
						query.setString("tenDangNhap", memberShip.getTenDangNhap());
					}
				}
			} else {
				//La tai khoan xa
				query.setString("tenDangNhap", memberShip.getTenDangNhap());
			}
			if (formLamViec != null && !formLamViec.isEmpty()) {
				query.setString("formLamViec", formLamViec);
			}
			if (actionName != null && !actionName.isEmpty()) {
				query.setString("actionName", actionName);
			} 
			
			result = (Integer) query.list().get(0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	
}
