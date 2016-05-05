package service;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;

import util.Const;
import util.HibernateUtil;
import util.WebUtil;
import entity.DMLoaiDuongSu;
import entity.DMLoaiHopDongChiTiet;
import entity.DSDuongSu;
import entity.HDChuyenDoi;
import entity.HDHopDong;
import entity.HDHopDongTam;
import entity.TEMTemplateDuongSu;
import entity.TSBatDongSanKhongCoTaiSanGanLienVoiDat;
import entity.TSBeCa;
import entity.TSCanHo;
import entity.TSCoPhieu;
import entity.TSCongTrinhKienTruc;
import entity.TSMayBay;
import entity.TSMayMoc;
import entity.TSMoToXeMay;
import entity.TSNha;
import entity.TSOTo;
import entity.TSSoTietKiem;
import entity.TSTaiSan;
import entity.TSTaiSanLaDongSanKhac;
import entity.TSTauBien;
import entity.TSTauCa;
import entity.TSTauKeoGheThuyen;
import entity.TSTraiPhieu;

public class HopDongService {

	public static List<String> unsecureFunctions;

	public static void setUnsecureFunctions(List<String> unsecureFunctions) {
		HopDongService.unsecureFunctions = unsecureFunctions;
	}
	
	
	private String getTemplateDuongSu(DSDuongSu duongSu, String noiDungTemplate) {
		SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
		DanhMucService danhMucSV = new DanhMucService();
		if (noiDungTemplate != null) {
			Map<String, String> inputs = new HashMap<String, String>();
			inputs.put(DSDuongSu.DSHOTEN, duongSu.getHoTen());
			String ngaySinh = "";
			if (duongSu.getNgaySinh() != null) {
				ngaySinh = df.format(duongSu.getNgaySinh());
			} else if (duongSu.getNamSinh() != null) {
				ngaySinh = String.valueOf(duongSu.getNamSinh());
			}
			inputs.put(DSDuongSu.DSNGAYSINH, ngaySinh);
			inputs.put(DSDuongSu.DSLOAIGIAYTO, danhMucSV.getNameLoaiGiayToByID(duongSu.getLoaiGiayToID()));
			inputs.put(DSDuongSu.DSSOGIAYTO, duongSu.getSoGiayTo());
			inputs.put(DSDuongSu.DSNGAYCAPGIAYTO, df.format(duongSu.getNgayCapGiayTo()));
			inputs.put(DSDuongSu.DSNOICAPGIAYTO, duongSu.getNoiCapGiayTo());
			String quocTich = "";
			if (duongSu.getQuocTichID() != null) {
				quocTich = danhMucSV.getNameQuocTichByID(duongSu.getQuocTichID());
			}
			inputs.put(DSDuongSu.DSQUOCTICH, quocTich);
			String diaChiThuongTru = "";
			if (duongSu.getSoNhaThuongTru() != null && !duongSu.getSoNhaThuongTru().isEmpty()) {
				diaChiThuongTru += duongSu.getSoNhaThuongTru() + ", ";
			}
			if (duongSu.getXaThuongTruID() != null) {
				diaChiThuongTru += danhMucSV.getNameXaByID(duongSu.getXaThuongTruID()) + ", ";
			}
			if (duongSu.getHuyenThuongTruID() != null) {
				diaChiThuongTru += danhMucSV.getNameHuyenByID(duongSu.getHuyenThuongTruID()) + ", ";
			}
			if (duongSu.getTinhThuongTruID() != null) {
				diaChiThuongTru += danhMucSV.getNameTinhByID(duongSu.getTinhThuongTruID());
			}
			
			inputs.put(DSDuongSu.DSDIACHITHUONGTRU, diaChiThuongTru);
			inputs.put(DSDuongSu.DSDIACHILIENHE, duongSu.getDiaChiLienHe());
			inputs.put(DSDuongSu.DSTENTOCHUC, duongSu.getTenToChuc());
			inputs.put(DSDuongSu.DSGIAYDANGKYKINHDOANHSO, duongSu.getGiayDangKyKinhDoanhSo());
			String ngayCapGiayDangKyKinhDoanh = "";
			if (duongSu.getNgayCapGiayDangKyKinhDoanh() != null) {
				ngayCapGiayDangKyKinhDoanh = df.format(duongSu.getNgayCapGiayDangKyKinhDoanh());
			}
			inputs.put(DSDuongSu.DSNGAYCAPGIAYDANGKYKINHDOANH, ngayCapGiayDangKyKinhDoanh);
			inputs.put(DSDuongSu.DSNOICAPGIAYDANGKYKINHDOANH, duongSu.getNoiCapGiayDangKyKinhDoanh());
			inputs.put(DSDuongSu.DSSODIENTHOAI, duongSu.getSoDienThoai());
			inputs.put(DSDuongSu.DSCHUCVUNGUOIDAIDIEN, duongSu.getChucVuNguoiDaiDien());
			inputs.put(DSDuongSu.DSGIAYUYQUYENSO, duongSu.getGiayUyQuyenSo());
			String ngayCapGiayUyQuyen = "";
			if (duongSu.getNgayCapGiayUyQuyen() != null) {
				ngayCapGiayUyQuyen = df.format(duongSu.getNgayCapGiayUyQuyen());
			}
			inputs.put(DSDuongSu.DSNGAYCAPGIAYUYQUYEN, ngayCapGiayUyQuyen);
			inputs.put(DSDuongSu.DSEMAIL, duongSu.getEmail());
			inputs.put(DSDuongSu.DSSOFAX, duongSu.getSoFax());
			noiDungTemplate = WebUtil.fillInputs(noiDungTemplate, inputs);
		}
		return noiDungTemplate;
	}
	
	
	//Bat dong san khong co tai san gan lien voi dat
	private Map<String, String> createInputsForTaiSanBatDongSanKhongCoTaiSanGanLien(TSTaiSan taiSan) {
		DecimalFormat def = new DecimalFormat(Const.NUMBER_FORMAT);
		SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
		Map<String, String> inputs = new HashMap<String, String>();
		inputs.put(TSBatDongSanKhongCoTaiSanGanLienVoiDat.TS_TENPHIEUTAISAN, taiSan.getTenPhieuTaiSan());
		inputs.put(TSBatDongSanKhongCoTaiSanGanLienVoiDat.TS_TENKHOATAISAN, taiSan.getTenKhoaTaiSan());
		inputs.put(TSBatDongSanKhongCoTaiSanGanLienVoiDat.TS_DIACHITAISAN, taiSan.getTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat().getDiaChiTaiSan());
		inputs.put(TSBatDongSanKhongCoTaiSanGanLienVoiDat.TS_THUADATSO, taiSan.getTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat().getThuaDatSo());
		inputs.put(TSBatDongSanKhongCoTaiSanGanLienVoiDat.TS_TOBANDOSO, taiSan.getTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat().getToBanDoSo());
		String dienTich = taiSan.getTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat().getDienTich() != null ? def.format(taiSan.getTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat().getDienTich()) : "";
		inputs.put(TSBatDongSanKhongCoTaiSanGanLienVoiDat.TS_DIENTICH, dienTich);
		inputs.put(TSBatDongSanKhongCoTaiSanGanLienVoiDat.TS_DIENTICHBANGCHU, WebUtil.convertNumberToString(taiSan.getTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat().getDienTich()));
		String dienTichSuDungChung = taiSan.getTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat().getHinhThucSuDungChung() != null ?  def.format(taiSan.getTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat().getHinhThucSuDungChung()) : "";
		inputs.put(TSBatDongSanKhongCoTaiSanGanLienVoiDat.TS_HINHTHUCSUDUNGCHUNG, dienTichSuDungChung);
		String dienTichSuDungRieng = taiSan.getTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat().getHinhThucSuDungRieng() != null ?  def.format(taiSan.getTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat().getHinhThucSuDungRieng()) : "";
		inputs.put(TSBatDongSanKhongCoTaiSanGanLienVoiDat.TS_HINHTHUCSUDUNGRIENG, dienTichSuDungRieng);
		inputs.put(TSBatDongSanKhongCoTaiSanGanLienVoiDat.TS_MUCDICHSUDUNG, taiSan.getTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat().getMucDichSuDung());
		inputs.put(TSBatDongSanKhongCoTaiSanGanLienVoiDat.TS_THOIHANSUDUNG, taiSan.getTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat().getThoiHanSuDung());
		inputs.put(TSBatDongSanKhongCoTaiSanGanLienVoiDat.TS_NGUONGOCSUDUNG, taiSan.getTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat().getNguonGocSuDung());
		String ngayCapGiayCNQSDD = taiSan.getTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat().getNgayCapGiayCNQuyenSuDungDat() != null ? df.format(taiSan.getTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat().getNgayCapGiayCNQuyenSuDungDat())  : "";
		inputs.put(TSBatDongSanKhongCoTaiSanGanLienVoiDat.TS_NGAYCAPGIAYCNQUYENSUDUNGDAT, ngayCapGiayCNQSDD);
		inputs.put(TSBatDongSanKhongCoTaiSanGanLienVoiDat.TS_NOICAPGIAYCNQUYENSUDUNGDAT, taiSan.getTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat().getNoiCapGiayCNQuyenSuDungDat());
		inputs.put(TSBatDongSanKhongCoTaiSanGanLienVoiDat.TS_VAOSOCAPGIAYCNQUYENSUDUNGDATSO, taiSan.getTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat().getVaoSoCapGiayCNQuyenSuDungDatSo());
		inputs.put(TSBatDongSanKhongCoTaiSanGanLienVoiDat.TS_HANCHEQUYENSUDUNGDAT, taiSan.getTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat().getHanCheQuyenSuDungDat());
		String dienTichGiaoDichMotPhan = taiSan.getTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat().getDienTichGiaoDichMotPhan() != null ? def.format(taiSan.getTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat().getDienTichGiaoDichMotPhan()) : "";
		inputs.put(TSBatDongSanKhongCoTaiSanGanLienVoiDat.TS_DIENTICHGIAODICHMOTPHAN, dienTichGiaoDichMotPhan);
		inputs.put(TSBatDongSanKhongCoTaiSanGanLienVoiDat.TS_DIENTICHGIAODICHMOTPHANBANGCHU, WebUtil.convertNumberToString(taiSan.getTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat().getDienTichGiaoDichMotPhan()));
		return inputs;
	}
	//Tai san be ca
	private Map<String, String> createInputsForTaiSanBeCa(TSTaiSan taiSan) {
		DecimalFormat def = new DecimalFormat(Const.NUMBER_FORMAT);
		SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
		Map<String, String> inputs = new HashMap<String, String>();
		inputs.put(TSBeCa.TS_TENPHIEUTAISAN, taiSan.getTenPhieuTaiSan());
		inputs.put(TSBeCa.TS_TENKHOATAISAN, taiSan.getTenKhoaTaiSan());
		inputs.put(TSBeCa.TS_TENPHUONGTIEN, taiSan.getTaiSanBeCa().getTenPhuongTien());
		inputs.put(TSBeCa.TS_COQUANDANGKY, taiSan.getTaiSanBeCa().getCoQuanDangKy());
		String namDong = taiSan.getTaiSanBeCa().getNamDong() != null ? String.valueOf(taiSan.getTaiSanBeCa().getNamDong()) : "";
		inputs.put(TSBeCa.TS_NAMDONG, namDong);
		inputs.put(TSBeCa.TS_NOIDONG, taiSan.getTaiSanBeCa().getNoiDong());
		String chieuDaiLMAX = taiSan.getTaiSanBeCa().getChieuDaiLmax() != null ? String.valueOf(taiSan.getTaiSanBeCa().getChieuDaiLmax()) : "";
		inputs.put(TSBeCa.TS_CHIEUDAILMAX, chieuDaiLMAX);
		String chieuRongBMAX = taiSan.getTaiSanBeCa().getChieuRongBmax() != null ? String.valueOf(taiSan.getTaiSanBeCa().getChieuRongBmax()) : "";
		inputs.put(TSBeCa.TS_CHIEURONGBMAX, chieuRongBMAX);
		String chieuCaoD = taiSan.getTaiSanBeCa().getChieuCaoD() != null ? String.valueOf(taiSan.getTaiSanBeCa().getChieuCaoD()) : "";
		inputs.put(TSBeCa.TS_CHIEUCAOD, chieuCaoD);
		String ltk = taiSan.getTaiSanBeCa().getLtk() != null ? String.valueOf(taiSan.getTaiSanBeCa().getLtk()) : "";
		inputs.put(TSBeCa.TS_LTK, ltk);
		inputs.put(TSBeCa.TS_VATLIEUVO, taiSan.getTaiSanBeCa().getVatLieuVo());
		inputs.put(TSBeCa.TS_TONGDUNGTICH, taiSan.getTaiSanBeCa().getTongDungTich());
		inputs.put(TSBeCa.TS_KICHTHUOCCABIN, taiSan.getTaiSanBeCa().getKichThuocCabin());
		inputs.put(TSBeCa.TS_KYHIEUMAY, taiSan.getTaiSanBeCa().getKyHieuMay());
		inputs.put(TSBeCa.TS_SOMAY, taiSan.getTaiSanBeCa().getSoMay());
		inputs.put(TSBeCa.TS_CONGSUAT, taiSan.getTaiSanBeCa().getCongSuat());
		inputs.put(TSBeCa.TS_DUOCPHEPSUDUNG, taiSan.getTaiSanBeCa().getDuocPhepSuDung());
		inputs.put(TSBeCa.TS_GIAYDKPHUONGTIENNGHECA, taiSan.getTaiSanBeCa().getGiayDKPhuongTienNgheCa());
		String ngayCapGiayDKPT = taiSan.getTaiSanBeCa().getNgayCapGiayDKPhuongTienNgheCa() != null ? df.format(taiSan.getTaiSanBeCa().getNgayCapGiayDKPhuongTienNgheCa()) : "";
		inputs.put(TSBeCa.TS_NGAYCAPGIAYDKPHUONGTIENNGHECA, ngayCapGiayDKPT);
		inputs.put(TSBeCa.TS_NOICAPGIAYDKPHUONGTIENNGHECA, taiSan.getTaiSanBeCa().getNoiCapGiayDKPhuongTienNgheCa());
		inputs.put(TSBeCa.TS_SODANGKYCU, taiSan.getTaiSanBeCa().getSoDangKyCu());
		return inputs;
	}
	
