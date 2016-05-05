function capNhatTaiSanBDSKhongCoTSGanLienVoiDat() {
	var flag = false;
	var coGiaoDichMotPhan = 0;
	if ($("#CBGiaoDichMotPhanID").is(':checked')) { 
		coGiaoDichMotPhan = 1;
	}
	var coTaiSanGanLien = $('option:selected', "#ChiTietLoaiHopDongID").attr('coTaiSanGanLien');
	var loaiTaiSanGanLienID = "";
	var giayChungNhanGanLien = "";
	var ngayCapGiayChungNhanGanLien = "";
	var noiCapGiayChungNhanGanLien = "";
	var loaiCongTrinhGanLien = "";
	var tongDienTichSuDungGanLien = "";
	var dienTichXayDungGanLien = "";
	var ketCauNhaGanLien = "";
	var soTangNhaGanLien = "";
	if (coTaiSanGanLien == 1) {
		loaiTaiSanGanLienID = $("#LoaiTaiSanGanLienID").val();
		giayChungNhanGanLien = $("#GiayChungNhanGanLienID").val();
		ngayCapGiayChungNhanGanLien = $("#NgayCapGiayChungNhanGanLienID").val();
		noiCapGiayChungNhanGanLien = $("#NoiCapGiayChungNhanGanLienID").val();
		if (loaiTaiSanGanLienID == 1) {
			loaiCongTrinhGanLien = $("#LoaiNhaGanLienID").val();
			tongDienTichSuDungGanLien = $("#TongDienTichSuDungNhaGanLienID").val();
			dienTichXayDungGanLien = $("#DienTichXayDungNhaGanLienID").val();
			ketCauNhaGanLien = $("#KetCauNhaGanLienID").val();
			soTangNhaGanLien = $("#SoTangNhaGanLienID").val();
		} else {
			loaiCongTrinhGanLien = $("#LoaiCongTrinhGanLienID").val();
			dienTichXayDungGanLien = $("#DienTichXayDungCongTrinhGanLienID").val();
			ketCauNhaGanLien = $("#KetCauCongTrinhGanLienID").val();
			soTangNhaGanLien = $("#SoTangCongTrinhGanLienID").val();
		}
	}
	
	
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat",
		async : false,
		data : ({		
			loaiTaiSanID : $("#LoaiTaiSanID").val(),
			tenKhoaTaiSan : $("#KhoaTaiSanID").val(),
			tenPhieuTaiSan : $("#TenPhieuTaiSanID").val(),
			ghiChu : $("#GhiChuVeTaiSanID").val(),
			coGiaoDichMotPhan : coGiaoDichMotPhan,
			diaChiTaiSan : $("#DiaChiTaiSanID").val().trim(),
			thuaDatSo : $("#ThuaDatSoID").val().trim(),
			toBanDoSo : $("#ToBanDoSoID").val().trim(),
			dienTich : $("#DienTichID").val().trim(),
			hinhThucSuDungChung : $("#HinhThucSuDungChungID").val().trim(),
			hinhThucSuDungRieng : $("#HinhThucSuDungRiengID").val().trim(),
			mucDichSuDung : $("#MucDichSuDungID").val().trim(),
			thoiHanSuDung : $("#ThoiHanSuDungDatID").val().trim(),
			nguonGocSuDung : $("#NguonGocSuDungID").val().trim(),
			ngayCapGiayCNQuyenSuDungDat : $("#NgayCapGiayChungNhanQSDDID").val().trim(),
			noiCapGiayCNQuyenSuDungDat : $("#NoiCapGiayChungNhanQSDDID").val().trim(),
			vaoSoCapGiayCNQuyenSuDungDatSo : $("#VaoSoCapGiayChungNhanQSDDID").val().trim(),
			hanCheQuyenSuDungDat : $("#HanCheVeQuyenSuDungDatID").val().trim(),
			dienTichGiaoDichMotPhan : $("#DienTichGiaoDichMotPhanID").val().trim(),
			coTaiSanGanLien: coTaiSanGanLien,
			loaiTaiSanGanLienID : loaiTaiSanGanLienID,
			giayChungNhanGanLien : giayChungNhanGanLien,
			ngayCapGiayChungNhanGanLien : ngayCapGiayChungNhanGanLien,
			noiCapGiayChungNhanGanLien : noiCapGiayChungNhanGanLien,
			loaiCongTrinhGanLien : loaiCongTrinhGanLien,
			tongDienTichSuDungGanLien : tongDienTichSuDungGanLien,
			dienTichXayDungGanLien : dienTichXayDungGanLien,
			ketCauNhaGanLien : ketCauNhaGanLien,
			soTangNhaGanLien : soTangNhaGanLien,
		
		
		}),
		success : function(data) {
			if (data.trim() == "true") {
				flag = true;
			}
		}
	});
	return flag;
}

