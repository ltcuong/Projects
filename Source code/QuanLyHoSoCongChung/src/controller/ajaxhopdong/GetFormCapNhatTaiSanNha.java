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
import entity.TSNha;
import entity.TSTaiSan;

public class GetFormCapNhatTaiSanNha extends BaseAction {

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
	private int coGiaoDichMotPhan;
	private int benSoHuuTaiSan;
	//
	private Integer taiSanNhaID;
	private String diaChiTaiSan;
	private String thuaDatSo;
	private String toBanDoSo;
	private Double dienTichSuDung;
	private Double dienTichSuDungChung;
	private Double dienTichSuDungRieng;
	private String mucDichSuDung;
	private String thoiHanSuDung;
	private String thoiHanThueDatTuNgay;
	private String thoiHanThueDatDenNgay;
	private String hopDongThueDat;
	private String nguonGocSuDung;
	private Double dienTichXayDung;
	private Double dienTichSan;
	private String hanCheVeQuyenSuDungDat;
	private String ketCau;
	private String ngayCapGiayCNQSDD;
	private String noiCapGiayCNQSDD;
	private String vaoSoGiayCNQSDDSo;
	private Integer soTang;
	private String loaiCongTrinh;
	private String giayCNQuyenSoHuuTaiSanSo;
	private String ngayCapGiayCNQuyenSoHuuTaiSan;
	private String noiCapGiayCNQuyenSoHuuTaiSan;
	private String trangThietBiGanLien;
	private Double dienTichGiaoDichMotPhan;
	
	public String execute() {
		
		return SUCCESS;
	}

	public String executeGetFormCapNhatTaiSanChuyenDoiNhaO() {
		
		return SUCCESS;
	}
	
	
	
