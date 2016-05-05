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
import entity.TSBatDongSanKhongCoTaiSanGanLienVoiDat;
import entity.TSCongTrinhKienTruc;
import entity.TSNha;
import entity.TSTaiSan;

public class GetFormCapNhatTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat extends BaseAction {

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
	private int coTaiSanGanLien;
	private int benSoHuuTaiSan;
	//
	private Integer taiSanBatDongSanKhongCoTaiSanGanLienVoiDatID;
	private String diaChiTaiSan;
	private String thuaDatSo;
	private String toBanDoSo;
	private Double dienTich;
	private Double hinhThucSuDungChung;
	private Double hinhThucSuDungRieng;
	private String mucDichSuDung;
	private String thoiHanSuDung;
	private String nguonGocSuDung;
	private String ngayCapGiayCNQuyenSuDungDat;
	private String noiCapGiayCNQuyenSuDungDat;
	private String vaoSoCapGiayCNQuyenSuDungDatSo;
	private String hanCheQuyenSuDungDat;
	private Double dienTichGiaoDichMotPhan;
	//Tai san gan lien
	private Integer loaiTaiSanGanLienID;
	private String giayChungNhanGanLien;
	private String ngayCapGiayChungNhanGanLien;
	private String noiCapGiayChungNhanGanLien;
	private String loaiCongTrinhGanLien;
	private Double tongDienTichSuDungGanLien;
	private Double dienTichXayDungGanLien;
	private String ketCauNhaGanLien;
	private Integer soTangNhaGanLien;
	
	
	public String execute() {
		
		return SUCCESS;
	}
	public String executeCapNhatThongTinTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat() {
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
			TSBatDongSanKhongCoTaiSanGanLienVoiDat batDongSan = new TSBatDongSanKhongCoTaiSanGanLienVoiDat();
			batDongSan.setDiaChiTaiSan(diaChiTaiSan);
			batDongSan.setThuaDatSo(thuaDatSo);
			batDongSan.setToBanDoSo(toBanDoSo);
			batDongSan.setDienTich(dienTich);
			batDongSan.setHinhThucSuDungChung(hinhThucSuDungChung);
			batDongSan.setHinhThucSuDungRieng(hinhThucSuDungRieng);
			batDongSan.setMucDichSuDung(mucDichSuDung);
			batDongSan.setThoiHanSuDung(thoiHanSuDung);
			batDongSan.setNguonGocSuDung(nguonGocSuDung);
			Date d1 = null;
			try {
				d1 = df.parse(ngayCapGiayCNQuyenSuDungDat);
			} catch (Exception e) {
				// TODO: handle exception
			}
			batDongSan.setNgayCapGiayCNQuyenSuDungDat(d1);
			batDongSan.setNoiCapGiayCNQuyenSuDungDat(noiCapGiayCNQuyenSuDungDat);
			batDongSan.setVaoSoCapGiayCNQuyenSuDungDatSo(vaoSoCapGiayCNQuyenSuDungDatSo);
			batDongSan.setHanCheQuyenSuDungDat(hanCheQuyenSuDungDat);
			batDongSan.setCoGiaoDichMotPhan(coGiaoDichMotPhan);
			batDongSan.setDienTichGiaoDichMotPhan(dienTichGiaoDichMotPhan);
			batDongSan.setCoTaiSanGanLien(coTaiSanGanLien);
			//Set tai san gan lien voi dat neu co
			if (coTaiSanGanLien == 1) {
				batDongSan.setLoaiTaiSanGanLienID(loaiTaiSanGanLienID);
				if (loaiTaiSanGanLienID.intValue() == 1) {
					//Nha
					TSNha taiSanNhaGanLien = batDongSan.getTaiSanNhaGanLien();
					if (taiSanNhaGanLien == null) {
						taiSanNhaGanLien = new TSNha();
					}
					taiSanNhaGanLien.setGiayCNQuyenSoHuuTaiSanSo(giayChungNhanGanLien);
					Date d2  = null;
					if (ngayCapGiayChungNhanGanLien != null && !ngayCapGiayChungNhanGanLien.isEmpty()) {
						try {
							d2 = df.parse(ngayCapGiayChungNhanGanLien);
						} catch (ParseException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
					taiSanNhaGanLien.setNgayCapGiayCNQuyenSoHuuTaiSan(d2);
					taiSanNhaGanLien.setNoiCapGiayCNQuyenSoHuuTaiSan(noiCapGiayChungNhanGanLien);
					taiSanNhaGanLien.setLoaiCongTrinh(loaiCongTrinhGanLien);
					taiSanNhaGanLien.setDienTichXayDung(dienTichXayDungGanLien);
					taiSanNhaGanLien.setKetCau(ketCauNhaGanLien);
					taiSanNhaGanLien.setSoTang(soTangNhaGanLien);
					batDongSan.setTaiSanNhaGanLien(taiSanNhaGanLien);
				} else {
					//Cong trinh kien truc
					TSCongTrinhKienTruc congTrinhKienTruc = batDongSan.getTaiSanCongTrinhKienTrucGanLien();
					if (congTrinhKienTruc == null) {
						congTrinhKienTruc = new TSCongTrinhKienTruc();
					}
					congTrinhKienTruc.setGiayCNQuyenSoHuuTaiSanSo(giayChungNhanGanLien);
					Date d3  = null;
					if (ngayCapGiayChungNhanGanLien != null && !ngayCapGiayChungNhanGanLien.isEmpty()) {
						try {
							d3 = df.parse(ngayCapGiayChungNhanGanLien);
						} catch (ParseException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
					congTrinhKienTruc.setNgayCapGiayCNQuyenSoHuuTaiSan(d3);
					congTrinhKienTruc.setNoiCapGiayCNQuyenSoHuuTaiSan(noiCapGiayChungNhanGanLien);
					congTrinhKienTruc.setLoaiCongTrinh(loaiCongTrinhGanLien);
					congTrinhKienTruc.setTongDienTich(tongDienTichSuDungGanLien);
					congTrinhKienTruc.setDienTichXayDung(dienTichXayDungGanLien);
					congTrinhKienTruc.setKetCau(ketCauNhaGanLien);
					congTrinhKienTruc.setSoTang(soTangNhaGanLien);
					batDongSan.setTaiSanCongTrinhKienTrucGanLien(congTrinhKienTruc);
				}
			}
			taiSan.setTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat(batDongSan);
			batDongSan.setTaiSan(taiSan);
			
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
	
	
	public Integer getLoaiTaiSanGanLienID() {
		return loaiTaiSanGanLienID;
	}
	public void setLoaiTaiSanGanLienID(Integer loaiTaiSanGanLienID) {
		this.loaiTaiSanGanLienID = loaiTaiSanGanLienID;
	}
	public String getGiayChungNhanGanLien() {
		return giayChungNhanGanLien;
	}
	public void setGiayChungNhanGanLien(String giayChungNhanGanLien) {
		this.giayChungNhanGanLien = giayChungNhanGanLien;
	}
	public String getNgayCapGiayChungNhanGanLien() {
		return ngayCapGiayChungNhanGanLien;
	}
	public void setNgayCapGiayChungNhanGanLien(String ngayCapGiayChungNhanGanLien) {
		this.ngayCapGiayChungNhanGanLien = ngayCapGiayChungNhanGanLien;
	}
	public String getNoiCapGiayChungNhanGanLien() {
		return noiCapGiayChungNhanGanLien;
	}
	public void setNoiCapGiayChungNhanGanLien(String noiCapGiayChungNhanGanLien) {
		this.noiCapGiayChungNhanGanLien = noiCapGiayChungNhanGanLien;
	}
	public String getLoaiCongTrinhGanLien() {
		return loaiCongTrinhGanLien;
	}
	public void setLoaiCongTrinhGanLien(String loaiCongTrinhGanLien) {
		this.loaiCongTrinhGanLien = loaiCongTrinhGanLien;
	}
	public Double getTongDienTichSuDungGanLien() {
		return tongDienTichSuDungGanLien;
	}
	public void setTongDienTichSuDungGanLien(Double tongDienTichSuDungGanLien) {
		this.tongDienTichSuDungGanLien = tongDienTichSuDungGanLien;
	}
	public Double getDienTichXayDungGanLien() {
		return dienTichXayDungGanLien;
	}
	public void setDienTichXayDungGanLien(Double dienTichXayDungGanLien) {
		this.dienTichXayDungGanLien = dienTichXayDungGanLien;
	}
	public String getKetCauNhaGanLien() {
		return ketCauNhaGanLien;
	}
	public void setKetCauNhaGanLien(String ketCauNhaGanLien) {
		this.ketCauNhaGanLien = ketCauNhaGanLien;
	}
	public Integer getSoTangNhaGanLien() {
		return soTangNhaGanLien;
	}
	public void setSoTangNhaGanLien(Integer soTangNhaGanLien) {
		this.soTangNhaGanLien = soTangNhaGanLien;
	}
	public int getCoTaiSanGanLien() {
		return coTaiSanGanLien;
	}
	public void setCoTaiSanGanLien(int coTaiSanGanLien) {
		this.coTaiSanGanLien = coTaiSanGanLien;
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
	public Integer getTaiSanBatDongSanKhongCoTaiSanGanLienVoiDatID() {
		return taiSanBatDongSanKhongCoTaiSanGanLienVoiDatID;
	}
	public void setTaiSanBatDongSanKhongCoTaiSanGanLienVoiDatID(
			Integer taiSanBatDongSanKhongCoTaiSanGanLienVoiDatID) {
		this.taiSanBatDongSanKhongCoTaiSanGanLienVoiDatID = taiSanBatDongSanKhongCoTaiSanGanLienVoiDatID;
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
	public Double getDienTich() {
		return dienTich;
	}
	public void setDienTich(Double dienTich) {
		this.dienTich = dienTich;
	}
	public Double getHinhThucSuDungChung() {
		return hinhThucSuDungChung;
	}
	public void setHinhThucSuDungChung(Double hinhThucSuDungChung) {
		this.hinhThucSuDungChung = hinhThucSuDungChung;
	}
	public Double getHinhThucSuDungRieng() {
		return hinhThucSuDungRieng;
	}
	public void setHinhThucSuDungRieng(Double hinhThucSuDungRieng) {
		this.hinhThucSuDungRieng = hinhThucSuDungRieng;
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
	public String getNgayCapGiayCNQuyenSuDungDat() {
		return ngayCapGiayCNQuyenSuDungDat;
	}
	public void setNgayCapGiayCNQuyenSuDungDat(String ngayCapGiayCNQuyenSuDungDat) {
		this.ngayCapGiayCNQuyenSuDungDat = ngayCapGiayCNQuyenSuDungDat;
	}
	public String getNoiCapGiayCNQuyenSuDungDat() {
		return noiCapGiayCNQuyenSuDungDat;
	}
	public void setNoiCapGiayCNQuyenSuDungDat(String noiCapGiayCNQuyenSuDungDat) {
		this.noiCapGiayCNQuyenSuDungDat = noiCapGiayCNQuyenSuDungDat;
	}
	public String getVaoSoCapGiayCNQuyenSuDungDatSo() {
		return vaoSoCapGiayCNQuyenSuDungDatSo;
	}
	public void setVaoSoCapGiayCNQuyenSuDungDatSo(
			String vaoSoCapGiayCNQuyenSuDungDatSo) {
		this.vaoSoCapGiayCNQuyenSuDungDatSo = vaoSoCapGiayCNQuyenSuDungDatSo;
	}
	public String getHanCheQuyenSuDungDat() {
		return hanCheQuyenSuDungDat;
	}
	public void setHanCheQuyenSuDungDat(String hanCheQuyenSuDungDat) {
		this.hanCheQuyenSuDungDat = hanCheQuyenSuDungDat;
	}
	public int getBenSoHuuTaiSan() {
		return benSoHuuTaiSan;
	}
	public void setBenSoHuuTaiSan(int benSoHuuTaiSan) {
		this.benSoHuuTaiSan = benSoHuuTaiSan;
	}
	
}