	//Tai san can ho
	private Map<String, String> createInputsForTaiSanCanHo(TSTaiSan taiSan) {
		DecimalFormat def = new DecimalFormat(Const.NUMBER_FORMAT);
		SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
		Map<String, String> inputs = new HashMap<String, String>();
		inputs.put(TSCanHo.TS_TENPHIEUTAISAN, taiSan.getTenPhieuTaiSan());
		inputs.put(TSCanHo.TS_TENKHOATAISAN, taiSan.getTenKhoaTaiSan());
		inputs.put(TSCanHo.TS_DIACHITAISAN, taiSan.getTaiSanCanHo().getDiaChiTaiSan());
		inputs.put(TSCanHo.TS_THUADATSO, taiSan.getTaiSanCanHo().getThuaDatSo());
		inputs.put(TSCanHo.TS_TOBANDOSO, taiSan.getTaiSanCanHo().getToBanDoSo());
		inputs.put(TSCanHo.TS_MOTA, taiSan.getTaiSanCanHo().getMoTa());
		String dienTich =  taiSan.getTaiSanCanHo().getDienTich() != null ? def.format(taiSan.getTaiSanCanHo().getDienTich()) : "";
		inputs.put(TSCanHo.TS_DIENTICH, dienTich);
		String hinhThucSuDungChung =  taiSan.getTaiSanCanHo().getHinhThucSuDungChung() != null ? def.format(taiSan.getTaiSanCanHo().getHinhThucSuDungChung()) : "";
		inputs.put(TSCanHo.TS_HINHTHUCSUDUNGCHUNG, hinhThucSuDungChung);
		String hinhThucSuDungRieng =  taiSan.getTaiSanCanHo().getHinhThucSuDungRieng() != null ? def.format(taiSan.getTaiSanCanHo().getHinhThucSuDungRieng()) : "";
		inputs.put(TSCanHo.TS_HINHTHUCSUDUNGRIENG, hinhThucSuDungRieng);
		inputs.put(TSCanHo.TS_MUCDICHSUDUNG, taiSan.getTaiSanCanHo().getMucDichSuDung());
		inputs.put(TSCanHo.TS_THOIHANSUDUNG, taiSan.getTaiSanCanHo().getThoiHanSuDung());
		inputs.put(TSCanHo.TS_NGUONGOCSUDUNG, taiSan.getTaiSanCanHo().getNguonGocSuDung());
		String tongDienTichSuDung = taiSan.getTaiSanCanHo().getTongDienTichSuDung() != null ? def.format(taiSan.getTaiSanCanHo().getTongDienTichSuDung()) : "";
		inputs.put(TSCanHo.TS_TONGDIENTICHSUDUNG, tongDienTichSuDung);
		String dienTichXayDung = taiSan.getTaiSanCanHo().getDienTichXayDung() != null ? def.format(taiSan.getTaiSanCanHo().getDienTichXayDung()) : "";
		inputs.put(TSCanHo.TS_DIENTICHXAYDUNG, dienTichXayDung);
		inputs.put(TSCanHo.TS_KETCAU, taiSan.getTaiSanCanHo().getKetCau());
		String ngayCapGiayCNQSD = taiSan.getTaiSanCanHo().getNgayCapGiayCNQuyenSuDung() != null ? df.format(taiSan.getTaiSanCanHo().getNgayCapGiayCNQuyenSuDung()) : "";
		inputs.put(TSCanHo.TS_NGAYCAPGIAYCNQUYENSUDUNG, ngayCapGiayCNQSD);
		inputs.put(TSCanHo.TS_NOICAPGIAYCNQUYENSUDUNG, taiSan.getTaiSanCanHo().getNoiCapGiayCNQuyenSuDung());
		inputs.put(TSCanHo.TS_VAOSOCAPGIAYCNQUYENSUDUNGSO, taiSan.getTaiSanCanHo().getVaoSoCapGiayCNQuyenSuDungSo());
		String canHoSo = taiSan.getTaiSanCanHo().getCanHoSo() != null ? String.valueOf(taiSan.getTaiSanCanHo().getCanHoSo()) : "";
		inputs.put(TSCanHo.TS_CANHOSO, canHoSo);
		String canHoThuocTang = taiSan.getTaiSanCanHo().getCanHoThuocTang() != null ? String.valueOf(taiSan.getTaiSanCanHo().getCanHoThuocTang()) : "";
		inputs.put(TSCanHo.TS_CANHOTHUOCTANG, canHoThuocTang);
		String soTangCanHoNhaChungCu = taiSan.getTaiSanCanHo().getSoTangNhaChungCu() != null ? String.valueOf(taiSan.getTaiSanCanHo().getSoTangNhaChungCu()) : "";
		inputs.put(TSCanHo.TS_SOTANGNHACHUNGCU, soTangCanHoNhaChungCu);
		inputs.put(TSCanHo.TS_GIAYCNQUYENSOHUUTAISANSO, taiSan.getTaiSanCanHo().getGiayCNQuyenSoHuuTaiSanSo());
		String ngayCapGiayCNQSHTS = taiSan.getTaiSanCanHo().getNgayCapGiayCNQuyenSoHuuTaiSan() != null ? df.format(taiSan.getTaiSanCanHo().getNgayCapGiayCNQuyenSoHuuTaiSan()) : "";
		inputs.put(TSCanHo.TS_NGAYCAPGIAYCNQUYENSOHUUTAISAN, ngayCapGiayCNQSHTS);
		inputs.put(TSCanHo.TS_NOICAPGIAYCNQUYENSOHUUTAISAN, taiSan.getTaiSanCanHo().getNoiCapGiayCNQuyenSoHuuTaiSan());
		inputs.put(TSCanHo.TS_NHUNGHANCHEVEQUYENSUDUNGDAT, taiSan.getTaiSanCanHo().getNhungHanCheVeQuyenSuDungDat());
		String dienTichGiaoDichMotPhan = taiSan.getTaiSanCanHo().getDienTichGiaoDichMotPhan() != null ? def.format(taiSan.getTaiSanCanHo().getDienTichGiaoDichMotPhan()) : "";
		inputs.put(TSCanHo.TS_DIENTICHGIAODICHMOTPHAN, dienTichGiaoDichMotPhan);
		return inputs;
	}
	
