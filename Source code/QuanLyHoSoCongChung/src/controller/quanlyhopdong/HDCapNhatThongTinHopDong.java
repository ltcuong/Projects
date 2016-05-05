package controller.quanlyhopdong;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import service.DanhMucService;
import service.GeneralService;
import util.Const;
import controller.BaseAction;
import entity.DMLoaiGiayTo;
import entity.DMLoaiHopDong;
import entity.DMLoaiHopDongChiTiet;
import entity.DMTinh;
import entity.DSDuongSu;
import entity.HDHopDongDuongSu;
import entity.HDHopDongDuongSuTaiSan;
import entity.HDHopDongTam;
import entity.TSTaiSan;

public class HDCapNhatThongTinHopDong extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private static final int LA_DUONGSUCHINH = 1;
	private static final int LA_DONGSOHUU = 1;
	private static final int LA_NGUOIUYQUYEN = 1;
	private String result;
	private List<DMLoaiHopDong> listLoaiHopDong;
	private List<DMLoaiGiayTo> listLoaiGiayTo;
	private List<DMTinh> listTinh;
	
	public String execute() throws Exception {
		memberShip = super.getMemberShip();		
		
		DanhMucService danhMucSV = new DanhMucService();
		listLoaiHopDong = danhMucSV.getAllLoaiHopDong(memberShip);
		listLoaiGiayTo = danhMucSV.getAllLoaiGiayTo(Const.UNLOCKED);
		listTinh = danhMucSV.getAllTinh(Const.UNLOCKED);
		session.remove(Const.SESSION_THONGTIN_HOPDONG);
		return SUCCESS;
	}
	
	public String executeCapNhatHoanThanhHoSoCongChung() throws Exception {
		memberShip = super.getMemberShip();		
		GeneralService gv = new GeneralService();
		DanhMucService danhMucSV = new DanhMucService();
		SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
		HDHopDongTam hopDongTam = (HDHopDongTam) session.get(Const.SESSION_THONGTIN_HOPDONG);
		if (hopDongTam != null) {
			//Them thong tin tai san
			HDHopDongDuongSu hopDongDuongSu = null;
			HDHopDongDuongSuTaiSan hopDongDuongSuTaiSan = null;
			List<TSTaiSan> listTaiSan = hopDongTam.getListTaiSanBenA();
			List<Integer> listTaiSanID = new ArrayList<>();
			for (TSTaiSan tsTaiSan : listTaiSan) {
				Integer taiSanID = gv.createObject(tsTaiSan);
				listTaiSanID.add(taiSanID);
			}
			//Them thong tin hop dong
			Integer hopDongID = gv.createObject(hopDongTam.getHopDong());
			DMLoaiHopDongChiTiet loaiHopDongChiTiet = danhMucSV.getLoaiHopDongChiTietByID(hopDongTam.getHopDong().getLoaiHopDongChiTietID());
			//Them duong su A
			DSDuongSu duongSuA = hopDongTam.getDuongSuA();
			duongSuA.setNguoiTao(memberShip.getTenDangNhap());
			duongSuA.setNgayTao(Calendar.getInstance().getTime());
			Integer duongSuAID = gv.createObject(duongSuA);
			hopDongDuongSu = new HDHopDongDuongSu();
			hopDongDuongSu.setDuongSuID(duongSuAID);
			hopDongDuongSu.setHopDongID(hopDongID);
			hopDongDuongSu.setLoaiDuongSuID(DSDuongSu.BEN_A);
			hopDongDuongSu.setLaDuongSuChinh(LA_DUONGSUCHINH);
			gv.createObject(hopDongDuongSu);
			//Them thong tin hop dong, duong su, tai san
			for (Integer tsID : listTaiSanID) {
				hopDongDuongSuTaiSan = new HDHopDongDuongSuTaiSan();
				hopDongDuongSuTaiSan.setDuongSuID(duongSuAID);
				hopDongDuongSuTaiSan.setHopDongID(hopDongID);
				hopDongDuongSuTaiSan.setTaiSanID(tsID);
				if (loaiHopDongChiTiet.getCoDoiChuSoHuu() == 0) {
					hopDongDuongSuTaiSan.setConSoHuu(1);	
				} else {
					hopDongDuongSuTaiSan.setConSoHuu(0);
				}
				hopDongDuongSuTaiSan.setLaNguoiDaiDien(LA_DUONGSUCHINH);
				gv.createObject(hopDongDuongSuTaiSan);
			}
			//Them dong so huu A
			List<DSDuongSu> listDongSoHuuBenA = hopDongTam.getListDongSoHuuBenA();
			if (listDongSoHuuBenA != null && listDongSoHuuBenA.size() != 0) {
				for (DSDuongSu dsDuongSu : listDongSoHuuBenA) {
					dsDuongSu.setNguoiTao(memberShip.getTenDangNhap());
					dsDuongSu.setNgayTao(Calendar.getInstance().getTime());
					Integer dshAID = gv.createObject(dsDuongSu);
					//Them thong tin hop dong, duong su, tai san
					for (Integer tsID : listTaiSanID) {
						hopDongDuongSuTaiSan = new HDHopDongDuongSuTaiSan();
						hopDongDuongSuTaiSan.setDuongSuID(dshAID);
						hopDongDuongSuTaiSan.setHopDongID(hopDongID);
						hopDongDuongSuTaiSan.setTaiSanID(tsID);
						if (loaiHopDongChiTiet.getCoDoiChuSoHuu() == 0) {
							hopDongDuongSuTaiSan.setConSoHuu(1);	
						} else {
							hopDongDuongSuTaiSan.setConSoHuu(0);
						}
						hopDongDuongSuTaiSan.setLaNguoiDaiDien(LA_DUONGSUCHINH);
						gv.createObject(hopDongDuongSuTaiSan);
					}
					hopDongDuongSu = new HDHopDongDuongSu();
					hopDongDuongSu.setDuongSuID(dshAID);
					hopDongDuongSu.setHopDongID(hopDongID);
					hopDongDuongSu.setLaDuongSuChinh(0);
					hopDongDuongSu.setLoaiDuongSuID(DSDuongSu.BEN_A);
					hopDongDuongSu.setLaDongSoHuu(LA_DONGSOHUU);
					gv.createObject(hopDongDuongSu);
				}
			}
			//Them nguoi uy quyen A
			DSDuongSu uyQuyenA = hopDongTam.getNguoiUyQuyenA();
			if (uyQuyenA != null) {
				uyQuyenA.setNguoiTao(memberShip.getTenDangNhap());
				uyQuyenA.setNgayTao(Calendar.getInstance().getTime());
				Integer uyQuyenAID = gv.createObject(uyQuyenA);
				hopDongDuongSu = new HDHopDongDuongSu();
				hopDongDuongSu.setDuongSuID(uyQuyenAID);
				hopDongDuongSu.setHopDongID(hopDongID);
				hopDongDuongSu.setLoaiDuongSuID(DSDuongSu.BEN_A);
				hopDongDuongSu.setLaDuongSuChinh(LA_NGUOIUYQUYEN);
				gv.createObject(hopDongDuongSu);
			}
			//Them ben B
			DSDuongSu duongSuB = hopDongTam.getDuongSuB();
			duongSuB.setNguoiTao(memberShip.getTenDangNhap());
			duongSuB.setNgayTao(Calendar.getInstance().getTime());
			Integer duongSuBID = gv.createObject(duongSuB);
			//Them thong tin hop dong, duong su, tai san
			for (Integer tsID : listTaiSanID) {
				hopDongDuongSuTaiSan = new HDHopDongDuongSuTaiSan();
				hopDongDuongSuTaiSan.setDuongSuID(duongSuBID);
				hopDongDuongSuTaiSan.setHopDongID(hopDongID);
				hopDongDuongSuTaiSan.setTaiSanID(tsID);
				if (loaiHopDongChiTiet.getCoDoiChuSoHuu() == 0) {
					hopDongDuongSuTaiSan.setConSoHuu(0);	
				} else {
					hopDongDuongSuTaiSan.setConSoHuu(1);
				}
				hopDongDuongSuTaiSan.setLaNguoiDaiDien(LA_DUONGSUCHINH);
				gv.createObject(hopDongDuongSuTaiSan);
			}
			hopDongDuongSu = new HDHopDongDuongSu();
			hopDongDuongSu.setDuongSuID(duongSuBID);
			hopDongDuongSu.setHopDongID(hopDongID);
			hopDongDuongSu.setLoaiDuongSuID(DSDuongSu.BEN_B);
			hopDongDuongSu.setLaDuongSuChinh(LA_DUONGSUCHINH);
			gv.createObject(hopDongDuongSu);
			//Them dong so huu B
			List<DSDuongSu> listDongSoHuuBenB = hopDongTam.getListDongSoHuuBenB();
			if (listDongSoHuuBenB != null && listDongSoHuuBenB.size() != 0) {
				for (DSDuongSu dshDuongSu : listDongSoHuuBenB) {
					dshDuongSu.setNguoiTao(memberShip.getTenDangNhap());
					dshDuongSu.setNgayTao(Calendar.getInstance().getTime());
					Integer dshBID = gv.createObject(dshDuongSu);
					//Them thong tin hop dong, duong su, tai san
					for (Integer tsID : listTaiSanID) {
						hopDongDuongSuTaiSan = new HDHopDongDuongSuTaiSan();
						hopDongDuongSuTaiSan.setDuongSuID(dshBID);
						hopDongDuongSuTaiSan.setHopDongID(hopDongID);
						hopDongDuongSuTaiSan.setTaiSanID(tsID);
						if (loaiHopDongChiTiet.getCoDoiChuSoHuu() == 0) {
							hopDongDuongSuTaiSan.setConSoHuu(0);	
						} else {
							hopDongDuongSuTaiSan.setConSoHuu(1);
						}
						hopDongDuongSuTaiSan.setLaNguoiDaiDien(LA_DUONGSUCHINH);
						gv.createObject(hopDongDuongSuTaiSan);
					}
					hopDongDuongSu = new HDHopDongDuongSu();
					hopDongDuongSu.setDuongSuID(dshBID);
					hopDongDuongSu.setHopDongID(hopDongID);
					hopDongDuongSu.setLaDuongSuChinh(0);
					hopDongDuongSu.setLoaiDuongSuID(DSDuongSu.BEN_B);
					hopDongDuongSu.setLaDongSoHuu(LA_DONGSOHUU);
					gv.createObject(hopDongDuongSu);
				}
			}
			//Them nguoi uy quyen B
			DSDuongSu uyQuyenB = hopDongTam.getNguoiUyQuyenB();
			if (uyQuyenB != null) {
				uyQuyenB.setNguoiTao(memberShip.getTenDangNhap());
				uyQuyenB.setNgayTao(Calendar.getInstance().getTime());
				Integer uyQuyenBID = gv.createObject(uyQuyenB);
				hopDongDuongSu = new HDHopDongDuongSu();
				hopDongDuongSu.setDuongSuID(uyQuyenBID);
				hopDongDuongSu.setHopDongID(hopDongID);
				hopDongDuongSu.setLoaiDuongSuID(DSDuongSu.BEN_B);
				hopDongDuongSu.setLaDuongSuChinh(LA_NGUOIUYQUYEN);
				gv.createObject(hopDongDuongSu);
			}
			//Them ben C
			DSDuongSu duongSuC = hopDongTam.getDuongSuC();
			duongSuC.setNguoiTao(memberShip.getTenDangNhap());
			duongSuC.setNgayTao(Calendar.getInstance().getTime());
			if (duongSuC != null) {
				Integer duongSuCID = gv.createObject(duongSuC);
				hopDongDuongSu = new HDHopDongDuongSu();
				hopDongDuongSu.setDuongSuID(duongSuCID);
				hopDongDuongSu.setHopDongID(hopDongID);
				hopDongDuongSu.setLoaiDuongSuID(DSDuongSu.BEN_C);
				hopDongDuongSu.setLaDuongSuChinh(LA_DUONGSUCHINH);
				gv.createObject(hopDongDuongSu);
				//Them nguoi uy quyen C
				DSDuongSu uyQuyenC = hopDongTam.getNguoiUyQuyenC();
				if (uyQuyenC != null) {
					uyQuyenC.setNguoiTao(memberShip.getTenDangNhap());
					uyQuyenC.setNgayTao(Calendar.getInstance().getTime());
					Integer uyQuyenCID = gv.createObject(uyQuyenC);
					hopDongDuongSu = new HDHopDongDuongSu();
					hopDongDuongSu.setDuongSuID(uyQuyenCID);
					hopDongDuongSu.setHopDongID(hopDongID);
					hopDongDuongSu.setLoaiDuongSuID(DSDuongSu.BEN_C);
					hopDongDuongSu.setLaDuongSuChinh(LA_NGUOIUYQUYEN);
					gv.createObject(hopDongDuongSu);
				}
				//Them dong so huu C
				List<DSDuongSu> listDongSoHuuBenC = hopDongTam.getListDongSoHuuBenC();
				if (listDongSoHuuBenC != null && listDongSoHuuBenC.size() != 0) {
					for (DSDuongSu dshDuongSu : listDongSoHuuBenC) {
						dshDuongSu.setNguoiTao(memberShip.getTenDangNhap());
						dshDuongSu.setNgayTao(Calendar.getInstance().getTime());
						Integer dshCID = gv.createObject(dshDuongSu);
						hopDongDuongSu = new HDHopDongDuongSu();
						hopDongDuongSu.setDuongSuID(dshCID);
						hopDongDuongSu.setHopDongID(hopDongID);
						hopDongDuongSu.setLaDuongSuChinh(0);
						hopDongDuongSu.setLoaiDuongSuID(DSDuongSu.BEN_C);
						hopDongDuongSu.setLaDongSoHuu(LA_DONGSOHUU);
						gv.createObject(hopDongDuongSu);
					}
				}
			}
			
		}
		
		return SUCCESS;
	}
	

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public List<DMLoaiHopDong> getListLoaiHopDong() {
		return listLoaiHopDong;
	}

	public void setListLoaiHopDong(List<DMLoaiHopDong> listLoaiHopDong) {
		this.listLoaiHopDong = listLoaiHopDong;
	}

	public List<DMLoaiGiayTo> getListLoaiGiayTo() {
		return listLoaiGiayTo;
	}

	public void setListLoaiGiayTo(List<DMLoaiGiayTo> listLoaiGiayTo) {
		this.listLoaiGiayTo = listLoaiGiayTo;
	}

	public List<DMTinh> getListTinh() {
		return listTinh;
	}

	public void setListTinh(List<DMTinh> listTinh) {
		this.listTinh = listTinh;
	}
	
	
}
