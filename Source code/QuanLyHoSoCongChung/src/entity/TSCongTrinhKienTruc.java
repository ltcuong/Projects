package entity;

import java.io.Serializable;
import java.util.Date;

public class TSCongTrinhKienTruc implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static final String TS_TENPHIEUTAISAN = "#TENPHIEUTAISAN";
	public static final String TS_TENKHOATAISAN = "#TENKHOATAISAN";
	public static final String TS_DIACHITAISAN = "#DIACHITAISAN";
	public static final String TS_THUADATSO = "#THUADATSO";
	public static final String TS_TOBANDOSO = "#TOBANDOSO";
	public static final String TS_DIENTICH = "#DIENTICH";
	public static final String TS_HINHTHUCSUDUNGRIENG = "#HINHTHUCSUDUNGRIENG";
	public static final String TS_HINHTHUCSUDUNGCHUNG = "#HINHTHUCSUDUNGCHUNG";
	public static final String TS_MUCDICHSUDUNG = "#MUCDICHSUDUNG";
	public static final String TS_THOIHANSUDUNG = "#THOIHANSUDUNG";
	public static final String TS_NGUONGOC = "#NGUONGOC";
	public static final String TS_TONGDIENTICH = "#TONGDIENTICH";
	public static final String TS_DIENTICHXAYDUNG = "#DIENTICHXAYDUNG";
	public static final String TS_KETCAU = "#KETCAU";
	public static final String TS_NGAYCAPGIAYCNQUYENSUDUNGDAT = "#NGAYCAPGIAYCNQUYENSUDUNGDAT";
	public static final String TS_NOICAPGIAYCNQUYENSUDUNGDAT = "#NOICAPGIAYCNQUYENSUDUNGDAT";
	public static final String TS_VAOSOCNQUYENSUDUNGDATSO = "#VAOSOCNQUYENSUDUNGDATSO";
	public static final String TS_SOTANG = "#SOTANG";
	public static final String TS_LOAICONGTRINH = "#LOAICONGTRINH";
	public static final String TS_GIAYCNQUYENSOHUUTAISANSO = "#GIAYCNQUYENSOHUUTAISANSO";
	public static final String TS_NGAYCAPGIAYCNQUYENSOHUUTAISAN = "#NGAYCAPGIAYCNQUYENSOHUUTAISAN";
	public static final String TS_NOICAPGIAYCNQUYENSOHUUTAISAN = "#NOICAPGIAYCNQUYENSOHUUTAISAN";
	public static final String TS_HANCHEQUYENSUDUNGDAT = "#HANCHEQUYENSUDUNGDAT";
	public static final String TS_DIENTICHGIAODICHMOTPHAN = "#DIENTICHGIAODICHMOTPHAN";

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
	private Date ngayCapGiayCNQuyenSuDungDat;
	private String noiCapGiayCNQuyenSuDungDat;
	private String vaoSoCNQuyenSuDungDatSo;
	private Integer soTang;
	private String loaiCongTrinh;
	private String giayCNQuyenSoHuuTaiSanSo;
	private Date ngayCapGiayCNQuyenSoHuuTaiSan;
	private String noiCapGiayCNQuyenSoHuuTaiSan;
	private String hanCheQuyenSuDungDat;
	private Double dienTichGiaoDichMotPhan;
	private int coGiaoDichMotPhan;

	private TSTaiSan taiSan;

	public TSTaiSan getTaiSan() {
		return taiSan;
	}

	public void setTaiSan(TSTaiSan taiSan) {
		this.taiSan = taiSan;
	}

	public int getCoGiaoDichMotPhan() {
		return coGiaoDichMotPhan;
	}

	public void setCoGiaoDichMotPhan(int coGiaoDichMotPhan) {
		this.coGiaoDichMotPhan = coGiaoDichMotPhan;
	}

	public Double getDienTichGiaoDichMotPhan() {
		return dienTichGiaoDichMotPhan;
	}

	public void setDienTichGiaoDichMotPhan(Double dienTichGiaoDichMotPhan) {
		this.dienTichGiaoDichMotPhan = dienTichGiaoDichMotPhan;
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

	public Date getNgayCapGiayCNQuyenSuDungDat() {
		return ngayCapGiayCNQuyenSuDungDat;
	}

	public void setNgayCapGiayCNQuyenSuDungDat(Date ngayCapGiayCNQuyenSuDungDat) {
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

	public Date getNgayCapGiayCNQuyenSoHuuTaiSan() {
		return ngayCapGiayCNQuyenSoHuuTaiSan;
	}

	public void setNgayCapGiayCNQuyenSoHuuTaiSan(
			Date ngayCapGiayCNQuyenSoHuuTaiSan) {
		this.ngayCapGiayCNQuyenSoHuuTaiSan = ngayCapGiayCNQuyenSoHuuTaiSan;
	}

	public String getNoiCapGiayCNQuyenSoHuuTaiSan() {
		return noiCapGiayCNQuyenSoHuuTaiSan;
	}

	public void setNoiCapGiayCNQuyenSoHuuTaiSan(
			String noiCapGiayCNQuyenSoHuuTaiSan) {
		this.noiCapGiayCNQuyenSoHuuTaiSan = noiCapGiayCNQuyenSoHuuTaiSan;
	}

	public String getHanCheQuyenSuDungDat() {
		return hanCheQuyenSuDungDat;
	}

	public void setHanCheQuyenSuDungDat(String hanCheQuyenSuDungDat) {
		this.hanCheQuyenSuDungDat = hanCheQuyenSuDungDat;
	}
}
