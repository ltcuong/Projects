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
import entity.TSCongTrinhKienTruc;
import entity.TSTaiSan;

public class GetFormCapNhatTaiSanCongTrinhKienTruc extends BaseAction {

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
	private Integer taiSanCongTrinhKienTrucID;
	private String diaChiTaiSan;
	private String thuaDatSo;
	private String toBanDoSo;
	private Double dienTich;
	private Double hinhThucSuDungRieng;
	private Double hinhThucSuDungChung;
	private String mucDichSuDung;
	private String thoiHanSuDung;
	private String nguonGoc;
	private Double tongDienTich;
	private Double dienTichXayDung;
	private String ketCau;
	private String ngayCapGiayCNQuyenSuDungDat;
	private String noiCapGiayCNQuyenSuDungDat;
	private String vaoSoCNQuyenSuDungDatSo;
	private Integer soTang;
	private String loaiCongTrinh;
	private String giayCNQuyenSoHuuTaiSanSo;
	private String ngayCapGiayCNQuyenSoHuuTaiSan;
	private String noiCapGiayCNQuyenSoHuuTaiSan;
	private String hanCheQuyenSuDungDat;
	private Double dienTichGiaoDichMotPhan;
	
	public String execute() {
		
		return SUCCESS;
	}
	
	public String executeCapNhatThongTinTaiSanCongTrinhKienTruc() {
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
			TSCongTrinhKienTruc congTrinhKienTruc = new TSCongTrinhKienTruc();
			congTrinhKienTruc.setDiaChiTaiSan(diaChiTaiSan);
			congTrinhKienTruc.setThuaDatSo(thuaDatSo);
			congTrinhKienTruc.setToBanDoSo(toBanDoSo);
			congTrinhKienTruc.setDienTich(dienTich);
			congTrinhKienTruc.setHinhThucSuDungRieng(hinhThucSuDungRieng);
			congTrinhKienTruc.setHinhThucSuDungChung(hinhThucSuDungChung);
			congTrinhKienTruc.setMucDichSuDung(mucDichSuDung);
			congTrinhKienTruc.setThoiHanSuDung(thoiHanSuDung);
			congTrinhKienTruc.setNguonGoc(nguonGoc);
			congTrinhKienTruc.setTongDienTich(tongDienTich);
			congTrinhKienTruc.setDienTichXayDung(dienTichXayDung);
			congTrinhKienTruc.setKetCau(ketCau);
			Date d1 = null;
			if (ngayCapGiayCNQuyenSuDungDat != null && !ngayCapGiayCNQuyenSuDungDat.isEmpty()) {
				try {
					d1 = df.parse(ngayCapGiayCNQuyenSuDungDat);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			congTrinhKienTruc.setNgayCapGiayCNQuyenSuDungDat(d1);
			congTrinhKienTruc.setNoiCapGiayCNQuyenSuDungDat(noiCapGiayCNQuyenSuDungDat);
			congTrinhKienTruc.setVaoSoCNQuyenSuDungDatSo(vaoSoCNQuyenSuDungDatSo);
			congTrinhKienTruc.setSoTang(soTang);
			congTrinhKienTruc.setLoaiCongTrinh(loaiCongTrinh);
			congTrinhKienTruc.setGiayCNQuyenSoHuuTaiSanSo(giayCNQuyenSoHuuTaiSanSo);
			Date d2 = null;
			if (ngayCapGiayCNQuyenSoHuuTaiSan != null && !ngayCapGiayCNQuyenSoHuuTaiSan.isEmpty()) {
				try {
					d2 = df.parse(ngayCapGiayCNQuyenSoHuuTaiSan);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			congTrinhKienTruc.setNgayCapGiayCNQuyenSoHuuTaiSan(d2);
			congTrinhKienTruc.setNoiCapGiayCNQuyenSoHuuTaiSan(noiCapGiayCNQuyenSoHuuTaiSan);
			congTrinhKienTruc.setHanCheQuyenSuDungDat(hanCheQuyenSuDungDat);
			congTrinhKienTruc.setCoGiaoDichMotPhan(coGiaoDichMotPhan);
			congTrinhKienTruc.setDienTichGiaoDichMotPhan(dienTichGiaoDichMotPhan);
			
			taiSan.setTaiSanCongTrinhKienTruc(congTrinhKienTruc);
			congTrinhKienTruc.setTaiSan(taiSan);
			
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

	public Integer getTaiSanCongTrinhKienTrucID() {
		return taiSanCongTrinhKienTrucID;
	}

	public void setTaiSanCongTrinhKienTrucID(Integer taiSanCongTrinhKienTrucID) {
		this.taiSanCongTrinhKienTrucID = taiSanCongTrinhKienTrucID;
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

	public Double getHinhThucSuDungRieng() {
		return hinhThucSuDungRieng;
	}

	public void setHinhThucSuDungRieng(Double hinhThucSuDungRieng) {
		this.hinhThucSuDungRieng = hinhThucSuDungRieng;
	}

	public Double getHinhThucSuDungChung() {
		return hinhThucSuDungChung;
	}

	public void setHinhThucSuDungChung(Double hinhThucSuDungChung) {
		this.hinhThucSuDungChung = hinhThucSuDungChung;
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

	public String getNguonGoc() {
		return nguonGoc;
	}

	public void setNguonGoc(String nguonGoc) {
		this.nguonGoc = nguonGoc;
	}

	public Double getTongDienTich() {
		return tongDienTich;
	}

	public void setTongDienTich(Double tongDienTich) {
		this.tongDienTich = tongDienTich;
	}

	public Double getDienTichXayDung() {
		return dienTichXayDung;
	}

	public void setDienTichXayDung(Double dienTichXayDung) {
		this.dienTichXayDung = dienTichXayDung;
	}

	public String getKetCau() {
		return ketCau;
	}

	public void setKetCau(String ketCau) {
		this.ketCau = ketCau;
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

	public String getVaoSoCNQuyenSuDungDatSo() {
		return vaoSoCNQuyenSuDungDatSo;
	}

	public void setVaoSoCNQuyenSuDungDatSo(String vaoSoCNQuyenSuDungDatSo) {
		this.vaoSoCNQuyenSuDungDatSo = vaoSoCNQuyenSuDungDatSo;
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

	public String getHanCheQuyenSuDungDat() {
		return hanCheQuyenSuDungDat;
	}

	public void setHanCheQuyenSuDungDat(String hanCheQuyenSuDungDat) {
		this.hanCheQuyenSuDungDat = hanCheQuyenSuDungDat;
	}

}