function capNhatTaiSanBeCa() {
	var flag = false;
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinTaiSanBeCa",
		async : false,
		data : ({		
			loaiTaiSanID : $("#LoaiTaiSanID").val().trim().trim(),
			tenKhoaTaiSan : $("#KhoaTaiSanID").val().trim(),
			tenPhieuTaiSan : $("#TenPhieuTaiSanID").val().trim(),
			ghiChu : $("#GhiChuVeTaiSanID").val().trim(),
			tenPhuongTien : $("#TenPhuongTienID").val().trim(),
			coQuanDangKy : $("#CoQuanDangKyID").val().trim(),
			namDong : $("#NamDongID").val().trim(),
			noiDong : $("#NoiDongID").val().trim(),
			chieuDaiLmax : $("#ChieuDaiLmaxID").val().trim(),
			chieuRongBmax : $("#ChieuRongBmaxID").val().trim(),
			chieuCaoD : $("#ChieuCaoDID").val().trim(),
			ltk : $("#LtkID").val().trim(),
			vatLieuVo : $("#VatLieuVoID").val().trim(),
			tongDungTich : $("#TongDungTichTDKID").val().trim(),
			kichThuocCabin : $("#KichThuocCabinID").val().trim(),
			kyHieuMay : $("#KyHieuMayID").val().trim(),
			soMay : $("#SoMayID").val().trim(),
			congSuat : $("#CongSuatID").val().trim(),
			duocPhepSuDung : $("#DuocPhepSuDungID").val().trim(),
			giayDKPhuongTienNgheCa : $("#GiayDKPhuongTienNgheCaID").val().trim(),
			ngayCapGiayDKPhuongTienNgheCa : $("#NgayCapGDKPhuongTienNgheCaID").val().trim(),
			noiCapGiayDKPhuongTienNgheCa : $("#NoiCapGDKPhuongTienNgheCaID").val().trim(),
			soDangKyCu : $("#SoDangKyCuID").val().trim(),
		}),
		success : function(data) {
			if (data.trim() == "true") {
				flag = true;
			}
		}
	});
	return flag;
}

function capNhatTaiSanCanHo() {
	var flag = false;
	var coGiaoDichMotPhan = 0;
	if ($("#CBGiaoDichMotPhanID").is(':checked')) { 
		coGiaoDichMotPhan = 1;
	}
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinTaiSanCanHo",
		async : false,
		data : ({		
			loaiTaiSanID : $("#LoaiTaiSanID").val().trim().trim(),
			tenKhoaTaiSan : $("#KhoaTaiSanID").val().trim(),
			tenPhieuTaiSan : $("#TenPhieuTaiSanID").val().trim(),
			ghiChu : $("#GhiChuVeTaiSanID").val().trim(),
			coGiaoDichMotPhan : coGiaoDichMotPhan,
			diaChiTaiSan : $("#DiaChiTaiSanID").val().trim(),
			thuaDatSo : $("#ThuaDatSoID").val().trim(),
			toBanDoSo : $("#ToBanDoSoID").val().trim(),
			moTa : $("#ToBanDoSoID").val().trim(),
			dienTich : $("#DienTichID").val().trim(),
			hinhThucSuDungChung : $("#HinhThucSuDungChungID").val().trim(),
			hinhThucSuDungRieng : $("#HinhThucSuDungRiengID").val().trim(),
			mucDichSuDung : $("#MucDichSuDungID").val().trim(),
			thoiHanSuDung : $("#ThoiHanSuDungDatID").val().trim(),
			nguonGocSuDung : $("#NguonGocSuDungID").val().trim(),
			tongDienTichSuDung : $("#TongDienTichSuDungID").val().trim(),
			dienTichXayDung : $("#DienTichDatXayDungID").val().trim(),
			ketCau : $("#KetCauID").val().trim(),
			ngayCapGiayCNQuyenSuDung : $("#NgayCapGiayChungNhanQSDDID").val().trim(),
			noiCapGiayCNQuyenSuDung : $("#NoiCapGiayChungNhanQSDDID").val().trim(),
			vaoSoCapGiayCNQuyenSuDungSo : $("#VaoSoCapGiayChungNhanQSDDID").val().trim(),
			canHoSo : $("#CanHoSoID").val().trim(),
			canHoThuocTang : $("#CanHoThuocTangID").val().trim(),
			soTangNhaChungCu : $("#SoTangNhaChungCuID").val().trim(),
			giayCNQuyenSoHuuTaiSanSo : $("#GiayChungNhanQSHTaiSanSoID").val().trim(),
			ngayCapGiayCNQuyenSoHuuTaiSan : $("#NgayCapGiayChungNhanQSHTSID").val().trim(),
			noiCapGiayCNQuyenSoHuuTaiSan : $("#NoiCapGiayChungNhanQSHTSID").val().trim(),
			nhungHanCheVeQuyenSuDungDat : $("#HanCheVeQuyenSuDungDatID").val().trim(),
			dienTichGiaoDichMotPhan : $("#DienTichGiaoDichMotPhanID").val().trim(),
		}),
		success : function(data) {
			if (data.trim() == "true") {
				flag = true;
			}
		}
	});
	return flag;
}