	public String executeCapNhatThongTinTaiSanNha() {
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
			TSNha nha = new TSNha();
			nha.setDiaChiTaiSan(diaChiTaiSan);
			nha.setThuaDatSo(thuaDatSo);
			nha.setToBanDoSo(toBanDoSo);
			nha.setDienTichSuDung(dienTichSuDung);
			nha.setDienTichSuDungChung(dienTichSuDungChung);
			nha.setDienTichSuDungRieng(dienTichSuDungRieng);
			nha.setMucDichSuDung(mucDichSuDung);
			nha.setThoiHanSuDung(thoiHanSuDung);
			Date d3 = null;
			if (thoiHanThueDatTuNgay != null && !thoiHanThueDatTuNgay.isEmpty()) {
				try {
					d3 = df.parse(thoiHanThueDatTuNgay);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			nha.setThoiHanThueDatTuNgay(d3);
			Date d4 = null;
			if (thoiHanThueDatDenNgay != null && !thoiHanThueDatDenNgay.isEmpty()) {
				try {
					d4 = df.parse(thoiHanThueDatDenNgay);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			nha.setThoiHanThueDatDenNgay(d4);
			nha.setHopDongThueDat(hopDongThueDat);
			nha.setNguonGocSuDung(nguonGocSuDung);
			nha.setDienTichXayDung(dienTichXayDung);
			nha.setDienTichSan(dienTichSan);
			nha.setHanCheVeQuyenSuDungDat(hanCheVeQuyenSuDungDat);
			nha.setKetCau(ketCau);
			Date d1 = null;
			if (ngayCapGiayCNQSDD != null && !ngayCapGiayCNQSDD.isEmpty()) {
				try {
					d1 = df.parse(ngayCapGiayCNQSDD);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			nha.setNgayCapGiayCNQSDD(d1);
			nha.setNoiCapGiayCNQSDD(noiCapGiayCNQSDD);
			nha.setVaoSoGiayCNQSDDSo(vaoSoGiayCNQSDDSo);
			nha.setSoTang(soTang);
			nha.setLoaiCongTrinh(loaiCongTrinh);
			nha.setGiayCNQuyenSoHuuTaiSanSo(giayCNQuyenSoHuuTaiSanSo);
			Date d2 = null;
			if (ngayCapGiayCNQuyenSoHuuTaiSan != null && !ngayCapGiayCNQuyenSoHuuTaiSan.isEmpty()) {
				try {
					d2 = df.parse(ngayCapGiayCNQuyenSoHuuTaiSan);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			nha.setNgayCapGiayCNQuyenSoHuuTaiSan(d2);
			nha.setNoiCapGiayCNQuyenSoHuuTaiSan(noiCapGiayCNQuyenSoHuuTaiSan);
			nha.setTrangThietBiGanLien(trangThietBiGanLien);
			nha.setCoGiaoDichMotPhan(coGiaoDichMotPhan);
			nha.setDienTichGiaoDichMotPhan(dienTichGiaoDichMotPhan);
			
			taiSan.setTaiSanNha(nha);
			nha.setTaiSan(taiSan);
			
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

	public Double getDienTichGiaoDichMotPhan() {
		return dienTichGiaoDichMotPhan;
	}

	public void setDienTichGiaoDichMotPhan(Double dienTichGiaoDichMotPhan) {
		this.dienTichGiaoDichMotPhan = dienTichGiaoDichMotPhan;
	}

	public int getCoGiaoDichMotPhan() {
		return coGiaoDichMotPhan;
	}

	public void setCoGiaoDichMotPhan(int coGiaoDichMotPhan) {
		this.coGiaoDichMotPhan = coGiaoDichMotPhan;
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

	public Integer getTaiSanNhaID() {
		return taiSanNhaID;
	}

	public void setTaiSanNhaID(Integer taiSanNhaID) {
		this.taiSanNhaID = taiSanNhaID;
	}

	public String getDiaChiTaiSan() {
		return diaChiTaiSan;
	}

	public void setDiaChiTaiSan(String diaChiTaiSan) {
		this.diaChiTaiSan = diaChiTaiSan;
	}

	public String getThuaDatSo() {
		return thuaDatSo;
	}

	public void setThuaDatSo(String thuaDatSo) {
		this.thuaDatSo = thuaDatSo;
	}

	public String getToBanDoSo() {
		return toBanDoSo;
	}

	public void setToBanDoSo(String toBanDoSo) {
		this.toBanDoSo = toBanDoSo;
	}

	public String getMucDichSuDung() {
		return mucDichSuDung;
	}

	public void setMucDichSuDung(String mucDichSuDung) {
		this.mucDichSuDung = mucDichSuDung;
	}

	public String getThoiHanSuDung() {
		return thoiHanSuDung;
	}

	public void setThoiHanSuDung(String thoiHanSuDung) {
		this.thoiHanSuDung = thoiHanSuDung;
	}

	public String getNguonGocSuDung() {
		return nguonGocSuDung;
	}

	public void setNguonGocSuDung(String nguonGocSuDung) {
		this.nguonGocSuDung = nguonGocSuDung;
	}

	public Double getDienTichXayDung() {
		return dienTichXayDung;
	}

	public void setDienTichXayDung(Double dienTichXayDung) {
		this.dienTichXayDung = dienTichXayDung;
	}

	public Double getDienTichSan() {
		return dienTichSan;
	}

	public void setDienTichSan(Double dienTichSan) {
		this.dienTichSan = dienTichSan;
	}

	public String getHanCheVeQuyenSuDungDat() {
		return hanCheVeQuyenSuDungDat;
	}

	public void setHanCheVeQuyenSuDungDat(String hanCheVeQuyenSuDungDat) {
		this.hanCheVeQuyenSuDungDat = hanCheVeQuyenSuDungDat;
	}

	public String getKetCau() {
		return ketCau;
	}

	public void setKetCau(String ketCau) {
		this.ketCau = ketCau;
	}

	public String getVaoSoGiayCNQSDDSo() {
		return vaoSoGiayCNQSDDSo;
	}

	public void setVaoSoGiayCNQSDDSo(String vaoSoGiayCNQSDDSo) {
		this.vaoSoGiayCNQSDDSo = vaoSoGiayCNQSDDSo;
	}

	public Integer getSoTang() {
		return soTang;
	}

	public void setSoTang(Integer soTang) {
		this.soTang = soTang;
	}

	public String getLoaiCongTrinh() {
		return loaiCongTrinh;
	}

	public void setLoaiCongTrinh(String loaiCongTrinh) {
		this.loaiCongTrinh = loaiCongTrinh;
	}

	public String getGiayCNQuyenSoHuuTaiSanSo() {
		return giayCNQuyenSoHuuTaiSanSo;
	}

	public void setGiayCNQuyenSoHuuTaiSanSo(String giayCNQuyenSoHuuTaiSanSo) {
		this.giayCNQuyenSoHuuTaiSanSo = giayCNQuyenSoHuuTaiSanSo;
	}

	public String getNgayCapGiayCNQuyenSoHuuTaiSan() {
		return ngayCapGiayCNQuyenSoHuuTaiSan;
	}

	public void setNgayCapGiayCNQuyenSoHuuTaiSan(
			String ngayCapGiayCNQuyenSoHuuTaiSan) {
		this.ngayCapGiayCNQuyenSoHuuTaiSan = ngayCapGiayCNQuyenSoHuuTaiSan;
	}

	public String getNoiCapGiayCNQuyenSoHuuTaiSan() {
		return noiCapGiayCNQuyenSoHuuTaiSan;
	}

	public void setNoiCapGiayCNQuyenSoHuuTaiSan(String noiCapGiayCNQuyenSoHuuTaiSan) {
		this.noiCapGiayCNQuyenSoHuuTaiSan = noiCapGiayCNQuyenSoHuuTaiSan;
	}

	public Double getDienTichSuDung() {
		return dienTichSuDung;
	}

	public void setDienTichSuDung(Double dienTichSuDung) {
		this.dienTichSuDung = dienTichSuDung;
	}

	public Double getDienTichSuDungChung() {
		return dienTichSuDungChung;
	}

	public void setDienTichSuDungChung(Double dienTichSuDungChung) {
		this.dienTichSuDungChung = dienTichSuDungChung;
	}

	public Double getDienTichSuDungRieng() {
		return dienTichSuDungRieng;
	}

	public void setDienTichSuDungRieng(Double dienTichSuDungRieng) {
		this.dienTichSuDungRieng = dienTichSuDungRieng;
	}

	public String getThoiHanThueDatTuNgay() {
		return thoiHanThueDatTuNgay;
	}

	public void setThoiHanThueDatTuNgay(String thoiHanThueDatTuNgay) {
		this.thoiHanThueDatTuNgay = thoiHanThueDatTuNgay;
	}

	public String getThoiHanThueDatDenNgay() {
		return thoiHanThueDatDenNgay;
	}

	public void setThoiHanThueDatDenNgay(String thoiHanThueDatDenNgay) {
		this.thoiHanThueDatDenNgay = thoiHanThueDatDenNgay;
	}

	public String getHopDongThueDat() {
		return hopDongThueDat;
	}

	public void setHopDongThueDat(String hopDongThueDat) {
		this.hopDongThueDat = hopDongThueDat;
	}

	public String getNgayCapGiayCNQSDD() {
		return ngayCapGiayCNQSDD;
	}

	public void setNgayCapGiayCNQSDD(String ngayCapGiayCNQSDD) {
		this.ngayCapGiayCNQSDD = ngayCapGiayCNQSDD;
	}

	public String getNoiCapGiayCNQSDD() {
		return noiCapGiayCNQSDD;
	}

	public void setNoiCapGiayCNQSDD(String noiCapGiayCNQSDD) {
		this.noiCapGiayCNQSDD = noiCapGiayCNQSDD;
	}

	public String getTrangThietBiGanLien() {
		return trangThietBiGanLien;
	}

	public void setTrangThietBiGanLien(String trangThietBiGanLien) {
		this.trangThietBiGanLien = trangThietBiGanLien;
	}
	
}
