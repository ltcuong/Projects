package controller.ajaxhopdong;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import service.DanhMucService;
import util.Const;
import controller.BaseAction;
import entity.DMHuyen;
import entity.DMLoaiDuongSu;
import entity.DMLoaiGiayTo;
import entity.DMTinh;
import entity.DMXa;
import entity.DSDuongSu;
import entity.HDHopDongTam;

public class GetFormCapNhatThongTinDuongSu extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String result;
	private List<DMLoaiGiayTo> listLoaiGiayTo;
	private List<DMTinh> listTinh;
	private List<DMHuyen> listHuyenDuongSu;
	private List<DMXa> listXaDuongSu;
	private List<DMHuyen> listHuyenNguoiUyQuyen;
	private List<DMXa> listXaNguoiUyQuyen;
	
	
	private int benSoHuu;
	private int coUyQuyen;
	//Duong Su
	private String hoTen;
	private String ngaySinh;
	private Integer namSinh;
	private Integer loaiGiayToID;
	private String soGiayTo;
	private String ngayCapGiayTo;
	private String noiCapGiayTo;
	private Integer tinhThuongTruID;
	private Integer huyenThuongTruID;
	private Integer xaThuongTruID;
	private String soNhaThuongTru;
	private String diaChiLienHe;
	private String tenToChuc;
	private String giayDangKyKinhDoanhSo;
	private String ngayCapGiayDangKyKinhDoanh;
	private String noiCapGiayDangKyKinhDoanh;
	private String soDienThoai;
	private String chucVuNguoiDaiDien;
	private String giayUyQuyenSo;
	private String ngayCapGiayUyQuyen;
	private Integer loaiDuongSuID;
	//Nguoi uy quyen
	private String hoTenNguoiUyQuyen;
	private String ngaySinhNguoiUyQuyen;
	private Integer namSinhNguoiUyQuyen;
	private Integer loaiGiayToNguoiUyQuyenID;
	private String soGiayToNguoiUyQuyen;
	private String ngayCapGiayToNguoiUyQuyen;
	private String noiCapGiayToNguoiUyQuyen;
	private Integer tinhThuongTruNguoiUyQuyenID;
	private Integer huyenThuongTruNguoiUyQuyenID;
	private Integer xaThuongTruNguoiUyQuyenID;
	private String soNhaThuongTruNguoiUyQuyen;
	private String diaChiLienHeNguoiUyQuyen;
	private DSDuongSu duongSu;
	private DSDuongSu nguoiUyQuyen;
	
	public String execute() {
		memberShip = super.getMemberShip();		
		HDHopDongTam hopDongTam = (HDHopDongTam) session.get(Const.SESSION_THONGTIN_HOPDONG);
		DanhMucService danhMucSV = new DanhMucService();
		listLoaiGiayTo = danhMucSV.getAllLoaiGiayTo(Const.UNLOCKED);
		listTinh = danhMucSV.getAllTinh(Const.UNLOCKED);
		
		if (hopDongTam != null) {
			if (benSoHuu == DSDuongSu.BEN_A) {
				duongSu = hopDongTam.getDuongSuA();
				nguoiUyQuyen = hopDongTam.getNguoiUyQuyenA();
				coUyQuyen = hopDongTam.getCoUyQuyenBenA();
				
			} else if (benSoHuu == DSDuongSu.BEN_B) {
				duongSu = hopDongTam.getDuongSuB();
				nguoiUyQuyen = hopDongTam.getNguoiUyQuyenB();
				coUyQuyen = hopDongTam.getCoUyQuyenBenB();
			} else if (benSoHuu == DSDuongSu.BEN_C) {
				duongSu = hopDongTam.getDuongSuC();
				nguoiUyQuyen = hopDongTam.getNguoiUyQuyenC();
				coUyQuyen = hopDongTam.getCoUyQuyenBenC();
			}
			if (duongSu != null) {
				listHuyenDuongSu = danhMucSV.getAllHuyenByTinhID(duongSu.getTinhThuongTruID(), Const.UNLOCKED);
				listXaDuongSu = danhMucSV.getAllXaByHuyenID(duongSu.getHuyenThuongTruID(), Const.UNLOCKED);	
			}
			if (nguoiUyQuyen != null) {
				listHuyenNguoiUyQuyen = danhMucSV.getAllHuyenByTinhID(nguoiUyQuyen.getTinhThuongTruID(), Const.UNLOCKED);
				listXaNguoiUyQuyen = danhMucSV.getAllXaByHuyenID(nguoiUyQuyen.getHuyenThuongTruID(), Const.UNLOCKED);	
			}
			if (duongSu == null) {
				duongSu = new DSDuongSu();
			}
			duongSu.setLoaiDuongSuID(1);
			
			duongSu.setHoTen("Nguyen Van B");
			duongSu.setNgaySinh(Calendar.getInstance().getTime());
			duongSu.setLoaiGiayToID(1);
			duongSu.setSoGiayTo("444555444");
			duongSu.setNgayCapGiayTo(Calendar.getInstance().getTime());
			duongSu.setNoiCapGiayTo("Ha Noi");
			duongSu.setSoNhaThuongTru("35 Ho Gom");
			
		}
		
		
		return SUCCESS;
	}
	
	public String executeThemThongTinDuongSu() {
		try {
			memberShip = super.getMemberShip();
			SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE); 
			HDHopDongTam hopDongTam = (HDHopDongTam) session.get(Const.SESSION_THONGTIN_HOPDONG);
			if (hopDongTam == null) {
				hopDongTam = new HDHopDongTam();
			}
			if (benSoHuu == DSDuongSu.BEN_A) {
				duongSu = hopDongTam.getDuongSuA();
			} else if (benSoHuu == DSDuongSu.BEN_B) {
				duongSu = hopDongTam.getDuongSuB();
			} else if (benSoHuu == DSDuongSu.BEN_C) {
				duongSu = hopDongTam.getDuongSuC();
			}
			
			if (duongSu == null) {
				duongSu = new DSDuongSu();
			}
			
			duongSu.setHoTen(hoTen);
			Date d1 = null;
			if (ngaySinh != null && !ngaySinh.isEmpty()) {
				try {
					d1 = df.parse(ngaySinh);
				} catch (Exception e) {
					// TODO: handle exception
				}
			}
			duongSu.setNgaySinh(d1);
			duongSu.setNamSinh(namSinh);
			duongSu.setLoaiGiayToID(loaiGiayToID);
			duongSu.setSoGiayTo(soGiayTo);
			Date d2 = null;
			if (ngayCapGiayTo != null && !ngayCapGiayTo.isEmpty()) {
				try {
					d2 = df.parse(ngayCapGiayTo);
				} catch (Exception e) {
					// TODO: handle exception
				}
			}
			duongSu.setNgayCapGiayTo(d2);
			duongSu.setNoiCapGiayTo(noiCapGiayTo);
			duongSu.setTinhThuongTruID(tinhThuongTruID);
			duongSu.setHuyenThuongTruID(huyenThuongTruID);
			duongSu.setXaThuongTruID(xaThuongTruID);
			duongSu.setSoNhaThuongTru(soNhaThuongTru);
			duongSu.setDiaChiLienHe(diaChiLienHe);
			
			duongSu.setTenToChuc(tenToChuc);
			duongSu.setGiayDangKyKinhDoanhSo(giayDangKyKinhDoanhSo);
			Date d3 = null;
			if (ngayCapGiayDangKyKinhDoanh != null && !ngayCapGiayDangKyKinhDoanh.isEmpty()) {
				try {
					d3 = df.parse(ngayCapGiayDangKyKinhDoanh);
				} catch (Exception e) {
					// TODO: handle exception
				}
			}
			duongSu.setNgayCapGiayDangKyKinhDoanh(d3);
			duongSu.setNoiCapGiayDangKyKinhDoanh(noiCapGiayDangKyKinhDoanh);
			duongSu.setSoDienThoai(soDienThoai);
			duongSu.setChucVuNguoiDaiDien(chucVuNguoiDaiDien);
			duongSu.setGiayUyQuyenSo(giayUyQuyenSo);
			Date d4 = null;
			if (ngayCapGiayUyQuyen != null && !ngayCapGiayUyQuyen.isEmpty()) {
				try {
					d4 = df.parse(ngayCapGiayUyQuyen);
				} catch (Exception e) {
					// TODO: handle exception
				}
			}
			duongSu.setNgayCapGiayUyQuyen(d4);
			duongSu.setLoaiDuongSuID(loaiDuongSuID);
			if (benSoHuu == DSDuongSu.BEN_A) {
				hopDongTam.setDuongSuA(duongSu);
			} else if (benSoHuu == DSDuongSu.BEN_B) {
				hopDongTam.setDuongSuB(duongSu);
			} else if (benSoHuu == DSDuongSu.BEN_C) {
				hopDongTam.setDuongSuC(duongSu);
			}
			//Nguoi uy quyen
			if (coUyQuyen == 1) {
				if (benSoHuu == DSDuongSu.BEN_A) {
					nguoiUyQuyen = hopDongTam.getNguoiUyQuyenA();
				} else if (benSoHuu == DSDuongSu.BEN_B) {
					nguoiUyQuyen = hopDongTam.getNguoiUyQuyenB();
				} else if (benSoHuu == DSDuongSu.BEN_C) {
					nguoiUyQuyen = hopDongTam.getNguoiUyQuyenC();
				}
				
				if (nguoiUyQuyen == null) {
					nguoiUyQuyen = new DSDuongSu();
				}
				nguoiUyQuyen.setHoTen(hoTenNguoiUyQuyen);
				nguoiUyQuyen.setHoTen(hoTen);
				Date d5 = null;
				if (ngaySinhNguoiUyQuyen != null && !ngaySinhNguoiUyQuyen.isEmpty()) {
					try {
						d5 = df.parse(ngaySinhNguoiUyQuyen);
					} catch (Exception e) {
						// TODO: handle exception
					}
				}
				nguoiUyQuyen.setNgaySinh(d5);
				nguoiUyQuyen.setNamSinh(namSinhNguoiUyQuyen);
				nguoiUyQuyen.setLoaiGiayToID(loaiGiayToNguoiUyQuyenID);
				nguoiUyQuyen.setSoGiayTo(soGiayToNguoiUyQuyen);
				Date d6 = null;
				if (ngayCapGiayToNguoiUyQuyen != null && !ngayCapGiayToNguoiUyQuyen.isEmpty()) {
					try {
						d6 = df.parse(ngayCapGiayToNguoiUyQuyen);
					} catch (Exception e) {
						// TODO: handle exception
					}
				}
				nguoiUyQuyen.setNgayCapGiayTo(d6);
				nguoiUyQuyen.setNoiCapGiayTo(noiCapGiayToNguoiUyQuyen);
				nguoiUyQuyen.setTinhThuongTruID(tinhThuongTruNguoiUyQuyenID);
				nguoiUyQuyen.setHuyenThuongTruID(huyenThuongTruNguoiUyQuyenID);
				nguoiUyQuyen.setXaThuongTruID(xaThuongTruNguoiUyQuyenID);
				nguoiUyQuyen.setSoNhaThuongTru(soNhaThuongTruNguoiUyQuyen);
				nguoiUyQuyen.setDiaChiLienHe(diaChiLienHeNguoiUyQuyen);
				nguoiUyQuyen.setLoaiDuongSuID(DMLoaiDuongSu.DUONGSU_NGUOIUYQUYEN);
				
				if (benSoHuu == DSDuongSu.BEN_A) {
					hopDongTam.setNguoiUyQuyenA(nguoiUyQuyen);
				} else if (benSoHuu == DSDuongSu.BEN_B) {
					hopDongTam.setNguoiUyQuyenB(nguoiUyQuyen);
				} else if (benSoHuu == DSDuongSu.BEN_C) {
					hopDongTam.setNguoiUyQuyenC(nguoiUyQuyen);
				}
			}
			if (benSoHuu == DSDuongSu.BEN_A) {
				hopDongTam.setCoUyQuyenBenA(coUyQuyen);
			} else if (benSoHuu == DSDuongSu.BEN_B) {
				hopDongTam.setCoUyQuyenBenB(coUyQuyen);
			} else if (benSoHuu == DSDuongSu.BEN_C) {
				hopDongTam.setCoUyQuyenBenC(coUyQuyen);
			}
			session.remove(Const.SESSION_THONGTIN_HOPDONG);
			session.put(Const.SESSION_THONGTIN_HOPDONG, hopDongTam);
			result = Const.STRING_TRUE;
		} catch (Exception e) {
			// TODO: handle exception
			result = Const.STRING_FALSE;
		}
		
		return SUCCESS;
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

	public List<DMHuyen> getListHuyenDuongSu() {
		return listHuyenDuongSu;
	}

	public void setListHuyenDuongSu(List<DMHuyen> listHuyenDuongSu) {
		this.listHuyenDuongSu = listHuyenDuongSu;
	}

	public List<DMXa> getListXaDuongSu() {
		return listXaDuongSu;
	}

	public void setListXaDuongSu(List<DMXa> listXaDuongSu) {
		this.listXaDuongSu = listXaDuongSu;
	}

	public List<DMHuyen> getListHuyenNguoiUyQuyen() {
		return listHuyenNguoiUyQuyen;
	}

	public void setListHuyenNguoiUyQuyen(List<DMHuyen> listHuyenNguoiUyQuyen) {
		this.listHuyenNguoiUyQuyen = listHuyenNguoiUyQuyen;
	}

	public List<DMXa> getListXaNguoiUyQuyen() {
		return listXaNguoiUyQuyen;
	}

	public void setListXaNguoiUyQuyen(List<DMXa> listXaNguoiUyQuyen) {
		this.listXaNguoiUyQuyen = listXaNguoiUyQuyen;
	}

	public DSDuongSu getDuongSu() {
		return duongSu;
	}

	public void setDuongSu(DSDuongSu duongSu) {
		this.duongSu = duongSu;
	}

	public DSDuongSu getNguoiUyQuyen() {
		return nguoiUyQuyen;
	}

	public void setNguoiUyQuyen(DSDuongSu nguoiUyQuyen) {
		this.nguoiUyQuyen = nguoiUyQuyen;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public int getBenSoHuu() {
		return benSoHuu;
	}

	public void setBenSoHuu(int benSoHuu) {
		this.benSoHuu = benSoHuu;
	}

	public int getCoUyQuyen() {
		return coUyQuyen;
	}

	public void setCoUyQuyen(int coUyQuyen) {
		this.coUyQuyen = coUyQuyen;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public String getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(String ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	public Integer getNamSinh() {
		return namSinh;
	}

	public void setNamSinh(Integer namSinh) {
		this.namSinh = namSinh;
	}

	public Integer getLoaiGiayToID() {
		return loaiGiayToID;
	}

	public void setLoaiGiayToID(Integer loaiGiayToID) {
		this.loaiGiayToID = loaiGiayToID;
	}

	public String getSoGiayTo() {
		return soGiayTo;
	}

	public void setSoGiayTo(String soGiayTo) {
		this.soGiayTo = soGiayTo;
	}

	public String getNgayCapGiayTo() {
		return ngayCapGiayTo;
	}

	public void setNgayCapGiayTo(String ngayCapGiayTo) {
		this.ngayCapGiayTo = ngayCapGiayTo;
	}

	public String getNoiCapGiayTo() {
		return noiCapGiayTo;
	}

	public void setNoiCapGiayTo(String noiCapGiayTo) {
		this.noiCapGiayTo = noiCapGiayTo;
	}

	public Integer getTinhThuongTruID() {
		return tinhThuongTruID;
	}

	public void setTinhThuongTruID(Integer tinhThuongTruID) {
		this.tinhThuongTruID = tinhThuongTruID;
	}

	public Integer getHuyenThuongTruID() {
		return huyenThuongTruID;
	}

	public void setHuyenThuongTruID(Integer huyenThuongTruID) {
		this.huyenThuongTruID = huyenThuongTruID;
	}

	public Integer getXaThuongTruID() {
		return xaThuongTruID;
	}

	public void setXaThuongTruID(Integer xaThuongTruID) {
		this.xaThuongTruID = xaThuongTruID;
	}

	public String getSoNhaThuongTru() {
		return soNhaThuongTru;
	}

	public void setSoNhaThuongTru(String soNhaThuongTru) {
		this.soNhaThuongTru = soNhaThuongTru;
	}

	public String getDiaChiLienHe() {
		return diaChiLienHe;
	}

	public void setDiaChiLienHe(String diaChiLienHe) {
		this.diaChiLienHe = diaChiLienHe;
	}

	public String getTenToChuc() {
		return tenToChuc;
	}

	public void setTenToChuc(String tenToChuc) {
		this.tenToChuc = tenToChuc;
	}

	public String getGiayDangKyKinhDoanhSo() {
		return giayDangKyKinhDoanhSo;
	}

	public void setGiayDangKyKinhDoanhSo(String giayDangKyKinhDoanhSo) {
		this.giayDangKyKinhDoanhSo = giayDangKyKinhDoanhSo;
	}

	public String getNgayCapGiayDangKyKinhDoanh() {
		return ngayCapGiayDangKyKinhDoanh;
	}

	public void setNgayCapGiayDangKyKinhDoanh(String ngayCapGiayDangKyKinhDoanh) {
		this.ngayCapGiayDangKyKinhDoanh = ngayCapGiayDangKyKinhDoanh;
	}

	public String getNoiCapGiayDangKyKinhDoanh() {
		return noiCapGiayDangKyKinhDoanh;
	}

	public void setNoiCapGiayDangKyKinhDoanh(String noiCapGiayDangKyKinhDoanh) {
		this.noiCapGiayDangKyKinhDoanh = noiCapGiayDangKyKinhDoanh;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public String getChucVuNguoiDaiDien() {
		return chucVuNguoiDaiDien;
	}

	public void setChucVuNguoiDaiDien(String chucVuNguoiDaiDien) {
		this.chucVuNguoiDaiDien = chucVuNguoiDaiDien;
	}

	public String getGiayUyQuyenSo() {
		return giayUyQuyenSo;
	}

	public void setGiayUyQuyenSo(String giayUyQuyenSo) {
		this.giayUyQuyenSo = giayUyQuyenSo;
	}

	public String getNgayCapGiayUyQuyen() {
		return ngayCapGiayUyQuyen;
	}

	public void setNgayCapGiayUyQuyen(String ngayCapGiayUyQuyen) {
		this.ngayCapGiayUyQuyen = ngayCapGiayUyQuyen;
	}

	public Integer getLoaiDuongSuID() {
		return loaiDuongSuID;
	}

	public void setLoaiDuongSuID(Integer loaiDuongSuID) {
		this.loaiDuongSuID = loaiDuongSuID;
	}

	public String getHoTenNguoiUyQuyen() {
		return hoTenNguoiUyQuyen;
	}

	public void setHoTenNguoiUyQuyen(String hoTenNguoiUyQuyen) {
		this.hoTenNguoiUyQuyen = hoTenNguoiUyQuyen;
	}

	public String getNgaySinhNguoiUyQuyen() {
		return ngaySinhNguoiUyQuyen;
	}

	public void setNgaySinhNguoiUyQuyen(String ngaySinhNguoiUyQuyen) {
		this.ngaySinhNguoiUyQuyen = ngaySinhNguoiUyQuyen;
	}

	public Integer getNamSinhNguoiUyQuyen() {
		return namSinhNguoiUyQuyen;
	}

	public void setNamSinhNguoiUyQuyen(Integer namSinhNguoiUyQuyen) {
		this.namSinhNguoiUyQuyen = namSinhNguoiUyQuyen;
	}

	public Integer getLoaiGiayToNguoiUyQuyenID() {
		return loaiGiayToNguoiUyQuyenID;
	}

	public void setLoaiGiayToNguoiUyQuyenID(Integer loaiGiayToNguoiUyQuyenID) {
		this.loaiGiayToNguoiUyQuyenID = loaiGiayToNguoiUyQuyenID;
	}

	public String getSoGiayToNguoiUyQuyen() {
		return soGiayToNguoiUyQuyen;
	}

	public void setSoGiayToNguoiUyQuyen(String soGiayToNguoiUyQuyen) {
		this.soGiayToNguoiUyQuyen = soGiayToNguoiUyQuyen;
	}

	public String getNgayCapGiayToNguoiUyQuyen() {
		return ngayCapGiayToNguoiUyQuyen;
	}

	public void setNgayCapGiayToNguoiUyQuyen(String ngayCapGiayToNguoiUyQuyen) {
		this.ngayCapGiayToNguoiUyQuyen = ngayCapGiayToNguoiUyQuyen;
	}

	public String getNoiCapGiayToNguoiUyQuyen() {
		return noiCapGiayToNguoiUyQuyen;
	}

	public void setNoiCapGiayToNguoiUyQuyen(String noiCapGiayToNguoiUyQuyen) {
		this.noiCapGiayToNguoiUyQuyen = noiCapGiayToNguoiUyQuyen;
	}

	public Integer getTinhThuongTruNguoiUyQuyenID() {
		return tinhThuongTruNguoiUyQuyenID;
	}

	public void setTinhThuongTruNguoiUyQuyenID(Integer tinhThuongTruNguoiUyQuyenID) {
		this.tinhThuongTruNguoiUyQuyenID = tinhThuongTruNguoiUyQuyenID;
	}

	public Integer getHuyenThuongTruNguoiUyQuyenID() {
		return huyenThuongTruNguoiUyQuyenID;
	}

	public void setHuyenThuongTruNguoiUyQuyenID(Integer huyenThuongTruNguoiUyQuyenID) {
		this.huyenThuongTruNguoiUyQuyenID = huyenThuongTruNguoiUyQuyenID;
	}

	public Integer getXaThuongTruNguoiUyQuyenID() {
		return xaThuongTruNguoiUyQuyenID;
	}

	public void setXaThuongTruNguoiUyQuyenID(Integer xaThuongTruNguoiUyQuyenID) {
		this.xaThuongTruNguoiUyQuyenID = xaThuongTruNguoiUyQuyenID;
	}

	public String getSoNhaThuongTruNguoiUyQuyen() {
		return soNhaThuongTruNguoiUyQuyen;
	}

	public void setSoNhaThuongTruNguoiUyQuyen(String soNhaThuongTruNguoiUyQuyen) {
		this.soNhaThuongTruNguoiUyQuyen = soNhaThuongTruNguoiUyQuyen;
	}

	public String getDiaChiLienHeNguoiUyQuyen() {
		return diaChiLienHeNguoiUyQuyen;
	}

	public void setDiaChiLienHeNguoiUyQuyen(String diaChiLienHeNguoiUyQuyen) {
		this.diaChiLienHeNguoiUyQuyen = diaChiLienHeNguoiUyQuyen;
	}

}