function capNhatTaiSanCongTrinhKienTruc() {
	var flag = false;
	var coGiaoDichMotPhan = 0;
	if ($("#CBGiaoDichMotPhanID").is(':checked')) { 
		coGiaoDichMotPhan = 1;
	}
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinTaiSanCongTrinhKienTruc",
		async : false,
		data : ({		
			loaiTaiSanID : $("#LoaiTaiSanID").val().trim().trim(),
			tenKhoaTaiSan : $("#KhoaTaiSanID").val().trim(),
			tenPhieuTaiSan : $("#TenPhieuTaiSanID").val().trim(),
			ghiChu : $("#GhiChuVeTaiSanID").val().trim(),
			coGiaoDichMotPhan: coGiaoDichMotPhan,
			diaChiTaiSan : $("#DiaChiTaiSanID").val().trim(),
			thuaDatSo : $("#ThuaDatSoID").val().trim(),
			toBanDoSo : $("#ToBanDoSoID").val().trim(),
			dienTich : $("#ToBanDoSoID").val().trim(),
			hinhThucSuDungRieng : $("#HinhThucSuDungChungID").val().trim(),
			hinhThucSuDungChung : $("#HinhThucSuDungChungID").val().trim(),
			mucDichSuDung : $("#MucDichSuDungID").val().trim(),
			thoiHanSuDung : $("#ThoiHanSuDungDatID").val().trim(),
			nguonGoc : $("#NguonGocSuDungID").val().trim(),
			tongDienTich : $("#TongDienTichSuDungID").val().trim(),
			dienTichXayDung : $("#DienTichDatXayDungID").val().trim(),
			ketCau : $("#KetCauID").val().trim(),
			ngayCapGiayCNQuyenSuDungDat : $("#NgayCapGiayChungNhanQSDDID").val().trim(),
			noiCapGiayCNQuyenSuDungDat : $("#NoiCapGiayChungNhanQSDDID").val().trim(),
			vaoSoCNQuyenSuDungDatSo : $("#VaoSoCapGiayChungNhanQSDDID").val().trim(),
			soTang : $("#SoTangID").val().trim(),
			loaiCongTrinh : $("#LoaiCongTrinhID").val().trim(),
			giayCNQuyenSoHuuTaiSanSo : $("#GiayChungNhanQSHTaiSanSoID").val().trim(),
			ngayCapGiayCNQuyenSoHuuTaiSan : $("#NgayCapGiayChungNhanQSHTSID").val().trim(),
			noiCapGiayCNQuyenSoHuuTaiSan : $("#NoiCapGiayChungNhanQSHTSID").val().trim(),
			hanCheQuyenSuDungDat : $("#HanCheVeQuyenSuDungDatID").val().trim(),
			dienTichGiaoDichMotPhan : $("#DienTichGiaoDichMotPhanID").val().trim(),
		}),
		success : function(data) {
			if (data.trim() == "true") {
				flag = true;
			}
		}
	});
	return flag;
}

function capNhatTaiSanCoPhieu() {
	var flag = false;
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinTaiSanCoPhieu",
		async : false,
		data : ({		
			loaiTaiSanID : $("#LoaiTaiSanID").val().trim().trim(),
			tenKhoaTaiSan : $("#KhoaTaiSanID").val().trim(),
			tenPhieuTaiSan : $("#TenPhieuTaiSanID").val().trim(),
			ghiChu : $("#GhiChuVeTaiSanID").val().trim(),
			ctyPhatHanhCoPhieu : $("#CongTyPhatHanhID").val().trim(),
			diaChiCongTy : $("#DiaChiCongTyID").val().trim(),
			menhGia : $("#MenhGiaID").val().trim(),
			tongMenhGia : $("#TongMenhGiaID").val().trim(),
			soDangKy : $("#SoDangKyID").val().trim(),
			ngayPhatHanh : $("#NgayPhatHanhID").val().trim(),
			loaiCoPhieu : $("#LoaiCoPhieuID").val().trim(),
			tenCoDong : $("#TenCoDongID").val().trim(),
			diaChiCoDong : $("#DiaChiCoDongID").val().trim(),
			loaiGiayToID : $("#LoaiGiayToTuyThanID").val().trim(),
			soGiayTo : $("#SoGiayToTuyThanID").val().trim(),
			ngayCapGiayTo : $("#NgayCapGiayToTuyThanID").val().trim(),
			noiCapGiayTo : $("#NoiCapGiayToTuyThanID").val().trim(),
		}),
		success : function(data) {
			if (data.trim() == "true") {
				flag = true;
			}
		}
	});
	return flag;
}


