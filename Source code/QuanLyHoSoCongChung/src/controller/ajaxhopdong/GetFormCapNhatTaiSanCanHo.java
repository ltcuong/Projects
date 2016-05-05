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
import entity.TSCanHo;
import entity.TSTaiSan;

public class GetFormCapNhatTaiSanCanHo extends BaseAction {

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
	private String ngayCapGiayCNQuyenSuDung;
	private String noiCapGiayCNQuyenSuDung;
	private String vaoSoCapGiayCNQuyenSuDungSo;
	private Integer canHoSo;
	private Integer canHoThuocTang;
	private Integer soTangNhaChungCu;
	private String giayCNQuyenSoHuuTaiSanSo;
	private String ngayCapGiayCNQuyenSoHuuTaiSan;
	private String noiCapGiayCNQuyenSoHuuTaiSan;
	private String nhungHanCheVeQuyenSuDungDat;
	private Double dienTichGiaoDichMotPhan;
	
	
	public String execute() {
		
		return SUCCESS;
	}
	
	public String executeCapNhatThongTinTaiSanCanHo() {
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
			TSCanHo canHo = new TSCanHo();
			canHo.setDiaChiTaiSan(diaChiTaiSan);
			canHo.setThuaDatSo(thuaDatSo);
			canHo.setToBanDoSo(toBanDoSo);
			canHo.setMoTa(moTa);
			canHo.setDienTich(dienTich);
			canHo.setHinhThucSuDungChung(hinhThucSuDungChung);
			canHo.setHinhThucSuDungRieng(hinhThucSuDungRieng);
			canHo.setMucDichSuDung(mucDichSuDung);
			canHo.setThoiHanSuDung(thoiHanSuDung);
			canHo.setNguonGocSuDung(nguonGocSuDung);
			canHo.setTongDienTichSuDung(tongDienTichSuDung);
			canHo.setDienTichXayDung(dienTichXayDung);
			canHo.setKetCau(ketCau);
			
			Date d1 = null;
			if (ngayCapGiayCNQuyenSuDung != null && !ngayCapGiayCNQuyenSuDung.isEmpty()) {
				try {
					d1 = df.parse(ngayCapGiayCNQuyenSuDung);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			canHo.setNgayCapGiayCNQuyenSuDung(d1);
			canHo.setNoiCapGiayCNQuyenSuDung(noiCapGiayCNQuyenSuDung);
			canHo.setVaoSoCapGiayCNQuyenSuDungSo(vaoSoCapGiayCNQuyenSuDungSo);
			canHo.setCanHoSo(canHoSo);
			canHo.setCanHoThuocTang(canHoThuocTang);
			canHo.setSoTangNhaChungCu(soTangNhaChungCu);
			canHo.setGiayCNQuyenSoHuuTaiSanSo(giayCNQuyenSoHuuTaiSanSo);
			Date d2 = null;
			if (ngayCapGiayCNQuyenSoHuuTaiSan != null && !ngayCapGiayCNQuyenSoHuuTaiSan.isEmpty()) {
				try {
					d2 = df.parse(ngayCapGiayCNQuyenSoHuuTaiSan);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			canHo.setNgayCapGiayCNQuyenSoHuuTaiSan(d2);
			canHo.setNoiCapGiayCNQuyenSoHuuTaiSan(noiCapGiayCNQuyenSoHuuTaiSan);
			canHo.setNhungHanCheVeQuyenSuDungDat(nhungHanCheVeQuyenSuDungDat);
			canHo.setCoGiaoDichMotPhan(coGiaoDichMotPhan);
			canHo.setDienTichGiaoDichMotPhan(dienTichGiaoDichMotPhan);
			
			taiSan.setTaiSanCanHo(canHo);
			canHo.setTaiSan(taiSan);
			
			
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

	public String getNgayCapGiayCNQuyenSuDung() {
		return ngayCapGiayCNQuyenSuDung;
	}

	public void setNgayCapGiayCNQuyenSuDung(String ngayCapGiayCNQuyenSuDung) {
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

	public void setVaoSoCapGiayCNQuyenSuDungSo(String vaoSoCapGiayCNQuyenSuDungSo) {
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

	public String getNhungHanCheVeQuyenSuDungDat() {
		return nhungHanCheVeQuyenSuDungDat;
	}

	public void setNhungHanCheVeQuyenSuDungDat(String nhungHanCheVeQuyenSuDungDat) {
		this.nhungHanCheVeQuyenSuDungDat = nhungHanCheVeQuyenSuDungDat;
	}

}
