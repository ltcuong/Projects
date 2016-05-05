package controller.ajaxhopdong;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import service.DanhMucService;
import util.Const;
import controller.BaseAction;
import entity.HDHopDongTam;
import entity.TSBeCa;
import entity.TSTaiSan;

public class GetFormCapNhatTaiSanBeCa extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String result;
	private Integer taiSanID;
	private Integer loaiTaiSanID;
	private String tenPhieuTaiSan;
	private String tenKhoaTaiSan;
	private String ghiChu;
	private int benSoHuuTaiSan;
	//
	private Integer taiSanBeCaID;
	private String tenPhuongTien;
	private String coQuanDangKy;
	private Integer namDong;
	private String noiDong;
	private Double chieuDaiLmax;
	private Double chieuRongBmax;
	private Double chieuCaoD;
	private Double ltk;
	private String vatLieuVo;
	private String tongDungTich;
	private String kichThuocCabin;
	private String kyHieuMay;
	private String soMay;
	private String congSuat;
	private String duocPhepSuDung;
	private String giayDKPhuongTienNgheCa;
	private String ngayCapGiayDKPhuongTienNgheCa;
	private String noiCapGiayDKPhuongTienNgheCa;
	private String soDangKyCu;
	
	public String execute() {
		
		return SUCCESS;
	}

	public String executeCapNhatThongTinTaiSanBeCa() {
		HDHopDongTam hopDongTam = (HDHopDongTam) session.get(Const.SESSION_THONGTIN_HOPDONG);
		SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
		DanhMucService danhMucSV = new DanhMucService();
		if (hopDongTam != null) {
			//Thong tin chung
			TSTaiSan taiSan = new TSTaiSan();
			List<TSTaiSan> listTaiSan = null;
			if (benSoHuuTaiSan == 1) {
				listTaiSan = hopDongTam.getListTaiSanBenA();
			} else {
				listTaiSan = hopDongTam.getListTaiSanBenB();
			}
			taiSan.setLoaiTaiSanID(loaiTaiSanID);
			taiSan.setLoaiTaiSan(danhMucSV.getAllLoaiTaiSanByID(loaiTaiSanID));
			taiSan.setTenPhieuTaiSan(tenPhieuTaiSan);
			taiSan.setTenKhoaTaiSan(tenKhoaTaiSan);
			taiSan.setGhiChu(ghiChu);
			//Thong tin chi tiet
			TSBeCa beCa = new TSBeCa();
			beCa.setTenPhuongTien(tenPhuongTien);
			beCa.setCoQuanDangKy(coQuanDangKy);
			beCa.setNamDong(namDong);
			beCa.setNoiDong(noiDong);
			beCa.setChieuDaiLmax(chieuDaiLmax);
			beCa.setChieuRongBmax(chieuRongBmax);
			beCa.setChieuCaoD(chieuCaoD);
			beCa.setLtk(ltk);
			beCa.setVatLieuVo(vatLieuVo);
			beCa.setTongDungTich(tongDungTich);
			beCa.setKichThuocCabin(kichThuocCabin);
			beCa.setKyHieuMay(kyHieuMay);
			beCa.setSoMay(soMay);
			beCa.setCongSuat(congSuat);
			beCa.setDuocPhepSuDung(duocPhepSuDung);
			beCa.setGiayDKPhuongTienNgheCa(giayDKPhuongTienNgheCa);
			Date d1 = null;
			if (ngayCapGiayDKPhuongTienNgheCa != null && !ngayCapGiayDKPhuongTienNgheCa.isEmpty()) {
				try {
					d1 = df.parse(ngayCapGiayDKPhuongTienNgheCa);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			beCa.setNgayCapGiayDKPhuongTienNgheCa(d1);
			beCa.setNoiCapGiayDKPhuongTienNgheCa(noiCapGiayDKPhuongTienNgheCa);
			beCa.setSoDangKyCu(soDangKyCu);
			taiSan.setTaiSanBeCa(beCa);
			beCa.setTaiSan(taiSan);
			
			
			if (listTaiSan == null) {
				listTaiSan = new ArrayList<>();
			}
			listTaiSan.add(taiSan);	
			if (benSoHuuTaiSan == 1) {
				hopDongTam.setListTaiSanBenA(listTaiSan);
			} else {
				hopDongTam.setListTaiSanBenB(listTaiSan);
			}
			session.remove(Const.SESSION_THONGTIN_HOPDONG);
			session.put(Const.SESSION_THONGTIN_HOPDONG, hopDongTam);
			result = Const.STRING_TRUE;
		} else {
			result = Const.STRING_FALSE;
		}
		return SUCCESS;
	}

	public int getBenSoHuuTaiSan() {
		return benSoHuuTaiSan;
	}

	public void setBenSoHuuTaiSan(int benSoHuuTaiSan) {
		this.benSoHuuTaiSan = benSoHuuTaiSan;
	}

	public String getGhiChu() {
		return ghiChu;
	}

	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}

	public String getTenKhoaTaiSan() {
		return tenKhoaTaiSan;
	}

	public void setTenKhoaTaiSan(String tenKhoaTaiSan) {
		this.tenKhoaTaiSan = tenKhoaTaiSan;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public Integer getTaiSanID() {
		return taiSanID;
	}

	public void setTaiSanID(Integer taiSanID) {
		this.taiSanID = taiSanID;
	}

	public Integer getLoaiTaiSanID() {
		return loaiTaiSanID;
	}

	public void setLoaiTaiSanID(Integer loaiTaiSanID) {
		this.loaiTaiSanID = loaiTaiSanID;
	}

	public String getTenPhieuTaiSan() {
		return tenPhieuTaiSan;
	}

	public void setTenPhieuTaiSan(String tenPhieuTaiSan) {
		this.tenPhieuTaiSan = tenPhieuTaiSan;
	}

	public Integer getTaiSanBeCaID() {
		return taiSanBeCaID;
	}

	public void setTaiSanBeCaID(Integer taiSanBeCaID) {
		this.taiSanBeCaID = taiSanBeCaID;
	}

	public String getTenPhuongTien() {
		return tenPhuongTien;
	}

	public void setTenPhuongTien(String tenPhuongTien) {
		this.tenPhuongTien = tenPhuongTien;
	}

	public String getCoQuanDangKy() {
		return coQuanDangKy;
	}

	public void setCoQuanDangKy(String coQuanDangKy) {
		this.coQuanDangKy = coQuanDangKy;
	}

	public Integer getNamDong() {
		return namDong;
	}

	public void setNamDong(Integer namDong) {
		this.namDong = namDong;
	}

	public String getNoiDong() {
		return noiDong;
	}

	public void setNoiDong(String noiDong) {
		this.noiDong = noiDong;
	}

	public Double getChieuDaiLmax() {
		return chieuDaiLmax;
	}

	public void setChieuDaiLmax(Double chieuDaiLmax) {
		this.chieuDaiLmax = chieuDaiLmax;
	}

	public Double getChieuRongBmax() {
		return chieuRongBmax;
	}

	public void setChieuRongBmax(Double chieuRongBmax) {
		this.chieuRongBmax = chieuRongBmax;
	}

	public Double getChieuCaoD() {
		return chieuCaoD;
	}

	public void setChieuCaoD(Double chieuCaoD) {
		this.chieuCaoD = chieuCaoD;
	}

	public Double getLtk() {
		return ltk;
	}

	public void setLtk(Double ltk) {
		this.ltk = ltk;
	}

	public String getVatLieuVo() {
		return vatLieuVo;
	}

	public void setVatLieuVo(String vatLieuVo) {
		this.vatLieuVo = vatLieuVo;
	}

	public String getTongDungTich() {
		return tongDungTich;
	}

	public void setTongDungTich(String tongDungTich) {
		this.tongDungTich = tongDungTich;
	}

	public String getKichThuocCabin() {
		return kichThuocCabin;
	}

	public void setKichThuocCabin(String kichThuocCabin) {
		this.kichThuocCabin = kichThuocCabin;
	}

	public String getKyHieuMay() {
		return kyHieuMay;
	}

	public void setKyHieuMay(String kyHieuMay) {
		this.kyHieuMay = kyHieuMay;
	}

	public String getSoMay() {
		return soMay;
	}

	public void setSoMay(String soMay) {
		this.soMay = soMay;
	}

	public String getCongSuat() {
		return congSuat;
	}

	public void setCongSuat(String congSuat) {
		this.congSuat = congSuat;
	}

	public String getDuocPhepSuDung() {
		return duocPhepSuDung;
	}

	public void setDuocPhepSuDung(String duocPhepSuDung) {
		this.duocPhepSuDung = duocPhepSuDung;
	}

	public String getGiayDKPhuongTienNgheCa() {
		return giayDKPhuongTienNgheCa;
	}

	public void setGiayDKPhuongTienNgheCa(String giayDKPhuongTienNgheCa) {
		this.giayDKPhuongTienNgheCa = giayDKPhuongTienNgheCa;
	}

	public String getNgayCapGiayDKPhuongTienNgheCa() {
		return ngayCapGiayDKPhuongTienNgheCa;
	}

	public void setNgayCapGiayDKPhuongTienNgheCa(
			String ngayCapGiayDKPhuongTienNgheCa) {
		this.ngayCapGiayDKPhuongTienNgheCa = ngayCapGiayDKPhuongTienNgheCa;
	}

	public String getNoiCapGiayDKPhuongTienNgheCa() {
		return noiCapGiayDKPhuongTienNgheCa;
	}

	public void setNoiCapGiayDKPhuongTienNgheCa(String noiCapGiayDKPhuongTienNgheCa) {
		this.noiCapGiayDKPhuongTienNgheCa = noiCapGiayDKPhuongTienNgheCa;
	}

	public String getSoDangKyCu() {
		return soDangKyCu;
	}

	public void setSoDangKyCu(String soDangKyCu) {
		this.soDangKyCu = soDangKyCu;
	}
	
}