function capNhatTaiSanLaDongSanKhac() {
	var flag = false;
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinTaiSanLaDongSanKhac",
		async : false,
		data : ({		
			loaiTaiSanID : $("#LoaiTaiSanID").val().trim().trim(),
			tenKhoaTaiSan : $("#KhoaTaiSanID").val().trim(),
			ghiChu : $("#GhiChuVeTaiSanID").val().trim(),
			dacDiemTaiSan  : $("#DacDiemVeTaiSanID").val().trim(),
		}),
		success : function(data) {
			if (data.trim() == "true") {
				flag = true;
			}
		}
	});
	return flag;
}

function capNhatTaiSanMayBay() {
	var flag = false;
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinTaiSanMayBay",
		async : false,
		data : ({		
			loaiTaiSanID : $("#LoaiTaiSanID").val().trim().trim(),
			tenKhoaTaiSan : $("#KhoaTaiSanID").val().trim(),
			tenPhieuTaiSan : $("#TenPhieuTaiSanID").val().trim(),
			ghiChu : $("#GhiChuVeTaiSanID").val().trim(),
			tenPhuongTien : $("#TenPhuongTienID").val().trim(),
			dacDiemTaiSan : $("#DacDiemTaiSanID").val().trim(),
			ngayCapGiayDangKy : $("#NgayCapGiayDangKyID").val().trim(),
			noiCapGiayDangKy : $("#NoiCapGiayDangKyID").val().trim(),
		}),
		success : function(data) {
			if (data.trim() == "true") {
				flag = true;
			}
		}
	});
	return flag;
}


function capNhatTaiSanMayMoc() {
	var flag = false;
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinTaiSanMayMoc",
		async : false,
		data : ({		
			loaiTaiSanID : $("#LoaiTaiSanID").val().trim().trim(),
			tenKhoaTaiSan : $("#KhoaTaiSanID").val().trim(),
			tenPhieuTaiSan : $("#TenPhieuTaiSanID").val().trim(),
			ghiChu : $("#GhiChuVeTaiSanID").val().trim(),
			nhanHieu : $("#NhanHieuID").val().trim(),
			congSuat : $("#CongSuatID").val().trim(),
			noiCheTao : $("#NoiCheTaoID").val().trim(),
			dacDiemTaiSan : $("#DacDiemTaiSanID").val().trim(),
			coQuanDangKiem : $("#CoQuanDangKiemID").val().trim(),
		}),
		success : function(data) {
			if (data.trim() == "true") {
				flag = true;
			}
		}
	});
	return flag;
}


function capNhatTaiSanMoToXeMay() {
	var flag = false;
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinTaiSanMoToXeMay",
		async : false,
		data : ({		
			loaiTaiSanID : $("#LoaiTaiSanID").val().trim().trim(),
			tenKhoaTaiSan : $("#KhoaTaiSanID").val().trim(),
			tenPhieuTaiSan : $("#TenPhieuTaiSanID").val().trim(),
			ghiChu : $("#GhiChuVeTaiSanID").val().trim(),
			nhanHieu : $("#NhanHieuID").val().trim(),
			loaiXe : $("#LoaiXeID").val().trim(),
			mauSon : $("#MauSonID").val().trim(),
			namSanXuat : $("#NamSanXuatID").val().trim(),
			soKhung : $("#SoKhungID").val().trim(),
			soMay : $("#SoMayID").val().trim(),
			giayDangKySo : $("#GiayDangKySoID").val().trim(),
			ngayCapGiayDangKy : $("#NgayCapGiayDangKyID").val().trim(),
			noiCapGiayDangKy : $("#NoiCapGiayDangKyID").val().trim(),
		}),
		success : function(data) {
			if (data.trim() == "true") {
				flag = true;
			}
		}
	});
	return flag;
}