	//Tai san co phieu
	private Map<String, String> createInputsForTaiSanCoPhieu(TSTaiSan taiSan) {
		DanhMucService danhMucSV = new DanhMucService();
		DecimalFormat def = new DecimalFormat(Const.NUMBER_FORMAT);
		SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
		Map<String, String> inputs = new HashMap<String, String>();
		inputs.put(TSCoPhieu.TS_TENPHIEUTAISAN, taiSan.getTenPhieuTaiSan());
		inputs.put(TSCoPhieu.TS_TENKHOATAISAN, taiSan.getTenKhoaTaiSan());
		
		inputs.put(TSCoPhieu.TS_CTYPHATHANHCOPHIEU, taiSan.getTaiSanCoPhieu().getCtyPhatHanhCoPhieu());
		inputs.put(TSCoPhieu.TS_DIACHICONGTY, taiSan.getTaiSanCoPhieu().getDiaChiCongTy());
		String menhGia = taiSan.getTaiSanCoPhieu().getMenhGia() != null ? def.format(taiSan.getTaiSanCoPhieu().getMenhGia()) : "";
		inputs.put(TSCoPhieu.TS_MENHGIA, menhGia);
		String tongMenhGia = taiSan.getTaiSanCoPhieu().getTongMenhGia() != null ? def.format(taiSan.getTaiSanCoPhieu().getTongMenhGia()) : "";
		inputs.put(TSCoPhieu.TS_TONGMENHGIA, tongMenhGia);
		inputs.put(TSCoPhieu.TS_SODANGKY, taiSan.getTaiSanCoPhieu().getSoDangKy());
		String ngayPhatHanh = taiSan.getTaiSanCoPhieu().getNgayPhatHanh() != null ? df.format(taiSan.getTaiSanCoPhieu().getNgayPhatHanh()) : "";
		inputs.put(TSCoPhieu.TS_NGAYPHATHANH, ngayPhatHanh);
		inputs.put(TSCoPhieu.TS_LOAICOPHIEU, taiSan.getTaiSanCoPhieu().getLoaiCoPhieu());
		inputs.put(TSCoPhieu.TS_TENCODONG, taiSan.getTaiSanCoPhieu().getTenCoDong());
		inputs.put(TSCoPhieu.TS_DIACHICODONG, taiSan.getTaiSanCoPhieu().getDiaChiCoDong());
		String tenLoaiGiayTo = "";
		if (taiSan.getTaiSanCoPhieu().getLoaiGiayToID() != null) {
			tenLoaiGiayTo = danhMucSV.getNameLoaiGiayToByID(taiSan.getTaiSanCoPhieu().getLoaiGiayToID());
		}
		inputs.put(TSCoPhieu.TS_LOAIGIAYTOID, tenLoaiGiayTo);
		inputs.put(TSCoPhieu.TS_SOGIAYTO, taiSan.getTaiSanCoPhieu().getSoGiayTo());
		String ngayCapGiayTo = taiSan.getTaiSanCoPhieu().getNgayCapGiayTo() != null ? df.format(taiSan.getTaiSanCoPhieu().getNgayCapGiayTo()) : "";
		inputs.put(TSCoPhieu.TS_NGAYCAPGIAYTO, ngayCapGiayTo);
		inputs.put(TSCoPhieu.TS_NOICAPGIAYTO, taiSan.getTaiSanCoPhieu().getNoiCapGiayTo());
		
		return inputs;
	}
	
	//Tai san cong trinh kien truc
	private Map<String, String> createInputsForTaiSanCongTrinhKienTruc(TSTaiSan taiSan) {
		DecimalFormat def = new DecimalFormat(Const.NUMBER_FORMAT);
		SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
		Map<String, String> inputs = new HashMap<String, String>();
		inputs.put(TSCongTrinhKienTruc.TS_TENPHIEUTAISAN, taiSan.getTenPhieuTaiSan());
		inputs.put(TSCongTrinhKienTruc.TS_TENKHOATAISAN, taiSan.getTenKhoaTaiSan());
		
		inputs.put(TSCongTrinhKienTruc.TS_DIACHITAISAN, taiSan.getTaiSanCongTrinhKienTruc().getDiaChiTaiSan());
		inputs.put(TSCongTrinhKienTruc.TS_THUADATSO, taiSan.getTaiSanCongTrinhKienTruc().getThuaDatSo());
		inputs.put(TSCongTrinhKienTruc.TS_TOBANDOSO, taiSan.getTaiSanCongTrinhKienTruc().getToBanDoSo());
		String dienTich = taiSan.getTaiSanCongTrinhKienTruc().getDienTich() != null ? def.format(taiSan.getTaiSanCongTrinhKienTruc().getDienTich()) : "";
		inputs.put(TSCongTrinhKienTruc.TS_DIENTICH, dienTich);
		String hinhThucSuDungRieng = taiSan.getTaiSanCongTrinhKienTruc().getHinhThucSuDungRieng() != null ? def.format(taiSan.getTaiSanCongTrinhKienTruc().getHinhThucSuDungRieng()) : "";
		inputs.put(TSCongTrinhKienTruc.TS_HINHTHUCSUDUNGRIENG, hinhThucSuDungRieng);
		String hinhThucSuDungChung = taiSan.getTaiSanCongTrinhKienTruc().getHinhThucSuDungChung() != null ? def.format(taiSan.getTaiSanCongTrinhKienTruc().getHinhThucSuDungChung()) : "";
		inputs.put(TSCongTrinhKienTruc.TS_HINHTHUCSUDUNGCHUNG, hinhThucSuDungChung);
		inputs.put(TSCongTrinhKienTruc.TS_MUCDICHSUDUNG, taiSan.getTaiSanCongTrinhKienTruc().getMucDichSuDung());
		inputs.put(TSCongTrinhKienTruc.TS_THOIHANSUDUNG, taiSan.getTaiSanCongTrinhKienTruc().getThoiHanSuDung());
		inputs.put(TSCongTrinhKienTruc.TS_NGUONGOC, taiSan.getTaiSanCongTrinhKienTruc().getNguonGoc());
		String tongDienTich =  taiSan.getTaiSanCongTrinhKienTruc().getTongDienTich() != null ? def.format(taiSan.getTaiSanCongTrinhKienTruc().getTongDienTich()) : "";
		inputs.put(TSCongTrinhKienTruc.TS_TONGDIENTICH, tongDienTich);
		String dienTichXayDung = taiSan.getTaiSanCongTrinhKienTruc().getDienTichXayDung() != null ? def.format(taiSan.getTaiSanCongTrinhKienTruc().getDienTichXayDung()) : "";
		inputs.put(TSCongTrinhKienTruc.TS_DIENTICHXAYDUNG, dienTichXayDung);
		inputs.put(TSCongTrinhKienTruc.TS_KETCAU, taiSan.getTaiSanCongTrinhKienTruc().getKetCau());
		String ngayCapGiayCNQSDD = taiSan.getTaiSanCongTrinhKienTruc().getNgayCapGiayCNQuyenSuDungDat() != null ? df.format(taiSan.getTaiSanCongTrinhKienTruc().getNgayCapGiayCNQuyenSuDungDat()) : "";
		inputs.put(TSCongTrinhKienTruc.TS_NGAYCAPGIAYCNQUYENSUDUNGDAT, ngayCapGiayCNQSDD);
		inputs.put(TSCongTrinhKienTruc.TS_NOICAPGIAYCNQUYENSUDUNGDAT, taiSan.getTaiSanCongTrinhKienTruc().getNoiCapGiayCNQuyenSuDungDat());
		inputs.put(TSCongTrinhKienTruc.TS_VAOSOCNQUYENSUDUNGDATSO, taiSan.getTaiSanCongTrinhKienTruc().getVaoSoCNQuyenSuDungDatSo());
		String soTang = taiSan.getTaiSanCongTrinhKienTruc().getSoTang() != null ? def.format(taiSan.getTaiSanCongTrinhKienTruc().getSoTang()) : "";
		inputs.put(TSCongTrinhKienTruc.TS_SOTANG, soTang);
		inputs.put(TSCongTrinhKienTruc.TS_LOAICONGTRINH, taiSan.getTaiSanCongTrinhKienTruc().getLoaiCongTrinh());
		inputs.put(TSCongTrinhKienTruc.TS_GIAYCNQUYENSOHUUTAISANSO, taiSan.getTaiSanCongTrinhKienTruc().getGiayCNQuyenSoHuuTaiSanSo());
		String ngayCapGiayCNQSHTS = taiSan.getTaiSanCongTrinhKienTruc().getNgayCapGiayCNQuyenSoHuuTaiSan() != null ? df.format(taiSan.getTaiSanCongTrinhKienTruc().getNgayCapGiayCNQuyenSoHuuTaiSan()) : "";
		inputs.put(TSCongTrinhKienTruc.TS_NGAYCAPGIAYCNQUYENSOHUUTAISAN, ngayCapGiayCNQSHTS);
		inputs.put(TSCongTrinhKienTruc.TS_NOICAPGIAYCNQUYENSOHUUTAISAN, taiSan.getTaiSanCongTrinhKienTruc().getNoiCapGiayCNQuyenSoHuuTaiSan());
		inputs.put(TSCongTrinhKienTruc.TS_HANCHEQUYENSUDUNGDAT, taiSan.getTaiSanCongTrinhKienTruc().getHanCheQuyenSuDungDat());
		String dienTichGiaoDichMotPhan = taiSan.getTaiSanCongTrinhKienTruc().getDienTichGiaoDichMotPhan() != null ? def.format(taiSan.getTaiSanCongTrinhKienTruc().getDienTichGiaoDichMotPhan()) : "";
		inputs.put(TSCongTrinhKienTruc.TS_DIENTICHGIAODICHMOTPHAN, dienTichGiaoDichMotPhan);
		
		return inputs;
	}
	
	//Tai san may bay
	private Map<String, String> createInputsForTaiSanMayBay(TSTaiSan taiSan) {
		DecimalFormat def = new DecimalFormat(Const.NUMBER_FORMAT);
		SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
		Map<String, String> inputs = new HashMap<String, String>();
		inputs.put(TSMayBay.TS_TENPHIEUTAISAN, taiSan.getTenPhieuTaiSan());
		inputs.put(TSMayBay.TS_TENKHOATAISAN, taiSan.getTenKhoaTaiSan());
		inputs.put(TSMayBay.TS_TENPHUONGTIEN, taiSan.getTaiSanMayBay().getTenPhuongTien());
		inputs.put(TSMayBay.TS_DACDIEMTAISAN, taiSan.getTaiSanMayBay().getDacDiemTaiSan());
		String ngayCapGiayDangKy = taiSan.getTaiSanMayBay().getNgayCapGiayDangKy() != null ? df.format(taiSan.getTaiSanMayBay().getNgayCapGiayDangKy()) : "";
		inputs.put(TSMayBay.TS_NGAYCAPGIAYDANGKY, ngayCapGiayDangKy);
		inputs.put(TSMayBay.TS_NOICAPGIAYDANGKY, taiSan.getTaiSanMayBay().getNoiCapGiayDangKy());
		
		return inputs;
	}
	
