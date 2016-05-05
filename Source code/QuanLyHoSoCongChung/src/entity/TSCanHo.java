package entity;

import java.io.Serializable;
import java.util.Date;

public class TSCanHo implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static final String TS_TENKHOATAISAN = "#TENKHOATAISAN";
	public static final String TS_TENPHIEUTAISAN = "#TENPHIEUTAISAN";
	public static final String TS_DIACHITAISAN = "#DIACHITAISAN";
	public static final String TS_THUADATSO = "#THUADATSO";
	public static final String TS_TOBANDOSO = "#TOBANDOSO";
	public static final String TS_MOTA = "#MOTA";
	public static final String TS_DIENTICH = "#DIENTICH";
	public static final String TS_HINHTHUCSUDUNGCHUNG = "#HINHTHUCSUDUNGCHUNG";
	public static final String TS_HINHTHUCSUDUNGRIENG = "#HINHTHUCSUDUNGRIENG";
	public static final String TS_MUCDICHSUDUNG = "#MUCDICHSUDUNG";
	public static final String TS_THOIHANSUDUNG = "#THOIHANSUDUNG";
	public static final String TS_NGUONGOCSUDUNG = "#NGUONGOCSUDUNG";
	public static final String TS_TONGDIENTICHSUDUNG = "#TONGDIENTICHSUDUNG";
	public static final String TS_DIENTICHXAYDUNG = "#DIENTICHXAYDUNG";
	public static final String TS_KETCAU = "#KETCAU";
	public static final String TS_NGAYCAPGIAYCNQUYENSUDUNG = "#NGAYCAPGIAYCNQUYENSUDUNG";
	public static final String TS_NOICAPGIAYCNQUYENSUDUNG = "#NOICAPGIAYCNQUYENSUDUNG";
	public static final String TS_VAOSOCAPGIAYCNQUYENSUDUNGSO = "#VAOSOCAPGIAYCNQUYENSUDUNGSO";
	public static final String TS_CANHOSO = "#CANHOSO";
	public static final String TS_CANHOTHUOCTANG = "#CANHOTHUOCTANG";
	public static final String TS_SOTANGNHACHUNGCU = "#SOTANGNHACHUNGCU";
	public static final String TS_GIAYCNQUYENSOHUUTAISANSO = "#GIAYCNQUYENSOHUUTAISANSO";
	public static final String TS_NGAYCAPGIAYCNQUYENSOHUUTAISAN = "#NGAYCAPGIAYCNQUYENSOHUUTAISAN";
	public static final String TS_NOICAPGIAYCNQUYENSOHUUTAISAN = "#NOICAPGIAYCNQUYENSOHUUTAISAN";
	public static final String TS_NHUNGHANCHEVEQUYENSUDUNGDAT = "#NHUNGHANCHEVEQUYENSUDUNGDAT";
	public static final String TS_DIENTICHGIAODICHMOTPHAN = "#DIENTICHGIAODICHMOTPHAN";

	private Integer taiSanCanHoID;
	private String diaChiTaiSan;
	private String thuaDatSo;
	private String toBanDoSo;
	private String moTa;
	private Double dienTich;
	private Double hinhThucSuDungChung;
	private Double hinhThucSuDungRieng;
	private String mucDichSuDung;
	private String thoiHanSuDung;
	private String nguonGocSuDung;
	private Double tongDienTichSuDung;
	private Double dienTichXayDung;
	private String ketCau;
	private Date ngayCapGiayCNQuyenSuDung;
	private String noiCapGiayCNQuyenSuDung;
	private String vaoSoCapGiayCNQuyenSuDungSo;
	private Integer canHoSo;
	private Integer canHoThuocTang;
	private Integer soTangNhaChungCu;
	private String giayCNQuyenSoHuuTaiSanSo;
	private Date ngayCapGiayCNQuyenSoHuuTaiSan;
	private String noiCapGiayCNQuyenSoHuuTaiSan;
	private String nhungHanCheVeQuyenSuDungDat;
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

	public Integer getTaiSanCanHoID() {
		return taiSanCanHoID;
	}

	public void setTaiSanCanHoID(Integer taiSanCanHoID) {
		this.taiSanCanHoID = taiSanCanHoID;
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

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
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

	public Double getTongDienTichSuDung() {
		return tongDienTichSuDung;
	}

	public void setTongDienTichSuDung(Double tongDienTichSuDung) {
		this.tongDienTichSuDung = tongDienTichSuDung;
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

	public Date getNgayCapGiayCNQuyenSuDung() {
		return ngayCapGiayCNQuyenSuDung;
	}

	public void setNgayCapGiayCNQuyenSuDung(Date ngayCapGiayCNQuyenSuDung) {
		this.ngayCapGiayCNQuyenSuDung = ngayCapGiayCNQuyenSuDung;
	}

	public String getNoiCapGiayCNQuyenSuDung() {
		return noiCapGiayCNQuyenSuDung;
	}

	public void setNoiCapGiayCNQuyenSuDung(String noiCapGiayCNQuyenSuDung) {
		this.noiCapGiayCNQuyenSuDung = noiCapGiayCNQuyenSuDung;
	}

	public String getVaoSoCapGiayCNQuyenSuDungSo() {
		return vaoSoCapGiayCNQuyenSuDungSo;
	}

	public void setVaoSoCapGiayCNQuyenSuDungSo(
			String vaoSoCapGiayCNQuyenSuDungSo) {
		this.vaoSoCapGiayCNQuyenSuDungSo = vaoSoCapGiayCNQuyenSuDungSo;
	}

	public Integer getCanHoSo() {
		return canHoSo;
	}

	public void setCanHoSo(Integer canHoSo) {
		this.canHoSo = canHoSo;
	}

	public Integer getCanHoThuocTang() {
		return canHoThuocTang;
	}

	public void setCanHoThuocTang(Integer canHoThuocTang) {
		this.canHoThuocTang = canHoThuocTang;
	}

	public Integer getSoTangNhaChungCu() {
		return soTangNhaChungCu;
	}

	public void setSoTangNhaChungCu(Integer soTangNhaChungCu) {
		this.soTangNhaChungCu = soTangNhaChungCu;
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

	public String getNhungHanCheVeQuyenSuDungDat() {
		return nhungHanCheVeQuyenSuDungDat;
	}

	public void setNhungHanCheVeQuyenSuDungDat(
			String nhungHanCheVeQuyenSuDungDat) {
		this.nhungHanCheVeQuyenSuDungDat = nhungHanCheVeQuyenSuDungDat;
	}
}