function capNhatTaiSanNha() {
	var flag = false;
	var loaiHopDongChiTietID = $("#ChiTietLoaiHopDongID").val();
	var coGiaoDichMotPhan = 0;
	var benSoHuuTaiSan = 1;
	if ($("#StepHiddenID").val() != 2) {
		benSoHuuTaiSan = 2;
	}
	if ($("#CBGiaoDichMotPhanID").is(':checked')) { 
		coGiaoDichMotPhan = 1;
	}
	var diaChiTaiSan = ""; var thuaDatSo = ""; var toBanDoSo = ""; var dienTichSuDung = ""; var dienTichSuDungChung = ""; var dienTichSuDungRieng = "";
	var mucDichSuDung = ""; var thoiHanSuDung = ""; var thoiHanThueDatTuNgay = ""; var thoiHanThueDatDenNgay = ""; var hopDongThueDat = ""; var nguonGocSuDung = "";
	var dienTichXayDung = ""; var dienTichSan = ""; var hanCheVeQuyenSuDungDat = ""; var ketCau = ""; var ngayCapGiayCNQSDD = ""; var noiCapGiayCNQSDD = "";
	var vaoSoCGCNSo = ""; var soTang = ""; var loaiCongTrinh = ""; var giayCNQuyenSoHuuTaiSanSo = ""; var ngayCapGiayCNQuyenSoHuuTaiSan = ""; var noiCapGiayCNQuyenSoHuuTaiSan = "";
	var trangThietBiGanLien = ""; var dienTichGiaoDichMotPhan = "";
	if (loaiHopDongChiTietID == 4) {
		//Hop dong chuyen doi nha O
		ngayCapGiayCNQSDD = $("#NgayCapGiayCNQSDDID").val().trim();
		noiCapGiayCNQSDD = $("#NoiCapGiayCNQSDDID").val().trim();
		loaiCongTrinh = $("#LoaiCongTrinhID").val().trim();
		diaChiTaiSan = $("#DiaChiTaiSanID").val().trim();
		dienTichSan = $("#DienTichSanID").val().trim();
		dienTichSuDung = $("#DienTichSuDungID").val().trim();
		dienTichSuDungChung = $("#DienTichSuDungChungID").val().trim();
		dienTichSuDungRieng = $("#DienTichSuDungRiengID").val().trim();
		nguonGocSuDung = $("#NguonGocSuDungID").val().trim();
		hopDongThueDat = $("#HopDongThueDatID").val().trim();
		thoiHanThueDatTuNgay = $("#ThoiHanThueDatTuNgayID").val().trim();
		thoiHanThueDatDenNgay = $("#ThoiHanThueDatDenNgayID").val().trim();
		trangThietBiGanLien = $("#TrangThietBiGanLienID").val().trim();
		trangThietBiChuYeuGanLien = $("#TrangThietBiChuYeuGanLienID").val().trim();
		hanCheVeQuyenSuDungDat = $("#HanCheVeQuyenSuDungDatID").val().trim();
	} else {
		diaChiTaiSan = $("#DiaChiTaiSanID").val().trim();
		thuaDatSo = $("#ThuaDatSoID").val().trim();
		toBanDoSo = $("#ToBanDoSoID").val().trim();
		dienTichSuDung = $("#DienTichSuDungID").val().trim();
		dienTichSuDungChung = $("#DienTichSuDungChungID").val().trim();
		dienTichSuDungRieng = $("#DienTichSuDungRiengID").val().trim();
		mucDichSuDung = $("#MucDichSuDungID").val().trim();
		thoiHanSuDung = $("#ThoiHanSuDungDatID").val().trim();
		nguonGocSuDung = $("#NguonGocSuDungID").val().trim();
		dienTichXayDung = $("#NguonGocSuDungID").val().trim();
		dienTichSan = $("#DienTichSanID").val().trim();
		ketCau = $("#KetCauID").val().trim();
		soTang = $("#SoTangID").val().trim();
		loaiCongTrinh = $("#LoaiCongTrinhID").val().trim();
		ngayCapGiayCNQSDD = $("#NgayCapGiayCNQSDDID").val().trim();
		noiCapGiayCNQSDD = $("#NoiCapGiayCNQSDDID").val().trim();
		vaoSoGiayCNQSDDSo = $("#vaoSoGiayCNQSDDSo").val().trim();
		giayCNQuyenSoHuuTaiSanSo = $("#GiayChungNhanQSHTaiSanSoID").val().trim();
		ngayCapGiayCNQuyenSoHuuTaiSan = $("#NgayCapGiayChungNhanQSHTSID").val().trim();
		noiCapGiayCNQuyenSoHuuTaiSan = $("#NoiCapGiayChungNhanQSHTSID").val().trim();
		hanCheVeQuyenSuDungDat = $("#HanCheVeQuyenSuDungDatID").val().trim();
		dienTichGiaoDichMotPhan = $("#DienTichGiaoDichMotPhanID").val().trim();
	}
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinTaiSanNha",
		async : false,
		data : ({		
			loaiTaiSanID : $("#LoaiTaiSanID").val().trim().trim(),
			tenKhoaTaiSan : $("#KhoaTaiSanID").val().trim(),
			tenPhieuTaiSan : $("#TenPhieuTaiSanID").val().trim(),
			ghiChu : $("#GhiChuVeTaiSanID").val().trim(),
			coGiaoDichMotPhan : coGiaoDichMotPhan,
			benSoHuuTaiSan : benSoHuuTaiSan,
			diaChiTaiSan : diaChiTaiSan,
			thuaDatSo : thuaDatSo,
			toBanDoSo : toBanDoSo,
			dienTichSuDung : dienTichSuDung,
			dienTichSuDungChung : dienTichSuDungChung,
			dienTichSuDungRieng : dienTichSuDungRieng,
			mucDichSuDung : mucDichSuDung,
			thoiHanSuDung : thoiHanSuDung,
			thoiHanThueDatTuNgay : thoiHanThueDatTuNgay,
			thoiHanThueDatDenNgay : thoiHanThueDatDenNgay,
			hopDongThueDat : hopDongThueDat,
			nguonGocSuDung : nguonGocSuDung,
			dienTichXayDung : dienTichXayDung,
			dienTichSan : dienTichSan,
			hanCheVeQuyenSuDungDat : hanCheVeQuyenSuDungDat,
			ketCau : ketCau,
			ngayCapGiayCNQSDD : ngayCapGiayCNQSDD,
			noiCapGiayCNQSDD : noiCapGiayCNQSDD,
			vaoSoCGCNSo : vaoSoCGCNSo,
			soTang : soTang,
			loaiCongTrinh : loaiCongTrinh,
			giayCNQuyenSoHuuTaiSanSo : giayCNQuyenSoHuuTaiSanSo,
			ngayCapGiayCNQuyenSoHuuTaiSan : ngayCapGiayCNQuyenSoHuuTaiSan,
			noiCapGiayCNQuyenSoHuuTaiSan : noiCapGiayCNQuyenSoHuuTaiSan,
			trangThietBiGanLien : trangThietBiGanLien,
			trangThietBiChuYeuGanLien : trangThietBiChuYeuGanLien,
			dienTichGiaoDichMotPhan : dienTichGiaoDichMotPhan,
		}),
		success : function(data) {
			if (data.trim() == "true") {
				flag = true;
			}
		}
	});
	return flag;
}