	//Tai san may moc
	private Map<String, String> createInputsForTaiSanMayMoc(TSTaiSan taiSan) {
		DecimalFormat def = new DecimalFormat(Const.NUMBER_FORMAT);
		SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
		Map<String, String> inputs = new HashMap<String, String>();
		inputs.put(TSMayMoc.TS_TENPHIEUTAISAN, taiSan.getTenPhieuTaiSan());
		inputs.put(TSMayMoc.TS_TENKHOATAISAN, taiSan.getTenKhoaTaiSan());
		
		inputs.put(TSMayMoc.TS_NHANHIEU, taiSan.getTaiSanMayMoc().getNhanHieu());
		inputs.put(TSMayMoc.TS_CONGSUAT, taiSan.getTaiSanMayMoc().getCongSuat());
		inputs.put(TSMayMoc.TS_NOICHETAO, taiSan.getTaiSanMayMoc().getNoiCheTao());
		inputs.put(TSMayMoc.TS_DACDIEMTAISAN, taiSan.getTaiSanMayMoc().getDacDiemTaiSan());
		inputs.put(TSMayMoc.TS_COQUANDANGKIEM, taiSan.getTaiSanMayMoc().getCoQuanDangKiem());
		return inputs;
	}

	//Tai san mo to xe  may
	private Map<String, String> createInputsForTaiSanMoToXeMay(TSTaiSan taiSan) {
		DecimalFormat def = new DecimalFormat(Const.NUMBER_FORMAT);
		SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
		Map<String, String> inputs = new HashMap<String, String>();
		inputs.put(TSMoToXeMay.TS_TENPHIEUTAISAN, taiSan.getTenPhieuTaiSan());
		inputs.put(TSMoToXeMay.TS_TENKHOATAISAN, taiSan.getTenKhoaTaiSan());
		
		inputs.put(TSMoToXeMay.TS_NHANHIEU, taiSan.getTaiSanMoToXeMay().getNhanHieu());
		inputs.put(TSMoToXeMay.TS_LOAIXE, taiSan.getTaiSanMoToXeMay().getLoaiXe());
		inputs.put(TSMoToXeMay.TS_MAUSON, taiSan.getTaiSanMoToXeMay().getMauSon());
		String namSanXuat = taiSan.getTaiSanMoToXeMay().getNamSanXuat() != null ? String.valueOf(taiSan.getTaiSanMoToXeMay().getNamSanXuat()) : "";
		inputs.put(TSMoToXeMay.TS_NAMSANXUAT, namSanXuat);
		inputs.put(TSMoToXeMay.TS_SOKHUNG, taiSan.getTaiSanMoToXeMay().getSoKhung());
		inputs.put(TSMoToXeMay.TS_SOMAY, taiSan.getTaiSanMoToXeMay().getSoMay());
		inputs.put(TSMoToXeMay.TS_GIAYDANGKYSO, taiSan.getTaiSanMoToXeMay().getGiayDangKySo());
		String ngayCapGiayDangKy = taiSan.getTaiSanMoToXeMay().getNgayCapGiayDangKy() != null ? df.format(taiSan.getTaiSanMoToXeMay().getNgayCapGiayDangKy()) : "";
		inputs.put(TSMoToXeMay.TS_NGAYCAPGIAYDANGKY, ngayCapGiayDangKy);
		inputs.put(TSMoToXeMay.TS_NOICAPGIAYDANGKY, taiSan.getTaiSanMoToXeMay().getNoiCapGiayDangKy());
		return inputs;
	}
	
	//Tai san nha
	private Map<String, String> createInputsForTaiSanNha(TSTaiSan taiSan) {
		DecimalFormat def = new DecimalFormat(Const.NUMBER_FORMAT);
		SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
		Map<String, String> inputs = new HashMap<String, String>();
		inputs.put(TSNha.TS_TENPHIEUTAISAN, taiSan.getTenPhieuTaiSan());
		inputs.put(TSNha.TS_TENKHOATAISAN, taiSan.getTenKhoaTaiSan());
		
		inputs.put(TSNha.TS_DIACHITAISAN, taiSan.getTaiSanNha().getDiaChiTaiSan());
		inputs.put(TSNha.TS_THUADATSO, taiSan.getTaiSanNha().getThuaDatSo());
		inputs.put(TSNha.TS_TOBANDOSO, taiSan.getTaiSanNha().getToBanDoSo());
		String dienTichSuDung = taiSan.getTaiSanNha().getDienTichSuDung() != null ? def.format(taiSan.getTaiSanNha().getDienTichSuDung()) : "";
		inputs.put(TSNha.TS_DIENTICHSUDUNG, dienTichSuDung);
		inputs.put(TSNha.TS_DIENTICHSUDUNGBANGCHU, WebUtil.convertNumberToString(taiSan.getTaiSanNha().getDienTichSuDung()));
		String dienTichSuDungChung = taiSan.getTaiSanNha().getDienTichSuDungChung() != null ? def.format(taiSan.getTaiSanNha().getDienTichSuDungChung()) : "";
		inputs.put(TSNha.TS_DIENTICHSUDUNGCHUNG, dienTichSuDungChung);
		String dienTichSuDungRieng = taiSan.getTaiSanNha().getDienTichSuDungRieng() != null ? def.format(taiSan.getTaiSanNha().getDienTichSuDungRieng()) : "";
		inputs.put(TSNha.TS_DIENTICHSUDUNGRIENG, dienTichSuDungRieng);
		inputs.put(TSNha.TS_MUCDICHSUDUNG, taiSan.getTaiSanNha().getMucDichSuDung());
		inputs.put(TSNha.TS_THOIHANSUDUNG, taiSan.getTaiSanNha().getThoiHanSuDung());
		inputs.put(TSNha.TS_NGUONGOCSUDUNG, taiSan.getTaiSanNha().getNguonGocSuDung());
		String dienTichXayDung = taiSan.getTaiSanNha().getDienTichXayDung() != null ? def.format(taiSan.getTaiSanNha().getDienTichXayDung()) : "" ;
		inputs.put(TSNha.TS_DIENTICHXAYDUNG, dienTichXayDung);
		inputs.put(TSNha.TS_DIENTICHXAYDUNGBANGCHU, WebUtil.convertNumberToString(taiSan.getTaiSanNha().getDienTichXayDung()));
		String dienTichSan = taiSan.getTaiSanNha().getDienTichSan() != null ? def.format(taiSan.getTaiSanNha().getDienTichSan()) : "";
		inputs.put(TSNha.TS_DIENTICHSAN, dienTichSan);
		inputs.put(TSNha.TS_DIENTICHSANBANGCHU, WebUtil.convertNumberToString(taiSan.getTaiSanNha().getDienTichSan()));
		inputs.put(TSNha.TS_HANCHEVEQUYENSUDUNGDAT, taiSan.getTaiSanNha().getHanCheVeQuyenSuDungDat());
		inputs.put(TSNha.TS_KETCAU, taiSan.getTaiSanNha().getKetCau());
		String ngayCapGiayCNQSDD = taiSan.getTaiSanNha().getNgayCapGiayCNQSDD() != null ? df.format(taiSan.getTaiSanNha().getNgayCapGiayCNQSDD()) : "";
		inputs.put(TSNha.TS_NGAYCAPGIAYCNQSDD, ngayCapGiayCNQSDD);
		inputs.put(TSNha.TS_NOICAPGIAYCNQSDD, taiSan.getTaiSanNha().getNoiCapGiayCNQSDD());
		inputs.put(TSNha.TS_VAOSOGIAYCNQSDDSO, taiSan.getTaiSanNha().getVaoSoGiayCNQSDDSo());
		String soTang = taiSan.getTaiSanNha().getSoTang() != null ? String.valueOf(taiSan.getTaiSanNha().getSoTang()) : "";
		inputs.put(TSNha.TS_SOTANG, soTang);
		inputs.put(TSNha.TS_LOAICONGTRINH, taiSan.getTaiSanNha().getLoaiCongTrinh());
		inputs.put(TSNha.TS_GIAYCNQUYENSOHUUTAISANSO, taiSan.getTaiSanNha().getGiayCNQuyenSoHuuTaiSanSo());
		String ngayCapGiayCNQSHTS = taiSan.getTaiSanNha().getNgayCapGiayCNQuyenSoHuuTaiSan() != null ? df.format(taiSan.getTaiSanNha().getNgayCapGiayCNQuyenSoHuuTaiSan()) : "";
		inputs.put(TSNha.TS_NGAYCAPGIAYCNQUYENSOHUUTAISAN, ngayCapGiayCNQSHTS);
		inputs.put(TSNha.TS_NOICAPGIAYCNQUYENSOHUUTAISAN, taiSan.getTaiSanNha().getNoiCapGiayCNQuyenSoHuuTaiSan());
		String dienTichGiaoDichMotPhan = taiSan.getTaiSanNha().getDienTichGiaoDichMotPhan() != null ? def.format(taiSan.getTaiSanNha().getDienTichGiaoDichMotPhan()) : "";
		inputs.put(TSNha.TS_DIENTICHGIAODICHMOTPHAN, dienTichGiaoDichMotPhan);
		inputs.put(TSNha.TS_DIENTICHGIAODICHMOTPHANBANGCHU, WebUtil.convertNumberToString(taiSan.getTaiSanNha().getDienTichGiaoDichMotPhan()));
		
		String thoiHanThueDatTuNgay = taiSan.getTaiSanNha().getThoiHanThueDatTuNgay() != null ? df.format(taiSan.getTaiSanNha().getThoiHanThueDatTuNgay()) : "";
		inputs.put(TSNha.TS_THOIHANTHUEDATTUNGAY, thoiHanThueDatTuNgay);
		String thoiHanThueDatDenNgay = taiSan.getTaiSanNha().getThoiHanThueDatDenNgay() != null ? df.format(taiSan.getTaiSanNha().getThoiHanThueDatDenNgay()) : "";
		inputs.put(TSNha.TS_THOIHANTHUEDATDENNGAY, thoiHanThueDatDenNgay);
		inputs.put(TSNha.TS_HOPDONGTHUEDAT, taiSan.getTaiSanNha().getHopDongThueDat());
		inputs.put(TSNha.TS_TRANGTHIETBIGANLIEN, taiSan.getTaiSanNha().getTrangThietBiGanLien());
		inputs.put(TSNha.TS_TRANGTHIETBICHUYEUGANLIEN, taiSan.getTaiSanNha().getTrangThietBiChuYeuGanLien());
		
		return inputs;
	}
		
