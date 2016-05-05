package entity;

import java.io.Serializable;

public class TSTaiSan implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer taiSanID;
	private Integer loaiTaiSanID;
	private String tenPhieuTaiSan;
	private String tenKhoaTaiSan;
	private String ghiChu;
	private int coTaiSanHinhThanhTrongTuongLai;
	
	private DMLoaiTaiSan loaiTaiSan;
	private TSBatDongSanKhongCoTaiSanGanLienVoiDat taiSanBatDongSanKhongCoTaiSanGanLienVoiDat;
	private TSBeCa taiSanBeCa;
	private TSCanHo taiSanCanHo;
	private TSCongTrinhKienTruc taiSanCongTrinhKienTruc;
	private TSCoPhieu taiSanCoPhieu;
	private TSMayBay taiSanMayBay;
	private TSMayMoc taiSanMayMoc;
	private TSMoToXeMay taiSanMoToXeMay;
	private TSNha taiSanNha;
	private TSOTo taiSanOTo;
	private TSSoTietKiem taiSanSoTietKiem;
	private TSTaiSanLaDongSanKhac taiSanLaDongSanKhac;
	private TSTauBien taiSanTauBien;
	private TSTauCa taiSanTauCa;
	private TSTauKeoGheThuyen taiSanTauKeoGheThuyen;
	private TSTraiPhieu taiSanTraiPhieu;
	
	
	public String getTenKhoaTaiSan() {
		return tenKhoaTaiSan;
	}
	public void setTenKhoaTaiSan(String tenKhoaTaiSan) {
		this.tenKhoaTaiSan = tenKhoaTaiSan;
	}
	public DMLoaiTaiSan getLoaiTaiSan() {
		return loaiTaiSan;
	}
	public void setLoaiTaiSan(DMLoaiTaiSan loaiTaiSan) {
		this.loaiTaiSan = loaiTaiSan;
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
	public String getGhiChu() {
		return ghiChu;
	}
	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}
	public int getCoTaiSanHinhThanhTrongTuongLai() {
		return coTaiSanHinhThanhTrongTuongLai;
	}
	public void setCoTaiSanHinhThanhTrongTuongLai(int coTaiSanHinhThanhTrongTuongLai) {
		this.coTaiSanHinhThanhTrongTuongLai = coTaiSanHinhThanhTrongTuongLai;
	}
	public TSBatDongSanKhongCoTaiSanGanLienVoiDat getTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat() {
		return taiSanBatDongSanKhongCoTaiSanGanLienVoiDat;
	}
	public void setTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat(
			TSBatDongSanKhongCoTaiSanGanLienVoiDat taiSanBatDongSanKhongCoTaiSanGanLienVoiDat) {
		this.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat = taiSanBatDongSanKhongCoTaiSanGanLienVoiDat;
	}
	public TSBeCa getTaiSanBeCa() {
		return taiSanBeCa;
	}
	public void setTaiSanBeCa(TSBeCa taiSanBeCa) {
		this.taiSanBeCa = taiSanBeCa;
	}
	public TSCanHo getTaiSanCanHo() {
		return taiSanCanHo;
	}
	public void setTaiSanCanHo(TSCanHo taiSanCanHo) {
		this.taiSanCanHo = taiSanCanHo;
	}
	public TSCongTrinhKienTruc getTaiSanCongTrinhKienTruc() {
		return taiSanCongTrinhKienTruc;
	}
	public void setTaiSanCongTrinhKienTruc(
			TSCongTrinhKienTruc taiSanCongTrinhKienTruc) {
		this.taiSanCongTrinhKienTruc = taiSanCongTrinhKienTruc;
	}
	public TSCoPhieu getTaiSanCoPhieu() {
		return taiSanCoPhieu;
	}
	public void setTaiSanCoPhieu(TSCoPhieu taiSanCoPhieu) {
		this.taiSanCoPhieu = taiSanCoPhieu;
	}
	public TSMayBay getTaiSanMayBay() {
		return taiSanMayBay;
	}
	public void setTaiSanMayBay(TSMayBay taiSanMayBay) {
		this.taiSanMayBay = taiSanMayBay;
	}
	public TSMayMoc getTaiSanMayMoc() {
		return taiSanMayMoc;
	}
	public void setTaiSanMayMoc(TSMayMoc taiSanMayMoc) {
		this.taiSanMayMoc = taiSanMayMoc;
	}
	public TSMoToXeMay getTaiSanMoToXeMay() {
		return taiSanMoToXeMay;
	}
	public void setTaiSanMoToXeMay(TSMoToXeMay taiSanMoToXeMay) {
		this.taiSanMoToXeMay = taiSanMoToXeMay;
	}
	public TSNha getTaiSanNha() {
		return taiSanNha;
	}
	public void setTaiSanNha(TSNha taiSanNha) {
		this.taiSanNha = taiSanNha;
	}
	public TSOTo getTaiSanOTo() {
		return taiSanOTo;
	}
	public void setTaiSanOTo(TSOTo taiSanOTo) {
		this.taiSanOTo = taiSanOTo;
	}
	
	public TSSoTietKiem getTaiSanSoTietKiem() {
		return taiSanSoTietKiem;
	}
	public void setTaiSanSoTietKiem(TSSoTietKiem taiSanSoTietKiem) {
		this.taiSanSoTietKiem = taiSanSoTietKiem;
	}
	
	public TSTaiSanLaDongSanKhac getTaiSanLaDongSanKhac() {
		return taiSanLaDongSanKhac;
	}
	public void setTaiSanLaDongSanKhac(TSTaiSanLaDongSanKhac taiSanLaDongSanKhac) {
		this.taiSanLaDongSanKhac = taiSanLaDongSanKhac;
	}
	public TSTauBien getTaiSanTauBien() {
		return taiSanTauBien;
	}
	public void setTaiSanTauBien(TSTauBien taiSanTauBien) {
		this.taiSanTauBien = taiSanTauBien;
	}
	public TSTauCa getTaiSanTauCa() {
		return taiSanTauCa;
	}
	public void setTaiSanTauCa(TSTauCa taiSanTauCa) {
		this.taiSanTauCa = taiSanTauCa;
	}
	public TSTauKeoGheThuyen getTaiSanTauKeoGheThuyen() {
		return taiSanTauKeoGheThuyen;
	}
	public void setTaiSanTauKeoGheThuyen(TSTauKeoGheThuyen taiSanTauKeoGheThuyen) {
		this.taiSanTauKeoGheThuyen = taiSanTauKeoGheThuyen;
	}
	public TSTraiPhieu getTaiSanTraiPhieu() {
		return taiSanTraiPhieu;
	}
	public void setTaiSanTraiPhieu(TSTraiPhieu taiSanTraiPhieu) {
		this.taiSanTraiPhieu = taiSanTraiPhieu;
	}
	
}