function capNhatTaiSanOTo() {
	var flag = false;
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinTaiSanOTo",
		async : false,
		data : ({		
			loaiTaiSanID : $("#LoaiTaiSanID").val().trim().trim(),
			tenKhoaTaiSan : $("#KhoaTaiSanID").val().trim(),
			tenPhieuTaiSan : $("#TenPhieuTaiSanID").val().trim(),
			ghiChu : $("#GhiChuVeTaiSanID").val().trim(),
			nhanHieu : $("#NhanHieuID").val().trim(),
			loaiXe : $("#LoaiXeID").val().trim(),
			mauSon : $("#MauSonID").val().trim(),
			soChoNgoi : $("#SoChoNgoiID").val().trim(),
			namSanXuat : $("#NamSanXuatID").val().trim(),
			soKhung : $("#SoKhungID").val().trim(),
			soMay : $("#SoMayID").val().trim(),
			taiTrong : $("#TaiTrongID").val().trim(),
			tuTrong : $("#TuTrongID").val().trim(),
			giayDangKySo : $("#GiayDangKySoID").val().trim(),
			ngayCapGiayDangKy : $("#NgayCapGiayDangKyID").val().trim(),
			noiCapGiayDangKy : $("#NoiCapGiayDangKyID").val().trim(),
		}),
		success : function(data) {
			if (data.trim() == "true") {
				flag = true;
			}
		}
	});
	return flag;
}


function capNhatTaiSanSoTietKiem() {
	var flag = false;
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinTaiSanSoTietKiem",
		async : false,
		data : ({		
			loaiTaiSanID : $("#LoaiTaiSanID").val().trim().trim(),
			tenKhoaTaiSan : $("#KhoaTaiSanID").val().trim(),
			tenPhieuTaiSan : $("#TenPhieuTaiSanID").val().trim(),
			ghiChu : $("#GhiChuVeTaiSanID").val().trim(),
			ngayGui : $("#NgayGuiID").val().trim(),
			soDuTienGui : $("#SoDuTienGuiID").val().trim(),
			kyHan : $("#KyHanID").val().trim(),
			laiXuat : $("#LaiSuatID").val().trim(),
			loaiTien : $("#LoaiTienID").val().trim(),
			nganHangCap : $("#NganHangCapID").val().trim(),
			hoTenChuSo : $("#HoTenChuSoID").val().trim(),
			diaChi : $("#DiaChiID").val().trim(),
			loaiGiayToID : $("#LoaiGiayToTuyThanID").val().trim(),
			soGiayTo : $("#SoGiayToTuyThanID").val().trim(),
			ngayCapGiayTo : $("#NgayCapGiayToTuyThanID").val().trim(),
			noiCapGiayTo : $("#NoiCapGiayToTuyThanID").val().trim(),
		}),
		success : function(data) {
			if (data.trim() == "true") {
				flag = true;
			}
		}
	});
	return flag;
}