	//Tai san o to
	private Map<String, String> createInputsForTaiSanOTo(TSTaiSan taiSan) {
		DecimalFormat def = new DecimalFormat(Const.NUMBER_FORMAT);
		SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
		Map<String, String> inputs = new HashMap<String, String>();
		inputs.put(TSOTo.TS_TENPHIEUTAISAN, taiSan.getTenPhieuTaiSan());
		inputs.put(TSOTo.TS_TENKHOATAISAN, taiSan.getTenKhoaTaiSan());
		
		inputs.put(TSOTo.TS_NHANHIEU, taiSan.getTaiSanOTo().getNhanHieu());
		inputs.put(TSOTo.TS_LOAIXE, taiSan.getTaiSanOTo().getLoaiXe());
		inputs.put(TSOTo.TS_MAUSON, taiSan.getTaiSanOTo().getMauSon());
		String soChoNgoi = taiSan.getTaiSanOTo().getSoChoNgoi() != null ? String.valueOf(taiSan.getTaiSanOTo().getSoChoNgoi()) : "";
		inputs.put(TSOTo.TS_SOCHONGOI, soChoNgoi);
		String namSanXuat = taiSan.getTaiSanOTo().getNamSanXuat() != null ? String.valueOf(taiSan.getTaiSanOTo().getNamSanXuat()) : "";
		inputs.put(TSOTo.TS_NAMSANXUAT, namSanXuat);
		inputs.put(TSOTo.TS_SOKHUNG, taiSan.getTaiSanOTo().getSoKhung());
		inputs.put(TSOTo.TS_SOMAY, taiSan.getTaiSanOTo().getSoMay());
		inputs.put(TSOTo.TS_TAITRONG, taiSan.getTaiSanOTo().getTaiTrong());
		inputs.put(TSOTo.TS_TUTRONG, taiSan.getTaiSanOTo().getTuTrong());
		inputs.put(TSOTo.TS_GIAYDANGKYSO, taiSan.getTaiSanOTo().getGiayDangKySo());
		String ngayCapGiayDangKy = taiSan.getTaiSanOTo().getNgayCapGiayDangKy() != null ? df.format(taiSan.getTaiSanOTo().getNgayCapGiayDangKy()) : "";
		inputs.put(TSOTo.TS_NGAYCAPGIAYDANGKY, ngayCapGiayDangKy);
		inputs.put(TSOTo.TS_NOICAPGIAYDANGKY, taiSan.getTaiSanOTo().getNoiCapGiayDangKy());
		return inputs;
	}
	
	
	//Tai san so tiet kiem
	private Map<String, String> createInputsForTaiSanSoTietKiem(TSTaiSan taiSan) {
		DanhMucService danhMucSV = new DanhMucService();
		DecimalFormat def = new DecimalFormat(Const.NUMBER_FORMAT);
		SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
		Map<String, String> inputs = new HashMap<String, String>();
		inputs.put(TSSoTietKiem.TS_TENPHIEUTAISAN, taiSan.getTenPhieuTaiSan());
		inputs.put(TSSoTietKiem.TS_TENKHOATAISAN, taiSan.getTenKhoaTaiSan());
		
		String ngayGui = taiSan.getTaiSanSoTietKiem().getNgayGui() != null ? df.format(taiSan.getTaiSanSoTietKiem().getNgayGui()) : "";
		inputs.put(TSSoTietKiem.TS_NGAYGUI, ngayGui);
		String soDuTienGoi = taiSan.getTaiSanSoTietKiem().getSoDuTienGui() != null ? def.format(taiSan.getTaiSanSoTietKiem().getSoDuTienGui()) : "";
		inputs.put(TSSoTietKiem.TS_SODUTIENGUI, soDuTienGoi);
		inputs.put(TSSoTietKiem.TS_KYHAN, taiSan.getTaiSanSoTietKiem().getKyHan());
		inputs.put(TSSoTietKiem.TS_LAIXUAT, taiSan.getTaiSanSoTietKiem().getLaiXuat());
		inputs.put(TSSoTietKiem.TS_LOAITIEN, taiSan.getTaiSanSoTietKiem().getLoaiTien());
		inputs.put(TSSoTietKiem.TS_NGANHANGCAP, taiSan.getTaiSanSoTietKiem().getNganHangCap());
		inputs.put(TSSoTietKiem.TS_HOTENCHUSO, taiSan.getTaiSanSoTietKiem().getHoTenChuSo());
		inputs.put(TSSoTietKiem.TS_DIACHI, taiSan.getTaiSanSoTietKiem().getDiaChi());
		String loaiGiayTo = taiSan.getTaiSanSoTietKiem().getLoaiGiayToID() != null ? danhMucSV.getNameLoaiGiayToByID(taiSan.getTaiSanSoTietKiem().getLoaiGiayToID()) : "";
		inputs.put(TSSoTietKiem.TS_LOAIGIAYTOID, loaiGiayTo);
		inputs.put(TSSoTietKiem.TS_SOGIAYTO, taiSan.getTaiSanSoTietKiem().getSoGiayTo());
		String ngayCapGiayTo = taiSan.getTaiSanSoTietKiem().getNgayCapGiayTo() != null ? df.format(taiSan.getTaiSanSoTietKiem().getNgayCapGiayTo()) : "";
		inputs.put(TSSoTietKiem.TS_NGAYCAPGIAYTO, ngayCapGiayTo);
		inputs.put(TSSoTietKiem.TS_NOICAPGIAYTO, taiSan.getTaiSanSoTietKiem().getNoiCapGiayTo());
		return inputs;
	}
		
	//Tai san la dong san khac
	private Map<String, String> createInputsForTaiSanLaDongSanKhac(TSTaiSan taiSan) {
		DecimalFormat def = new DecimalFormat(Const.NUMBER_FORMAT);
		SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
		Map<String, String> inputs = new HashMap<String, String>();
		inputs.put(TSTaiSanLaDongSanKhac.TS_TENPHIEUTAISAN, taiSan.getTenPhieuTaiSan());
		inputs.put(TSTaiSanLaDongSanKhac.TS_TENKHOATAISAN, taiSan.getTenKhoaTaiSan());
		
		inputs.put(TSTaiSanLaDongSanKhac.TS_DACDIEMTAISAN, taiSan.getTaiSanLaDongSanKhac().getDacDiemTaiSan());
		return inputs;
	}
	
	
	//Tai san tau bien
	private Map<String, String> createInputsForTaiSanTauBien(TSTaiSan taiSan) {
		DecimalFormat def = new DecimalFormat(Const.NUMBER_FORMAT);
		SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
		Map<String, String> inputs = new HashMap<String, String>();
		inputs.put(TSTauBien.TS_TENPHIEUTAISAN, taiSan.getTenPhieuTaiSan());
		inputs.put(TSTauBien.TS_TENKHOATAISAN, taiSan.getTenKhoaTaiSan());
		
		inputs.put(TSTauBien.TS_TENTAU, taiSan.getTaiSanTauBien().getTenTau());
		inputs.put(TSTauBien.TS_LOAITAU, taiSan.getTaiSanTauBien().getLoaiTau());
		String namDong = taiSan.getTaiSanTauBien().getNamDong() != null ? String.valueOf(taiSan.getTaiSanTauBien().getNamDong()) : "";
		inputs.put(TSTauBien.TS_NAMDONG, namDong);
		inputs.put(TSTauBien.TS_NOIDONG, taiSan.getTaiSanTauBien().getNoiDong());
		String chieuDaiLonNhat = taiSan.getTaiSanTauBien().getChieuDaiLonNhat() != null ? def.format(taiSan.getTaiSanTauBien().getChieuDaiLonNhat()) : "";
		inputs.put(TSTauBien.TS_CHIEUDAILONNHAT, chieuDaiLonNhat);
		String chieuDongLonNhat = taiSan.getTaiSanTauBien().getChieuRongLonNhat() != null ? def.format(taiSan.getTaiSanTauBien().getChieuRongLonNhat()) : "";
		inputs.put(TSTauBien.TS_CHIEURONGLONNHAT, chieuDongLonNhat);
		String chieuCaoMan = taiSan.getTaiSanTauBien().getChieuCaoMan() != null ? def.format(taiSan.getTaiSanTauBien().getChieuCaoMan()) : ""; 
		inputs.put(TSTauBien.TS_CHIEUCAOMAN, chieuCaoMan);
		inputs.put(TSTauBien.TS_MUCNUOCTOIDA, taiSan.getTaiSanTauBien().getMucNuocToiDa());
		inputs.put(TSTauBien.TS_DUNGTICHTOANTHAN, taiSan.getTaiSanTauBien().getDungTichToanThan());
		inputs.put(TSTauBien.TS_DUNGTICHTHUCDUNG, taiSan.getTaiSanTauBien().getDungTichThucDung());
		inputs.put(TSTauBien.TS_TRONGTAI, taiSan.getTaiSanTauBien().getTrongTai());
		inputs.put(TSTauBien.TS_CONGSUATMAYCHINH, taiSan.getTaiSanTauBien().getCongSuatMayChinh());
		inputs.put(TSTauBien.TS_CANGDANGKY, taiSan.getTaiSanTauBien().getCangDangKy());
		String ngayDangKy = taiSan.getTaiSanTauBien().getNgayDangKy() != null ? df.format(taiSan.getTaiSanTauBien().getNgayDangKy()) : "";
		inputs.put(TSTauBien.TS_NGAYDANGKY, ngayDangKy);
		inputs.put(TSTauBien.TS_COQUANDANGKIEM, taiSan.getTaiSanTauBien().getCoQuanDangKiem());
		inputs.put(TSTauBien.TS_GIAYCHUNGNHANDANGKYTAUSO, taiSan.getTaiSanTauBien().getGiayChungNhanDangKyTauSo());
		inputs.put(TSTauBien.TS_NOICAPGIAYCHUNGNHANDANGKYTAUSO, taiSan.getTaiSanTauBien().getNoiCapGiayChungNhanDangKyTauSo());
		String ngayCapGiayCNDKTauSo = taiSan.getTaiSanTauBien().getNgayCapGiayChungNhanDangKyTauSo() != null ? df.format(taiSan.getTaiSanTauBien().getNgayCapGiayChungNhanDangKyTauSo()) : "";
		inputs.put(TSTauBien.TS_NGAYCAPGIAYCHUNGNHANDANGKYTAUSO, ngayCapGiayCNDKTauSo);
		
		return inputs;
	}		

