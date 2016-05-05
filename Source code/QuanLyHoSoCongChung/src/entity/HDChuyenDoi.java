package entity;

import java.io.Serializable;
import java.util.Date;

public class HDChuyenDoi implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static final String HD_SOTIENCHENHLECH = "#SOTIENCHENHLECH";
	public static final String HD_SOTIENCHENHLECHBANGCHU = "#SOTIENCHENHLECHBANGCHU";
	public static final String HD_BENTHANHTOAN = "#BENTHANHTOAN";
	public static final String HD_BENDUOCTHANHTOAN = "#BENDUOCTHANHTOAN";
	public static final String HD_CACCAMKETKHAC = "#CACCAMKETKHAC";
	public static final String HD_NGAYGIAOTAISAN = "#NGAYGIAOTAISAN";
	public static final String HD_BENTRACHENHLECH = "#BENTRACHENHLECH";
	public static final String HD_PHUONGTHUCTHANHTOAN = "#PHUONGTHUCTHANHTOAN";
	public static final String HD_PHIBENAPHAITRA = "#PHIBENAPHAITRA";
	public static final String HD_PHIBENBPHAITRA = "#PHIBENBPHAITRA";
	public static final String HD_NGAYGIAOTAISANCHOBENA = "#NGAYGIAOTAISANCHOBENA";
	public static final String HD_NGAYGIAOTAISANCHOBENB = "#NGAYGIAOTAISANCHOBENB";
	public static final String HD_THOIHANTHANHTOAN = "#THOIHANTHANHTOAN";

	private Integer hopDongChuyenDoiID;
	private Date ngayGiaoTaiSanChoBenA;
	private Date ngayGiaoTaiSanChoBenB;
	private Double soTienChenhLech;
	private Integer benTraChenhLech;
	private String phuongThucThanhToan;
	private Integer benThanhToan;
	private Date thoiHanThanhToan;
	private String cacCamKetKhac;
	private Double phiBenAPhaiTra;
	private Double phiBenBPhaiTra;
	private Date ngayGiaoTaiSan;
	private Date ngayCoHieuLuc;
	private String cacThoaThuanKhac;

	private HDHopDong hopDong;

	public Integer getHopDongChuyenDoiID() {
		return hopDongChuyenDoiID;
	}

	public void setHopDongChuyenDoiID(Integer hopDongChuyenDoiID) {
		this.hopDongChuyenDoiID = hopDongChuyenDoiID;
	}

	public Date getNgayGiaoTaiSanChoBenA() {
		return ngayGiaoTaiSanChoBenA;
	}

	public void setNgayGiaoTaiSanChoBenA(Date ngayGiaoTaiSanChoBenA) {
		this.ngayGiaoTaiSanChoBenA = ngayGiaoTaiSanChoBenA;
	}

	public Date getNgayGiaoTaiSanChoBenB() {
		return ngayGiaoTaiSanChoBenB;
	}

	public void setNgayGiaoTaiSanChoBenB(Date ngayGiaoTaiSanChoBenB) {
		this.ngayGiaoTaiSanChoBenB = ngayGiaoTaiSanChoBenB;
	}

	public Double getSoTienChenhLech() {
		return soTienChenhLech;
	}

	public void setSoTienChenhLech(Double soTienChenhLech) {
		this.soTienChenhLech = soTienChenhLech;
	}

	public Integer getBenTraChenhLech() {
		return benTraChenhLech;
	}

	public void setBenTraChenhLech(Integer benTraChenhLech) {
		this.benTraChenhLech = benTraChenhLech;
	}

	public String getPhuongThucThanhToan() {
		return phuongThucThanhToan;
	}

	public void setPhuongThucThanhToan(String phuongThucThanhToan) {
		this.phuongThucThanhToan = phuongThucThanhToan;
	}

	public Integer getBenThanhToan() {
		return benThanhToan;
	}

	public void setBenThanhToan(Integer benThanhToan) {
		this.benThanhToan = benThanhToan;
	}

	public Date getThoiHanThanhToan() {
		return thoiHanThanhToan;
	}

	public void setThoiHanThanhToan(Date thoiHanThanhToan) {
		this.thoiHanThanhToan = thoiHanThanhToan;
	}

	public String getCacCamKetKhac() {
		return cacCamKetKhac;
	}

	public void setCacCamKetKhac(String cacCamKetKhac) {
		this.cacCamKetKhac = cacCamKetKhac;
	}

	public Double getPhiBenAPhaiTra() {
		return phiBenAPhaiTra;
	}

	public void setPhiBenAPhaiTra(Double phiBenAPhaiTra) {
		this.phiBenAPhaiTra = phiBenAPhaiTra;
	}

	public Double getPhiBenBPhaiTra() {
		return phiBenBPhaiTra;
	}

	public void setPhiBenBPhaiTra(Double phiBenBPhaiTra) {
		this.phiBenBPhaiTra = phiBenBPhaiTra;
	}

	public Date getNgayGiaoTaiSan() {
		return ngayGiaoTaiSan;
	}

	public void setNgayGiaoTaiSan(Date ngayGiaoTaiSan) {
		this.ngayGiaoTaiSan = ngayGiaoTaiSan;
	}

	public Date getNgayCoHieuLuc() {
		return ngayCoHieuLuc;
	}

	public void setNgayCoHieuLuc(Date ngayCoHieuLuc) {
		this.ngayCoHieuLuc = ngayCoHieuLuc;
	}

	public String getCacThoaThuanKhac() {
		return cacThoaThuanKhac;
	}

	public void setCacThoaThuanKhac(String cacThoaThuanKhac) {
		this.cacThoaThuanKhac = cacThoaThuanKhac;
	}

	public HDHopDong getHopDong() {
		return hopDong;
	}

	public void setHopDong(HDHopDong hopDong) {
		this.hopDong = hopDong;
	}
}