function capNhatTaiSanTauBien() {
	var flag = false;
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinTaiSanTauBien",
		async : false,
		data : ({		
			loaiTaiSanID : $("#LoaiTaiSanID").val().trim().trim(),
			tenKhoaTaiSan : $("#KhoaTaiSanID").val().trim(),
			tenPhieuTaiSan : $("#TenPhieuTaiSanID").val().trim(),
			ghiChu : $("#GhiChuVeTaiSanID").val().trim(),
			tenTau : $("#TenPhuongTienID").val().trim(),
			loaiTau : $("#LoaiTauID").val().trim(),
			namDong : $("#NamDongID").val().trim(),
			noiDong : $("#NamDongID").val().trim(),
			chieuDaiLonNhat : $("#ChieuDaiLmaxID").val().trim(),
			chieuRongLonNhat : $("#ChieuRongBmaxID").val().trim(),
			chieuCaoMan : $("#ChieuCaoManID").val().trim(),
			mucNuocToiDa : $("#MucNuocToiDaID").val().trim(),
			dungTichToanThan : $("#DungTichToanThanID").val().trim(),
			dungTichThucDung : $("#DungTichThucDungID").val().trim(),
			trongTai : $("#TrongTaiID").val().trim(),
			congSuatMayChinh : $("#CongSuatMayChinhID").val().trim(),
			cangDangKy : $("#CangDangKyID").val().trim(),
			ngayDangKy : $("#NgayDangKyID").val().trim(),
			coQuanDangKiem : $("#CoQuanDangKiemID").val().trim(),
			giayChungNhanDangKyTauSo : $("#GCNDKTauBienSoID").val().trim(),
			noiCapGiayChungNhanDangKyTauSo : $("#NoiCapGCNDKTauBienID").val().trim(),
			ngayCapGiayChungNhanDangKyTauSo : $("#NgayCapGCNDKTauBienID").val().trim(),
		}),
		success : function(data) {
			if (data.trim() == "true") {
				flag = true;
			}
		}
	});
	return flag;
}


function capNhatTaiSanTauCa() {
	var flag = false;
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinTaiSanTauCa",
		async : false,
		data : ({		
			loaiTaiSanID : $("#LoaiTaiSanID").val().trim().trim(),
			tenKhoaTaiSan : $("#KhoaTaiSanID").val().trim(),
			tenPhieuTaiSan : $("#TenPhieuTaiSanID").val().trim(),
			ghiChu : $("#GhiChuVeTaiSanID").val().trim(),
			tenTau : $("#TenTauID").val().trim(),
			soHieu : $("#SoHieuID").val().trim(),
			coQuanDangKy : $("#CoQuanDangKyID").val().trim(),
			loaiTau : $("#LoaiTauID").val().trim(),
			congDung : $("#CongDungID").val().trim(),
			noiDong : $("#NoiDongID").val().trim(),
			namDong : $("#NamDongID").val().trim(),
			mauThietKe : $("#MauThietKeID").val().trim(),
			coQuanThietKe : $("#CoQuanThietKeID").val().trim(),
			chieuDaiLmax : $("#ChieuDaiLmaxID").val().trim(),
			ltk : $("#LtkID").val().trim(),
			chieuRongBmax : $("#ChieuRongBmaxID").val().trim(),
			btk : $("#BtkID").val().trim(),
			chieuCaoD : $("#ChieuCaoDmaxID").val().trim(),
			chieuChimD : $("#ChieuChimDID").val().trim(),
			manKhoF : $("#ManKhoFID").val().trim(),
			vatLieuVo : $("#VatLieuVoID").val().trim(),
			tongDungTich : $("#TongDungTichTDKID").val().trim(),
			sucChoToiDa : $("#SucChoToiDaID").val().trim(),
			tocDoTuDo : $("#TocDoTuDoID").val().trim(),
			kyHieuMay : $("#KyHieuMayID").val().trim(),
			soMay : $("#SoMayID").val().trim(),
			congSuat : $("#CongSuatID").val().trim(),
			noiCheTao : $("#NoiCheTaoID").val().trim(),
			cangDangKy : $("#CangDangKyID").val().trim(),
			coQuanDangKiem : $("#CoQuanDangKiemID").val().trim(),
			giayCNDangKyTauSo : $("#GCNDKTauSoID").val().trim(),
			ngayCapGiayCNDangKy : $("#NgayCapGCNDKTauID").val().trim(),
			noiCapGiayCNDangKy : $("#NoiCapGCNDKTauID").val().trim(),
			soDangKyCu : $("#SoDangKyCuID").val().trim(),
		}),
		success : function(data) {
			if (data.trim() == "true") {
				flag = true;
			}
		}
	});
	return flag;
}