	//Tai san tau ca
	private Map<String, String> createInputsForTaiSanTauCa(TSTaiSan taiSan) {
		DecimalFormat def = new DecimalFormat(Const.NUMBER_FORMAT);
		SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
		Map<String, String> inputs = new HashMap<String, String>();
		inputs.put(TSTauCa.TS_TENPHIEUTAISAN, taiSan.getTenPhieuTaiSan());
		inputs.put(TSTauCa.TS_TENKHOATAISAN, taiSan.getTenKhoaTaiSan());
		
		inputs.put(TSTauCa.TS_TENTAU, taiSan.getTaiSanTauCa().getTenTau());
		inputs.put(TSTauCa.TS_SOHIEU, taiSan.getTaiSanTauCa().getSoHieu());
		inputs.put(TSTauCa.TS_COQUANDANGKY, taiSan.getTaiSanTauCa().getCoQuanDangKy());
		inputs.put(TSTauCa.TS_LOAITAU, taiSan.getTaiSanTauCa().getLoaiTau());
		inputs.put(TSTauCa.TS_CONGDUNG, taiSan.getTaiSanTauCa().getCongDung());
		inputs.put(TSTauCa.TS_NOIDONG, taiSan.getTaiSanTauCa().getNoiDong());
		String namDong = taiSan.getTaiSanTauCa().getNamDong() != null ? String.valueOf(taiSan.getTaiSanTauCa().getNamDong()) : "";
		inputs.put(TSTauCa.TS_NAMDONG, namDong);
		inputs.put(TSTauCa.TS_MAUTHIETKE, taiSan.getTaiSanTauCa().getMauThietKe());
		inputs.put(TSTauCa.TS_COQUANTHIETKE, taiSan.getTaiSanTauCa().getCoQuanThietKe());
		String chieuDaiLMAX = taiSan.getTaiSanTauCa().getChieuDaiLmax() != null ? def.format(taiSan.getTaiSanTauCa().getChieuDaiLmax()) : "";
		inputs.put(TSTauCa.TS_CHIEUDAILMAX, chieuDaiLMAX);
		String ltk = taiSan.getTaiSanTauCa().getLtk() != null ? def.format(taiSan.getTaiSanTauCa().getLtk()) : "";
		inputs.put(TSTauCa.TS_LTK, ltk);
		String chieuRongBMAX = taiSan.getTaiSanTauCa().getChieuRongBmax() != null ? def.format(taiSan.getTaiSanTauCa().getChieuRongBmax()) : "";
		inputs.put(TSTauCa.TS_CHIEURONGBMAX, chieuRongBMAX);
		String btk = taiSan.getTaiSanTauCa().getBtk() != null ? def.format(taiSan.getTaiSanTauCa().getBtk()) : "";
		inputs.put(TSTauCa.TS_BTK, btk);
		String chieuCaoD = taiSan.getTaiSanTauCa().getChieuCaoD() != null ? def.format(taiSan.getTaiSanTauCa().getChieuCaoD()) : "";
		inputs.put(TSTauCa.TS_CHIEUCAOD, chieuCaoD);
		String chieuChimD = taiSan.getTaiSanTauCa().getChieuChimD() != null ? def.format(taiSan.getTaiSanTauCa().getChieuChimD()) : "";
		inputs.put(TSTauCa.TS_CHIEUCHIMD, chieuChimD);
		inputs.put(TSTauCa.TS_MANKHOF, taiSan.getTaiSanTauCa().getManKhoF());
		inputs.put(TSTauCa.TS_VATLIEUVO, taiSan.getTaiSanTauCa().getVatLieuVo());
		inputs.put(TSTauCa.TS_SUCCHOTOIDA, taiSan.getTaiSanTauCa().getSucChoToiDa());
		inputs.put(TSTauCa.TS_TOCDOTUDO, taiSan.getTaiSanTauCa().getTocDoTuDo());
		inputs.put(TSTauCa.TS_KYHIEUMAY, taiSan.getTaiSanTauCa().getKyHieuMay());
		inputs.put(TSTauCa.TS_SOMAY, taiSan.getTaiSanTauCa().getSoMay());
		String congSuat = taiSan.getTaiSanTauCa().getCongSuat() != null ? def.format(taiSan.getTaiSanTauCa().getCongSuat()) : "";
		inputs.put(TSTauCa.TS_CONGSUAT, congSuat);
		inputs.put(TSTauCa.TS_NOICHETAO, taiSan.getTaiSanTauCa().getNoiCheTao());
		inputs.put(TSTauCa.TS_CANGDANGKY, taiSan.getTaiSanTauCa().getCangDangKy());
		inputs.put(TSTauCa.TS_COQUANDANGKIEM, taiSan.getTaiSanTauCa().getCoQuanDangKiem());
		inputs.put(TSTauCa.TS_GIAYCNDANGKYTAUSO, taiSan.getTaiSanTauCa().getGiayCNDangKyTauSo());
		String ngayCapGiayCNDK = taiSan.getTaiSanTauCa().getNgayCapGiayCNDangKy() != null ? def.format(taiSan.getTaiSanTauCa().getNgayCapGiayCNDangKy()) : "";
		inputs.put(TSTauCa.TS_NGAYCAPGIAYCNDANGKY, ngayCapGiayCNDK);
		inputs.put(TSTauCa.TS_NOICAPGIAYCNDANGKY, taiSan.getTaiSanTauCa().getNoiCapGiayCNDangKy());
		inputs.put(TSTauCa.TS_SODANGKYCU, taiSan.getTaiSanTauCa().getSoDangKyCu());
		
		return inputs;
	}	
	
	//Tai san tau keo ghe thuyen
	private Map<String, String> createInputsForTaiSanTauKeoGheThuyen(TSTaiSan taiSan) {
		DecimalFormat def = new DecimalFormat(Const.NUMBER_FORMAT);
		SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
		Map<String, String> inputs = new HashMap<String, String>();
		inputs.put(TSTauKeoGheThuyen.TS_TENPHIEUTAISAN, taiSan.getTenPhieuTaiSan());
		inputs.put(TSTauKeoGheThuyen.TS_TENKHOATAISAN, taiSan.getTenKhoaTaiSan());
		
		inputs.put(TSTauKeoGheThuyen.TS_TENTAU, taiSan.getTaiSanTauCa().getTenTau());
		inputs.put(TSTauKeoGheThuyen.TS_SOHIEU, taiSan.getTaiSanTauCa().getSoHieu());
		inputs.put(TSTauKeoGheThuyen.TS_COQUANDANGKY, taiSan.getTaiSanTauCa().getCoQuanDangKy());
		inputs.put(TSTauKeoGheThuyen.TS_LOAITAU, taiSan.getTaiSanTauCa().getLoaiTau());
		inputs.put(TSTauKeoGheThuyen.TS_CONGDUNG, taiSan.getTaiSanTauCa().getCongDung());
		inputs.put(TSTauKeoGheThuyen.TS_NOIDONG, taiSan.getTaiSanTauCa().getNoiDong());
		String namDong = taiSan.getTaiSanTauCa().getNamDong() != null ? String.valueOf(taiSan.getTaiSanTauCa().getNamDong()) : "";
		inputs.put(TSTauKeoGheThuyen.TS_NAMDONG, namDong);
		inputs.put(TSTauKeoGheThuyen.TS_MAUTHIETKE, taiSan.getTaiSanTauCa().getMauThietKe());
		inputs.put(TSTauKeoGheThuyen.TS_COQUANTHIETKE, taiSan.getTaiSanTauCa().getCoQuanThietKe());
		String chieuDaiLMAX = taiSan.getTaiSanTauCa().getChieuDaiLmax() != null ? def.format(taiSan.getTaiSanTauCa().getChieuDaiLmax()) : "";
		inputs.put(TSTauKeoGheThuyen.TS_CHIEUDAILMAX, chieuDaiLMAX);
		String ltk = taiSan.getTaiSanTauCa().getLtk() != null ? def.format(taiSan.getTaiSanTauCa().getLtk()) : "";
		inputs.put(TSTauKeoGheThuyen.TS_LTK, ltk);
		String chieuRongBMAX = taiSan.getTaiSanTauCa().getChieuRongBmax() != null ? def.format(taiSan.getTaiSanTauCa().getChieuRongBmax()) : "";
		inputs.put(TSTauKeoGheThuyen.TS_CHIEURONGBMAX, chieuRongBMAX);
		String btk = taiSan.getTaiSanTauCa().getBtk() != null ? def.format(taiSan.getTaiSanTauCa().getBtk()) : "";
		inputs.put(TSTauKeoGheThuyen.TS_BTK, btk);
		String chieuCaoD = taiSan.getTaiSanTauCa().getChieuCaoD() != null ? def.format(taiSan.getTaiSanTauCa().getChieuCaoD()) : "";
		inputs.put(TSTauKeoGheThuyen.TS_CHIEUCAOD, chieuCaoD);
		String chieuChimD = taiSan.getTaiSanTauCa().getChieuChimD() != null ? def.format(taiSan.getTaiSanTauCa().getChieuChimD()) : "";
		inputs.put(TSTauKeoGheThuyen.TS_CHIEUCHIMD, chieuChimD);
		inputs.put(TSTauKeoGheThuyen.TS_MANKHOF, taiSan.getTaiSanTauCa().getManKhoF());
		inputs.put(TSTauKeoGheThuyen.TS_VATLIEUVO, taiSan.getTaiSanTauCa().getVatLieuVo());
		inputs.put(TSTauKeoGheThuyen.TS_SUCCHOTOIDA, taiSan.getTaiSanTauCa().getSucChoToiDa());
		inputs.put(TSTauKeoGheThuyen.TS_TOCDOTUDO, taiSan.getTaiSanTauCa().getTocDoTuDo());
		inputs.put(TSTauKeoGheThuyen.TS_KYHIEUMAY, taiSan.getTaiSanTauCa().getKyHieuMay());
		inputs.put(TSTauKeoGheThuyen.TS_SOMAY, taiSan.getTaiSanTauCa().getSoMay());
		String congSuat = taiSan.getTaiSanTauCa().getCongSuat() != null ? def.format(taiSan.getTaiSanTauCa().getCongSuat()) : "";
		inputs.put(TSTauKeoGheThuyen.TS_CONGSUAT, congSuat);
		inputs.put(TSTauKeoGheThuyen.TS_NOICHETAO, taiSan.getTaiSanTauCa().getNoiCheTao());
		inputs.put(TSTauKeoGheThuyen.TS_CANGDANGKY, taiSan.getTaiSanTauCa().getCangDangKy());
		inputs.put(TSTauKeoGheThuyen.TS_COQUANDANGKIEM, taiSan.getTaiSanTauCa().getCoQuanDangKiem());
		inputs.put(TSTauKeoGheThuyen.TS_GIAYCNDANGKYTAUSO, taiSan.getTaiSanTauCa().getGiayCNDangKyTauSo());
		String ngayCapGiayCNDK = taiSan.getTaiSanTauCa().getNgayCapGiayCNDangKy() != null ? def.format(taiSan.getTaiSanTauCa().getNgayCapGiayCNDangKy()) : "";
		inputs.put(TSTauKeoGheThuyen.TS_NGAYCAPGIAYCNDANGKYTAU, ngayCapGiayCNDK);
		inputs.put(TSTauKeoGheThuyen.TS_NOICAPGIAYCNDANGKYTAU, taiSan.getTaiSanTauCa().getNoiCapGiayCNDangKy());
		inputs.put(TSTauKeoGheThuyen.TS_SODANGKYCU, taiSan.getTaiSanTauCa().getSoDangKyCu());
		
		return inputs;
	}	
	
	
	//Tai san trai phieu
	private Map<String, String> createInputsForTaiSanTraiPhieu(TSTaiSan taiSan) {
		DanhMucService danhMucSV = new DanhMucService();
		DecimalFormat def = new DecimalFormat(Const.NUMBER_FORMAT);
		SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
		Map<String, String> inputs = new HashMap<String, String>();
		inputs.put(TSTraiPhieu.TS_TENPHIEUTAISAN, taiSan.getTenPhieuTaiSan());
		inputs.put(TSTraiPhieu.TS_TENKHOATAISAN, taiSan.getTenKhoaTaiSan());
		inputs.put(TSTraiPhieu.TS_LOAITRAIPHIEU, taiSan.getTaiSanTraiPhieu().getLoaiTraiPhieu());
		String ngayPhatHanh = taiSan.getTaiSanTraiPhieu().getNgayPhatHanh() != null ? df.format(taiSan.getTaiSanTraiPhieu().getNgayPhatHanh()) : "";
		inputs.put(TSTraiPhieu.TS_NGAYPHATHANH, ngayPhatHanh);
		inputs.put(TSTraiPhieu.TS_NOIPHATHANHTRAIPHIEU, taiSan.getTaiSanTraiPhieu().getNoiPhatHanhTraiPhieu());
		inputs.put(TSTraiPhieu.TS_MENHGIA, taiSan.getTaiSanTraiPhieu().getMenhGia());
		inputs.put(TSTraiPhieu.TS_KYHAN, taiSan.getTaiSanTraiPhieu().getKyHan());
		inputs.put(TSTraiPhieu.TS_LAISUAT, taiSan.getTaiSanTraiPhieu().getLaiSuat());
		inputs.put(TSTraiPhieu.TS_THOIHANTHANHTOAN, taiSan.getTaiSanTraiPhieu().getThoiHanThanhToan());
		inputs.put(TSTraiPhieu.TS_HOTEN, taiSan.getTaiSanTraiPhieu().getHoTen());
		inputs.put(TSTraiPhieu.TS_DIACHI, taiSan.getTaiSanTraiPhieu().getDiaChi());
		String loaiGiayTo = taiSan.getTaiSanTraiPhieu().getLoaiGiayToID() != null ? danhMucSV.getNameLoaiGiayToByID(taiSan.getTaiSanTraiPhieu().getLoaiGiayToID()) : "";
		inputs.put(TSTraiPhieu.TS_LOAIGIAYTOID, loaiGiayTo);
		inputs.put(TSTraiPhieu.TS_SOGIAYTO, taiSan.getTaiSanTraiPhieu().getSoGiayTo());
		inputs.put(TSTraiPhieu.TS_NOICAPGIAYTO, taiSan.getTaiSanTraiPhieu().getNoiCapGiayTo());
		String ngayCapGiayTo = taiSan.getTaiSanTraiPhieu().getNgayCapGiayTo() != null ? df.format(taiSan.getTaiSanTraiPhieu().getNgayCapGiayTo()) : "";
		inputs.put(TSTraiPhieu.TS_NGAYCAPGIAYTO, ngayCapGiayTo);
		return inputs;
	}
		
	private String getTemplateTaiSan(TSTaiSan taiSan, String maTemplate) {
		SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
		String noiDungTemplate = "";
		if (taiSan != null) {
			//noiDungTemplate = getContentTemplateByMa(maTemplate);
			if (noiDungTemplate != null) {
				Map<String, String> inputs = new HashMap<String, String>();
				switch (taiSan.getLoaiTaiSanID().intValue()) {
				case 1:
					inputs = createInputsForTaiSanBatDongSanKhongCoTaiSanGanLien(taiSan);
					break;
				case 2:
					inputs = createInputsForTaiSanBeCa(taiSan);
					break;
				case 3:
					inputs = createInputsForTaiSanCanHo(taiSan);
					break;
				case 4:
					inputs = createInputsForTaiSanCoPhieu(taiSan);
					break;
				case 5:
					inputs = createInputsForTaiSanCongTrinhKienTruc(taiSan);
					break;
				case 6:
					inputs = createInputsForTaiSanMayBay(taiSan);
					break;
				case 7:
					inputs = createInputsForTaiSanMayMoc(taiSan);
					break;
				case 8:
					inputs = createInputsForTaiSanMoToXeMay(taiSan);
					break;
				case 9:
					inputs = createInputsForTaiSanNha(taiSan);
					break;
				case 10:
					inputs = createInputsForTaiSanOTo(taiSan);
					break;
				case 11:
					inputs = createInputsForTaiSanSoTietKiem(taiSan);
					break;
				case 12:
					inputs = createInputsForTaiSanLaDongSanKhac(taiSan);
					break;
				case 13:
					inputs = createInputsForTaiSanTauBien(taiSan);
					break;
				case 14:
					inputs = createInputsForTaiSanTauCa(taiSan);
					break;
				case 15:
					inputs = createInputsForTaiSanTauKeoGheThuyen(taiSan);
					break;
				case 16:
					inputs = createInputsForTaiSanTraiPhieu(taiSan);
					break;
				default:
					break;
				}
				noiDungTemplate = WebUtil.fillInputs(noiDungTemplate, inputs);
			}
		}
		return noiDungTemplate;
	}
	