function capNhatTaiSanTauKeoGheThuyen() {
	var flag = false;
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinTaiSanTauKeoGheThuyen",
		async : false,
		data : ({		
			loaiTaiSanID : $("#LoaiTaiSanID").val().trim().trim(),
			tenKhoaTaiSan : $("#KhoaTaiSanID").val().trim(),
			tenPhieuTaiSan : $("#TenPhieuTaiSanID").val().trim(),
			ghiChu : $("#GhiChuVeTaiSanID").val().trim(),
			tenTau : $("#TenTauID").val().trim(),
			soHieu : $("#SoHieuID").val().trim(),
			coQuanDangKy : $("#CoQuanDangKyID").val().trim(),
			loaiTau : $("#LoaiTauID").val().trim(),
			congDung : $("#LoaiTauID").val().trim(),
			noiDong : $("#NoiDongID").val().trim(),
			namDong : $("#NamDongID").val().trim(),
			mauThietKe : $("#MauThietKeID").val().trim(),
			coQuanThietKe : $("#CoQuanThietKeID").val().trim(),
			chieuDaiLmax : $("#ChieuDaiLmaxID").val().trim(),
			ltk : $("#LtkID").val().trim(),
			chieuRongBmax : $("#ChieuRongBmaxID").val().trim(),
			btk : $("#BtkID").val().trim(),
			chieuCaoD : $("#ChieuCaoDmaxID").val().trim(),
			chieuChimD : $("#ChieuCaoDmaxID").val().trim(),
			manKhoF : $("#ManKhoFID").val().trim(),
			vatLieuVo : $("#VatLieuVoID").val().trim(),
			tongDungTich : $("#TongDungTichTDKID").val().trim(),
			sucChoToiDa : $("#SucChoToiDaID").val().trim(),
			tocDoTuDo : $("#TocDoTuDoID").val().trim(),
			kyHieuMay : $("#KyHieuMayID").val().trim(),
			soMay : $("#SoMayID").val().trim(),
			congSuat : $("#CongSuatID").val().trim(),
			noiCheTao : $("#NoiCheTaoID").val().trim(),
			cangDangKy : $("#CangDangKyID").val().trim(),
			coQuanDangKiem : $("#CoQuanDangKiemID").val().trim(),
			giayCNDangKyTauSo : $("#GCNDKTauSoID").val().trim(),
			noiCapGiayCNDangKyTau : $("#NoiCapGCNDKTauID").val().trim(),
			ngayCapGiayCNDangKyTau : $("#NgayCapGCNDKTauID").val().trim(),
			soDangKyCu : $("#SoDangKyCuID").val().trim(),
		}),
		success : function(data) {
			if (data.trim() == "true") {
				flag = true;
			}
		}
	});
	return flag;
}


function capNhatTaiSanTraiPhieu() {
	var flag = false;
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinTaiSanTraiPhieu",
		async : false,
		data : ({		
			loaiTaiSanID : $("#LoaiTaiSanID").val().trim().trim(),
			tenKhoaTaiSan : $("#KhoaTaiSanID").val().trim(),
			tenPhieuTaiSan : $("#TenPhieuTaiSanID").val().trim(),
			ghiChu : $("#GhiChuVeTaiSanID").val().trim(),
			loaiTraiPhieu : $("#LoaiTraiPhieuID").val().trim(),
			ngayPhatHanh : $("#NgayPhatHanhID").val().trim(),
			noiPhatHanhTraiPhieu : $("#NoiPhatHanhID").val().trim(),
			menhGia : $("#MenhGiaID").val().trim(),
			kyHan : $("#KyHanID").val().trim(),
			laiSuat : $("#LaiSuatID").val().trim(),
			thoiHanThanhToan : $("#ThoiHanThanhToanID").val().trim(),
			hoTen : $("#HoTenID").val().trim(),
			diaChi : $("#DiaChiID").val().trim(),
			loaiGiayToID : $("#LoaiGiayToTuyThanID").val().trim(),
			soGiayTo : $("#SoGiayToTuyThanID").val().trim(),
			noiCapGiayTo : $("#NoiCapGiayToTuyThanID").val().trim(),
			ngayCapGiayTo : $("#NgayCapGiayToTuyThanID").val().trim(),
		}),
		success : function(data) {
			if (data.trim() == "true") {
				flag = true;
			}
		}
	});
	return flag;
}