	public String getTemplateHopDong(HDHopDongTam hopDongTam) {
		DanhMucService danhMucSV = new DanhMucService();
		Integer loaiHopDongChiTietID = hopDongTam.getHopDong().getLoaiHopDongChiTietID();
		DMLoaiHopDongChiTiet loaiHopDongChiTiet = danhMucSV.getLoaiHopDongChiTietByID(loaiHopDongChiTietID);
		String noiDungTemplate = loaiHopDongChiTiet.getNoiDungTemplate();
		if (noiDungTemplate != null) {
			Map<String, String> inputs = new HashMap<String, String>();
			//Noi dung chung
			//HD_DUONGSUCHINHBENA
			//Get List Template Duong Su By Loai DuongSu Template
			/*
			String noiDungDuongSuA = "" ;
			List<TEMTemplateDuongSu> listTemplateDuongSuChinhA = getListTemplateDuongSuByLoaiHopDongChiTiet(hopDongTam.getDuongSuA().getLoaiDuongSuID(), loaiHopDongChiTietID);
			if (listTemplateDuongSuChinhA != null && listTemplateDuongSuChinhA.size() != 0) {
				noiDungDuongSuA = getTemplateDuongSu(hopDongTam.getDuongSuA(), listTemplateDuongSuChinhA.get(0).getNoiDungTemplateDuongSu());	
			}
			inputs.put(HDHopDong.HD_DUONGSUCHINHBENA, noiDungDuongSuA);
			//Nguoi uy quyen ben A
			String noiDungNguoiUyQuyenA = "";
			List<TEMTemplateDuongSu> listTemplateDuongSuNguoiUyQuyenA = null;
			if (hopDongTam.getNguoiUyQuyenA() != null) {
				listTemplateDuongSuNguoiUyQuyenA = getListTemplateDuongSuByLoaiHopDongChiTiet(hopDongTam.getNguoiUyQuyenA().getLoaiDuongSuID(), loaiHopDongChiTietID);
				if (listTemplateDuongSuNguoiUyQuyenA != null && listTemplateDuongSuNguoiUyQuyenA.size() != 0) {
					noiDungNguoiUyQuyenA = getTemplateDuongSu(hopDongTam.getNguoiUyQuyenA(), listTemplateDuongSuNguoiUyQuyenA.get(0).getNoiDungTemplateDuongSu());	
				}
			}
			inputs.put(HDHopDong.HD_NGUOIUYQUYENBENA, noiDungNguoiUyQuyenA);
			// Dong So Huu Ben A
			String noiDongDongSoHuuBenA = "";
			List<TEMTemplateDuongSu> listTemplateDuongSuDongSoHuuBenA = null;
			
			if (hopDongTam.getListDongSoHuuBenA() != null && hopDongTam.getListDongSoHuuBenA().size() != 0) {
				listTemplateDuongSuDongSoHuuBenA = getListTemplateDuongSuByLoaiHopDongChiTiet( hopDongTam.getListDongSoHuuBenA().get(0).getLoaiDuongSuID(), loaiHopDongChiTietID);
				for (DSDuongSu dongSoHuu : hopDongTam.getListDongSoHuuBenA()) {
					noiDongDongSoHuuBenA += getTemplateDuongSu(dongSoHuu, listTemplateDuongSuDongSoHuuBenA.get(0).getNoiDungTemplateDuongSu());
				}
			}
			inputs.put(HDHopDong.HD_DONGSOHUUBENA, noiDongDongSoHuuBenA);*/
			//HD_DUONGSUCHINHBENB
			//Get List Template Duong Su By Loai DuongSu Template
			String noiDungDuongSuB = "" ;
			List<TEMTemplateDuongSu> listTemplateDuongSuChinhB = getListTemplateDuongSuByLoaiHopDongChiTiet(hopDongTam.getDuongSuB().getLoaiDuongSuID(), loaiHopDongChiTietID);
			if (listTemplateDuongSuChinhB != null && listTemplateDuongSuChinhB.size() != 0) {
				noiDungDuongSuB = getTemplateDuongSu(hopDongTam.getDuongSuB(), listTemplateDuongSuChinhB.get(0).getNoiDungTemplateDuongSu());	
			}
			inputs.put(HDHopDong.HD_DUONGSUCHINHBENB, noiDungDuongSuB);
			//Nguoi uy quyen ben B
			String noiDungNguoiUyQuyenB = "";
			List<TEMTemplateDuongSu> listTemplateDuongSuNguoiUyQuyenB = null;
			if (hopDongTam.getNguoiUyQuyenB() != null) {
				listTemplateDuongSuNguoiUyQuyenB = getListTemplateDuongSuByLoaiHopDongChiTiet(hopDongTam.getNguoiUyQuyenB().getLoaiDuongSuID(), loaiHopDongChiTietID);
				if (listTemplateDuongSuNguoiUyQuyenB != null && listTemplateDuongSuNguoiUyQuyenB.size() != 0) {
					noiDungNguoiUyQuyenB = getTemplateDuongSu(hopDongTam.getNguoiUyQuyenB(), listTemplateDuongSuNguoiUyQuyenB.get(0).getNoiDungTemplateDuongSu());	
				}
			}
			inputs.put(HDHopDong.HD_NGUOIUYQUYENBENB, noiDungNguoiUyQuyenB);
			// Dong So Huu Ben B
			String noiDongDongSoHuuBenB = "";
			List<TEMTemplateDuongSu> listTemplateDuongSuDongSoHuuBenB = null;
			if (hopDongTam.getListDongSoHuuBenB() != null && hopDongTam.getListDongSoHuuBenB().size() != 0) {
				listTemplateDuongSuDongSoHuuBenB = getListTemplateDuongSuByLoaiHopDongChiTiet( hopDongTam.getListDongSoHuuBenB().get(0).getLoaiDuongSuID(), loaiHopDongChiTietID);
				for (DSDuongSu dongSoHuu : hopDongTam.getListDongSoHuuBenB()) {
					noiDongDongSoHuuBenB += getTemplateDuongSu(dongSoHuu, listTemplateDuongSuDongSoHuuBenB.get(0).getNoiDungTemplateDuongSu());
				}
			}
			inputs.put(HDHopDong.HD_DONGSOHUUBENB, noiDongDongSoHuuBenB);
			
			
			
			
			//Thong tin tai san ben A
			String taiSanBenA = "";
			if (hopDongTam.getListTaiSanBenA() != null) {
				for (TSTaiSan taiSan : hopDongTam.getListTaiSanBenA()) {
					if (hopDongTam.getHopDong().getLoaiHopDongChiTietID().intValue() == HDHopDong.HD_CHUYENDOI_NHA_O) {
						//taiSanBenA += getTemplateTaiSan(taiSan, HDTemplateHopDong.TAISAN_NHA_CHUYENDOI);
					} else {
						String templateLoaiTaiSan = danhMucSV.getMaTemplateByLoaiTaiSanID(taiSan.getLoaiTaiSanID());
						taiSanBenA += getTemplateTaiSan(taiSan, templateLoaiTaiSan);
					}
					
				}
			}
			
			
			
			inputs.put(HDHopDong.HD_TAISANBENA, taiSanBenA);
			//Thong tin tai san ben B
			String taiSanBenB = "";
			if (hopDongTam.getListTaiSanBenB() != null) {
				for (TSTaiSan taiSan : hopDongTam.getListTaiSanBenB()) {
					if (hopDongTam.getHopDong().getLoaiHopDongChiTietID().intValue() == HDHopDong.HD_CHUYENDOI_NHA_O) {
						//taiSanBenB += getTemplateTaiSan(taiSan, HDTemplateHopDong.TAISAN_NHA_CHUYENDOI);
					} else {
						String templateLoaiTaiSan = danhMucSV.getMaTemplateByLoaiTaiSanID(taiSan.getLoaiTaiSanID());
						taiSanBenB += getTemplateTaiSan(taiSan, templateLoaiTaiSan);
					}
					
				}
			}
			inputs.put(HDHopDong.HD_TAISANBENB, taiSanBenB);
			
			//Thong tin rieng cho tung hop dong
			inputs = createInputsForHopDongChuyenDoi(inputs, hopDongTam.getHopDong().getHopDongChuyenDoi());
			
			noiDungTemplate = WebUtil.fillInputs(noiDungTemplate, inputs);
		}

		return noiDungTemplate;
	}
	
	//Hop dong chuyen doi
	private Map<String, String> createInputsForHopDongChuyenDoi(Map<String, String> inputs, HDChuyenDoi hopDongChuyenDoi) {
		DanhMucService danhMucSV = new DanhMucService();
		DecimalFormat def = new DecimalFormat(Const.NUMBER_FORMAT);
		SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
		if (inputs != null) {
			String soTienChenhLech = hopDongChuyenDoi.getSoTienChenhLech() != null ? def.format(hopDongChuyenDoi.getSoTienChenhLech()) : "";
			inputs.put(HDChuyenDoi.HD_SOTIENCHENHLECH, soTienChenhLech);
			inputs.put(HDChuyenDoi.HD_SOTIENCHENHLECHBANGCHU, WebUtil.convertNumberToString(hopDongChuyenDoi.getSoTienChenhLech()));
			DMLoaiDuongSu loaiDuongSuThanhToan = null;
			String benThanhToan = "";
			String benDuocThanhToan = "";
			if (hopDongChuyenDoi.getBenThanhToan() != null) {
				loaiDuongSuThanhToan = danhMucSV.getLoaiDuongSuByID(hopDongChuyenDoi.getBenThanhToan());
				benThanhToan = loaiDuongSuThanhToan.getLoaiDuongSuTen();
				//if (loaiDuongSuThanhToan.getBenDoiLapID() != null) {
				//	benDuocThanhToan = loaiDuongSuThanhToan.getBenDoiLap().getLoaiDuongSuTen();	
				//}
			}
			inputs.put(HDChuyenDoi.HD_BENTHANHTOAN, benThanhToan);
			inputs.put(HDChuyenDoi.HD_BENDUOCTHANHTOAN, benDuocThanhToan);
			
			inputs.put(HDChuyenDoi.HD_CACCAMKETKHAC, hopDongChuyenDoi.getCacCamKetKhac());
			String ngayGiaoTaiSan = hopDongChuyenDoi.getNgayGiaoTaiSan() != null ? df.format(hopDongChuyenDoi.getNgayGiaoTaiSan()) : "";
			inputs.put(HDChuyenDoi.HD_NGAYGIAOTAISAN, ngayGiaoTaiSan);
			String benTraChenhLech = "";
			DMLoaiDuongSu loaiDuongSuTraChenhLech = null;
			if (hopDongChuyenDoi.getBenTraChenhLech() != null) {
				loaiDuongSuTraChenhLech = danhMucSV.getLoaiDuongSuByID(hopDongChuyenDoi.getBenTraChenhLech());
				benTraChenhLech = loaiDuongSuTraChenhLech.getLoaiDuongSuTen();
			}
			inputs.put(HDChuyenDoi.HD_BENTRACHENHLECH, benTraChenhLech);
			
			inputs.put(HDChuyenDoi.HD_PHUONGTHUCTHANHTOAN, hopDongChuyenDoi.getPhuongThucThanhToan());
			String phiBenAPhaiTra = hopDongChuyenDoi.getPhiBenAPhaiTra() != null ? def.format(hopDongChuyenDoi.getPhiBenAPhaiTra()) : "";
			inputs.put(HDChuyenDoi.HD_PHIBENAPHAITRA, phiBenAPhaiTra);
			String phiBenBPhaiTra = hopDongChuyenDoi.getPhiBenBPhaiTra() != null ? def.format(hopDongChuyenDoi.getPhiBenBPhaiTra()) : "";
			inputs.put(HDChuyenDoi.HD_PHIBENBPHAITRA, phiBenBPhaiTra);
			String ngayGiaoTaiSanChoBenA = hopDongChuyenDoi.getNgayGiaoTaiSanChoBenA() != null ? df.format(hopDongChuyenDoi.getNgayGiaoTaiSanChoBenA()) : "";
			inputs.put(HDChuyenDoi.HD_NGAYGIAOTAISANCHOBENA, ngayGiaoTaiSanChoBenA);
			String ngayGiaoTaiSanChoBenB = hopDongChuyenDoi.getNgayGiaoTaiSanChoBenB() != null ? df.format(hopDongChuyenDoi.getNgayGiaoTaiSanChoBenB()) : "";
			inputs.put(HDChuyenDoi.HD_NGAYGIAOTAISANCHOBENB, ngayGiaoTaiSanChoBenB);
			String thoiHanThanhToan = hopDongChuyenDoi.getThoiHanThanhToan() != null ? df.format(hopDongChuyenDoi.getThoiHanThanhToan()) : "";
			inputs.put(HDChuyenDoi.HD_THOIHANTHANHTOAN, thoiHanThanhToan);
			
		}
		return inputs;
	}

	
	@SuppressWarnings("unchecked")
	public List<TEMTemplateDuongSu> getListTemplateDuongSuByLoaiHopDongChiTiet(Integer loaiDuongSuID, Integer loaiHopDongChiTietID) {
		Session session;
		List<TEMTemplateDuongSu> result;
		session = HibernateUtil.getSession();
		result = null;
		try {
			Query query = session
					.createQuery("from TEMTemplateDuongSu where loaiDuongSuID=:loaiDuongSuID " +
							"and templateDuongSuID in (select templateDuongSuID from TEMLoaiHopDongChiTietTemplateDuongSu where loaiHopDongChiTietID=:loaiHopDongChiTietID)");
			query.setInteger("loaiHopDongChiTietID", loaiHopDongChiTietID);
			query.setInteger("loaiDuongSuID", loaiDuongSuID);
			result = (List<TEMTemplateDuongSu>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
