function capNhatThongTinHopDong() {
	var loaiHopDongID = $("#LoaiHopDongID").val();
	$("#CheckValidateHopDongID").val("false");
	var laHopDongSoanSan = 0;
	if ($("#CBHopDongSoanSanID").is(':checked')) { 
		laHopDongSoanSan = 1;
	}
	switch (parseInt(loaiHopDongID)) {
	case 1:
		//1	Cầm cố
		if (laHopDongSoanSan == 0) {
			$("#FormHopDongCamCoID").submit();	
		} else {
			capNhatHopDongSoanSan();
		}
		break;
	case 2:
		//2	Chuyển đổi
		if (laHopDongSoanSan == 0) {
			$("#FormHopDongChuyenDoiID").submit();
		} else {
			capNhatHopDongSoanSan();
		}
		break;
	case 3:
		//3	Chuyển nhượng
		if (laHopDongSoanSan == 0) {
			$("#FormHopDongChuyenNhuongID").submit();
		} else {
			capNhatHopDongSoanSan();
		}
		break;
	case 4:
		//4	Di chúc
		if (laHopDongSoanSan == 0) {
			$("#FormHopDongDiChucID").submit();
		} else {
			capNhatHopDongSoanSan();
		}
		break;
	case 5:
		//5	Góp vốn
		if (laHopDongSoanSan == 0) {
			$("#FormHopDongGopVonID").submit();
		} else {
			capNhatHopDongSoanSan();
		}
		break;
	case 6:
		//6	Hủy bỏ
		if (laHopDongSoanSan == 0) {
			$("#FormHopDongHuyBoID").submit();
		} else {
			capNhatHopDongSoanSan();
		}
		break;
	case 7:
		//7	Mua bán
		if (laHopDongSoanSan == 0) {
			$("#FormHopDongMuaBanID").submit();
		} else {
			capNhatHopDongSoanSan();
		}
		break;
	case 8:
		//8	Tặng cho
		if (laHopDongSoanSan == 0) {
			$("#FormHopDongTangChoID").submit();
		} else {
			capNhatHopDongSoanSan();
		}
		break;
	case 9:
		//9	Thế chấp
		if (laHopDongSoanSan == 0) {
			$("#FormHopDongTheChapID").submit();
		} else {
			capNhatHopDongSoanSan();
		}
		break;
	case 10:
		//10	Thừa kế
		if (laHopDongSoanSan == 0) {
			$("#FormHopDongThuaKeID").submit();
		} else {
			capNhatHopDongSoanSan();
		}
		break;
	case 11:
		//11	Thuê
		if (laHopDongSoanSan == 0) {
			$("#FormHopDongThueID").submit();
		} else {
			capNhatHopDongSoanSan();
		}
		break;
	case 12:
		//12	Ủy quyền
		if (laHopDongSoanSan == 0) {
			$("#FormHopDongUyQuyenID").submit();
		} else {
			capNhatHopDongSoanSan();
		}
		break;
	case 13:
		//13	Khác
		break;
	default:
		break;
	}
}

function loadFormThongTinHopDong() {
	var loaiHopDongID = $("#LoaiHopDongID").val();
	switch (parseInt(loaiHopDongID)) {
	case 1:
		//1	Cầm cố
		getFormHopDongCamCo();
		break;
	case 2:
		//2	Chuyển đổi
		getFormHopDongChuyenDoi();
		break;
	case 3:
		//3	Chuyển nhượng
		getFormHopDongChuyenNhuong();
		break;
	case 4:
		//4	Di chúc
		getFormHopDongDiChuc();
		break;
	case 5:
		//5	Góp vốn
		getFormHopDongGopVon();
		break;
	case 6:
		//6	Hủy bỏ
		getFormHopDongHuyBo();
		break;
	case 7:
		//7	Mua bán
		getFormHopDongMuaBan();
		break;
	case 8:
		//8	Tặng cho
		getFormHopDongTangCho();
		break;
	case 9:
		//9	Thế chấp
		getFormHopDongTheChap();
		break;
	case 10:
		//10	Thừa kế
		getFormHopDongThuaKe();
		break;
	case 11:
		//11	Thuê
		getFormHopDongThue();
		break;
	case 12:
		//12	Ủy quyền
		getFormHopDongUyQuyen();
		break;
	case 13:
		//13	Khác
		break;
		
	default:
		break;
	}
	
}

function capNhatHopDongSoanSan() {
	var laHopDongSoanSan = 0;
	var coTaiSanTuongLai = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisantuonglai');
	if ($("#CBHopDongSoanSanID").is(':checked')) { 
		laHopDongSoanSan = 1;
	}
	var noiDungSoanSanEditor = FCKeditorAPI.GetInstance("noiDungSoanSanEditor");
	var noiDungSoanSan = noiDungSoanSanEditor.GetHTML().trim();
	if (noiDungSoanSan == "") {
		alert ($("#MsgError09").val());
	} else {
		$.ajax({
			type : "POST",
			url : "../ajaxhopdong/CapNhatThongTinHopDongSoanSan",
			async : false,
			data : ({		
				loaiHopDongID : $("#LoaiHopDongID").val(),
				loaiHopDongChiTietID : $("#ChiTietLoaiHopDongID").val(),
				phiGiaoDich : 0,
				laHopDongSoanSan : laHopDongSoanSan,
				coTaiSanTuongLai : coTaiSanTuongLai,
				//Thong tin soan san
				noiDungSoanSan : noiDungSoanSan,
			}),
			success : function(data) {
				if (data.trim() == "true") {
					$("#CheckValidateHopDongID").val(data.trim());
				}
			}
		});
	}
}

// Hop dong the chap
function getFormHopDongTheChap() {
	var coTaiSanTuongLai = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisantuonglai');
	var laHopDongSoanSan = 0;
	if ($("#CBHopDongSoanSanID").is(':checked')) { 
		laHopDongSoanSan = 1;
	}
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/GetFormHopDongTheChap",
		async : false,
		data : ({		
			coTaiSanTuongLai : coTaiSanTuongLai,
			laHopDongSoanSan : laHopDongSoanSan
		}),
		success : function(data) {
			$("#ThongTinChiTietHopDongID").html(data);
			if (laHopDongSoanSan == 0) {
				$("#NgayThamDinhTaiSanID" ).datepicker();
				$("#NgayCoHieuLucID" ).datepicker();
				$("#FormHopDongTheChapID").validate({
					rules : {
						soTienDamBao : { number : true },
						giaTheChap : { number : true },
						benDiDangKy : {
							valueNotEquals : "0"
						},
						benChiuPhi : {
							valueNotEquals : "0"
						},
					},
					messages : { },
					submitHandler : function(form) { 
						capNhatHopDongTheChap();
					}
				});
			} else {
				
			}
		}
	});
}

function capNhatHopDongTheChap() {
	var laHopDongSoanSan = 0;
	var coTaiSanTuongLai = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisantuonglai');
	if ($("#CBHopDongSoanSanID").is(':checked')) { 
		laHopDongSoanSan = 1;
	}
	var cacThoaThuanKhacEditor = FCKeditorAPI.GetInstance("thoaThuanKhacEditor");
	var cacThoaThuanKhac = cacThoaThuanKhacEditor.GetHTML().trim();
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinHopDongTheChap",
		async : false,
		data : ({		
			loaiHopDongID : $("#LoaiHopDongID").val(),
			loaiHopDongChiTietID : $("#ChiTietLoaiHopDongID").val(),
			benDangKyID : $("#BenDiDangKyID").val(),
			benChiuPhiID : $("#BenChiuPhiID").val(),
			phiGiaoDich : 0,
			laHopDongSoanSan : laHopDongSoanSan,
			coTaiSanTuongLai : coTaiSanTuongLai,
			//Thong tin the chap
			soTienDamBao : $("#SoTienDamBaoID").val().trim(),
			giaTheChap : $("#GiaTheChapID").val().trim(),
			ngayThamDinh : $("#NgayThamDinhTaiSanID").val().trim(),
			phuongThucXuLy : $("#PhuongThucXuLyTaiSanID").val().trim(),
			ngayCoHieuLuc : $("#NgayCoHieuLucID").val().trim(),
			cacThoaThuanKhac : cacThoaThuanKhac,
		}),
		success : function(data) {
			if (data.trim() == "true") {
				$("#CheckValidateHopDongID").val(data.trim());
			}
		}
	});
}

//Hop dong chuyen nhuong
function getFormHopDongChuyenNhuong() {
	var coTaiSanTuongLai = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisantuonglai');
	var laHopDongSoanSan = 0;
	if ($("#CBHopDongSoanSanID").is(':checked')) { 
		laHopDongSoanSan = 1;
	}
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/GetFormHopDongChuyenNhuong",
		async : false,
		data : ({		
			coTaiSanTuongLai : coTaiSanTuongLai,
			laHopDongSoanSan : laHopDongSoanSan
		}),
		success : function(data) {
			$("#ThongTinChiTietHopDongID").html(data);
			if (laHopDongSoanSan == 0) {
				//Add validate
				$("#NgayGiaoTaiSanID" ).datepicker();
				$("#NgayCoHieuLucID" ).datepicker();
				$("#FormHopDongChuyenNhuongID").validate({
					rules : {
						giaChuyenNhuong : { number : true },
						
					},
					messages : { },
					submitHandler : function(form) { 
						capNhatHopDongChuyenNhuong();
					}
				});
				//End add validate
			} else {
				
			}
		}
	});
}

function capNhatHopDongChuyenNhuong() {
	var laHopDongSoanSan = 0;
	var coTaiSanTuongLai = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisantuonglai');
	if ($("#CBHopDongSoanSanID").is(':checked')) { 
		laHopDongSoanSan = 1;
	}
	var giaChuyenNhuong = $("#GiaChuyenNhuongID").val();
	var phuongThucThanhToan = $("#PhuongThucThanhToanID").val();
	var ngayGiaoTaiSan = $("#NgayGiaoTaiSanID").val();
	var ngayCoHieuLuc = $("#NgayCoHieuLucID").val();
	var cacThoaThuanKhacEditor = FCKeditorAPI.GetInstance("thoaThuanKhacEditor");
	var cacThoaThuanKhac = cacThoaThuanKhacEditor.GetHTML().trim();
	
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinHopDongChuyenNhuong",
		async : false,
		data : ({		
			loaiHopDongID : $("#LoaiHopDongID").val(),
			loaiHopDongChiTietID : $("#ChiTietLoaiHopDongID").val(),
			benDangKyID : $("#BenDiDangKyID").val(),
			benChiuPhiID : $("#BenChiuPhiID").val(),
			phiGiaoDich : 0,
			laHopDongSoanSan : laHopDongSoanSan,
			coTaiSanTuongLai : coTaiSanTuongLai,
			//Thong tin hop dong chuyen nhuong
			giaChuyenNhuong : giaChuyenNhuong,
			phuongThucThanhToan : phuongThucThanhToan,
			ngayGiaoTaiSan : ngayGiaoTaiSan,
			cacThoaThuanKhac : cacThoaThuanKhac,
			ngayCoHieuLuc : ngayCoHieuLuc
		}),
		success : function(data) {
			if (data.trim() == "true") {
				$("#CheckValidateHopDongID").val(data.trim());
			}
		}
	});
}

// Hop dong tang cho
function getFormHopDongTangCho() {
	var coTaiSanTuongLai = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisantuonglai');
	var laHopDongSoanSan = 0;
	if ($("#CBHopDongSoanSanID").is(':checked')) { 
		laHopDongSoanSan = 1;
	}
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/GetFormHopDongTangCho",
		async : false,
		data : ({		
			coTaiSanTuongLai : coTaiSanTuongLai,
			laHopDongSoanSan : laHopDongSoanSan
		}),
		success : function(data) {
			$("#ThongTinChiTietHopDongID").html(data);
			if (laHopDongSoanSan == 0) {
				//Add validate
				$("#NgayGiaoTaiSanID" ).datepicker();
				$("#FormHopDongTangChoID").validate({
					rules : {
						giaTriQSDDVaTSGLVD : { number : true },
					},
					messages : { },
					submitHandler : function(form) { 
						capNhatHopDongTangCho();
					}
				});
				//End add validate
			} else {
				
			}
		}
	});
}

function capNhatHopDongTangCho() {
	var laHopDongSoanSan = 0;
	var coTaiSanTuongLai = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisantuonglai');
	if ($("#CBHopDongSoanSanID").is(':checked')) { 
		laHopDongSoanSan = 1;
	}
	var ngayGiaoTaiSan = $("#NgayGiaoTaiSanID").val().trim();
	var giaTriQuyenSDDatVaTSGanLienVoiDat = $("#GiaTriQSDDVaTSGLVDID").val().trim();
	var giayToVeQuyenSoHuuTaiSan = $("#GiayToQuyenSoHuuTaiSanID").val().trim(); 
	var ngayCoHieuLuc = $("#NgayCoHieuLucID").val().trim();
	var trangThietBiChuYeu = $("#TrangThietBiChuYeuID").val().trim();
	var giayToPhapLy = $("#GiayToPhapLyID").val().trim();
	var cacCamKetKhac = $("#CacCamKetKhacID").val().trim();
	var dieuKienTangCho = $("#DieuKienTangChoID").val().trim();
	var cacThoaThuanKhacEditor = FCKeditorAPI.GetInstance("thoaThuanKhacEditor");
	var cacThoaThuanKhac = cacThoaThuanKhacEditor.GetHTML().trim();
	
	
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinHopDongTangCho",
		async : false,
		data : ({		
			loaiHopDongID : $("#LoaiHopDongID").val(),
			loaiHopDongChiTietID : $("#ChiTietLoaiHopDongID").val(),
			benDangKyID : $("#BenDiDangKyID").val(),
			benChiuPhiID : $("#BenChiuPhiID").val(),
			phiGiaoDich : 0,
			laHopDongSoanSan : laHopDongSoanSan,
			coTaiSanTuongLai : coTaiSanTuongLai,
			//Thong tin hop dong tang cho
			ngayGiaoTaiSan : ngayGiaoTaiSan,
			giaTriQuyenSDDatVaTSGanLienVoiDat : giaTriQuyenSDDatVaTSGanLienVoiDat,
			giayToVeQuyenSoHuuTaiSan : giayToVeQuyenSoHuuTaiSan,
			cacThoaThuanKhac : cacThoaThuanKhac,
			ngayCoHieuLuc : ngayCoHieuLuc,
			trangThietBiChuYeu : trangThietBiChuYeu,
			giayToPhapLy :giayToPhapLy,
			cacCamKetKhac : cacCamKetKhac,
			dieuKienTangCho : dieuKienTangCho
		}),
		success : function(data) {
			if (data.trim() == "true") {
				$("#CheckValidateHopDongID").val(data.trim());
			}
		}
	});
}

//Hop dong mua ban 
function getFormHopDongMuaBan() {
	var coTaiSanTuongLai = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisantuonglai');
	var laHopDongSoanSan = 0;
	if ($("#CBHopDongSoanSanID").is(':checked')) { 
		laHopDongSoanSan = 1;
	}
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/GetFormHopDongMuaBan",
		async : false,
		data : ({		
			coTaiSanTuongLai : coTaiSanTuongLai,
			laHopDongSoanSan : laHopDongSoanSan
		}),
		success : function(data) {
			$("#ThongTinChiTietHopDongID").html(data);
			if (laHopDongSoanSan == 0) {
				//Add validate
				$("#NgayCoHieuLucID" ).datepicker();
				$("#NgayGiaoTaiSanID" ).datepicker();
				$("#FormHopDongMuaBanID").validate({
					rules : {
						giaMuaBan : { number : true },
					},
					messages : { },
					submitHandler : function(form) { 
						capNhatHopDongMuaBan();
					}
				});
				//End add validate
			} else {
				
			}
		}
	});
}

function capNhatHopDongMuaBan() {
	var laHopDongSoanSan = 0;
	var coTaiSanTuongLai = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisantuonglai');
	if ($("#CBHopDongSoanSanID").is(':checked')) { 
		laHopDongSoanSan = 1;
	}
	
	var giaMuaBan = $("#GiaMuaBanID").val().trim();
	var phuongThucThanhToan = $("#PhuongThucThanhToanID").val().trim();
	var ngayGiaoTaiSan = $("#NgayGiaoTaiSanID").val().trim();
	var ngayCoHieuLuc = $("#NgayCoHieuLucID").val().trim();
	var cacThoaThuanKhacEditor = FCKeditorAPI.GetInstance("thoaThuanKhacEditor");
	var cacThoaThuanKhac = cacThoaThuanKhacEditor.GetHTML().trim();
	
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinHopDongTangCho",
		async : false,
		data : ({		
			loaiHopDongID : $("#LoaiHopDongID").val(),
			loaiHopDongChiTietID : $("#ChiTietLoaiHopDongID").val(),
			benDangKyID : $("#BenDiDangKyID").val(),
			benChiuPhiID : $("#BenChiuPhiID").val(),
			phiGiaoDich : 0,
			laHopDongSoanSan : laHopDongSoanSan,
			coTaiSanTuongLai : coTaiSanTuongLai,
			//Thong tin hop dong mua ban
			giaMuaBan : giaMuaBan,
			phuongThucThanhToan : phuongThucThanhToan,
			ngayGiaoTaiSan : ngayGiaoTaiSan,
			ngayCoHieuLuc : ngayCoHieuLuc,
			cacThoaThuanKhac : cacThoaThuanKhac,
		}),
		success : function(data) {
			if (data.trim() == "true") {
				$("#CheckValidateHopDongID").val(data.trim());
			}
		}
	});
}

//Hop dong uy quyen
function getFormHopDongUyQuyen() {
	var coTaiSanTuongLai = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisantuonglai');
	var laHopDongSoanSan = 0;
	if ($("#CBHopDongSoanSanID").is(':checked')) { 
		laHopDongSoanSan = 1;
	}
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/GetFormHopDongUyQuyen",
		async : false,
		data : ({		
			coTaiSanTuongLai : coTaiSanTuongLai,
			laHopDongSoanSan : laHopDongSoanSan
		}),
		success : function(data) {
			$("#ThongTinChiTietHopDongID").html(data);
			if (laHopDongSoanSan == 0) {
				//Add validate
				$("#NgayKetThucUyQuyenID" ).datepicker();
				$("#UyQuyenTuNgayID" ).datepicker();
				$("#NgayCoHieuLucID" ).datepicker();
				$("#FormHopDongUyQuyenID").validate({
					rules : {
						thuLaoPhaiTra : { number : true },
					},
					messages : { },
					submitHandler : function(form) { 
						capNhatHopDongUyQuyen();
					}
				});
				//End add validate
			} else {
				
			}
		}
	});
}

function capNhatHopDongUyQuyen() {
	var laHopDongSoanSan = 0;
	var coTaiSanTuongLai = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisantuonglai');
	if ($("#CBHopDongSoanSanID").is(':checked')) { 
		laHopDongSoanSan = 1;
	}
	
	var phamViUyQuyen = $("#PhamViUyQuyenID").val().trim();
	var thoiHanUyQuyen = $("#ThoiHanUyQuyenID").val().trim();
	var thoiHanKetThucUyQuyen = $("#NgayKetThucUyQuyenID").val().trim();
	var uyQuyenTuNgay = $("#NgayKetThucUyQuyenID").val().trim();
	var thuLaoPhaiTra = $("#ThuLaoPhaiTraID").val().trim();
	var ngayCoHieuLuc = $("#NgayCoHieuLucID").val().trim();
	var cacThoaThuanKhacEditor = FCKeditorAPI.GetInstance("thoaThuanKhacEditor");
	var cacThoaThuanKhac = cacThoaThuanKhacEditor.GetHTML().trim();
	
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinHopDongUyQuyen",
		async : false,
		data : ({		
			loaiHopDongID : $("#LoaiHopDongID").val(),
			loaiHopDongChiTietID : $("#ChiTietLoaiHopDongID").val(),
			benDangKyID : $("#BenDiDangKyID").val(),
			benChiuPhiID : $("#BenChiuPhiID").val(),
			phiGiaoDich : 0,
			laHopDongSoanSan : laHopDongSoanSan,
			coTaiSanTuongLai : coTaiSanTuongLai,
			//Thong tin hop dong uy quyen
			phamViUyQuyen : phamViUyQuyen,
			thoiHanUyQuyen : thoiHanUyQuyen,
			thoiHanKetThucUyQuyen : thoiHanKetThucUyQuyen,
			uyQuyenTuNgay : uyQuyenTuNgay,
			thuLaoPhaiTra : thuLaoPhaiTra,
			ngayCoHieuLuc : ngayCoHieuLuc,
			cacThoaThuanKhac : cacThoaThuanKhac
		}),
		success : function(data) {
			if (data.trim() == "true") {
				$("#CheckValidateHopDongID").val(data.trim());
			}
		}
	});
}


//Hop dong thua ke
function getFormHopDongThuaKe() {
	var coTaiSanTuongLai = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisantuonglai');
	var laHopDongSoanSan = 0;
	if ($("#CBHopDongSoanSanID").is(':checked')) { 
		laHopDongSoanSan = 1;
	}
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/GetFormHopDongThuaKe",
		async : false,
		data : ({		
			coTaiSanTuongLai : coTaiSanTuongLai,
			laHopDongSoanSan : laHopDongSoanSan
		}),
		success : function(data) {
			$("#ThongTinChiTietHopDongID").html(data);
			if (laHopDongSoanSan == 0) { 
				//Add validate
				$("#NgayChetID" ).datepicker();
				$("#NgayCapGiayChungTuID" ).datepicker();
				$("#FormHopDongThuaKeID").validate({
					rules : {
						
					},
					messages : { },
					submitHandler : function(form) { 
						capNhatHopDongThuaKe();
					}
				});
				//End add validate
			} else {
				
			}
		}
	});
}

function capNhatHopDongThuaKe() {
	var laHopDongSoanSan = 0;
	var coTaiSanTuongLai = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisantuonglai');
	if ($("#CBHopDongSoanSanID").is(':checked')) { 
		laHopDongSoanSan = 1;
	}
	var noiDungTuChoiDiSan = $("#NoiDungID").val().trim();
	var giayToCanCuDeThuaKe = $("#GiayToCanCuDeThuaKeID").val().trim();
	var ngayChet = $("#NgayChetID").val().trim();
	var soGiayChungTu = $("#GiayChungTuSoID").val().trim();
	var ngayCapGiayChungTu = $("#NgayCapGiayChungTuID").val().trim();
	var noiCapGiayChungTu = $("#NoiCapGiayChungTuID").val().trim();
	
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinHopDongThuaKe",
		async : false,
		data : ({		
			loaiHopDongID : $("#LoaiHopDongID").val(),
			loaiHopDongChiTietID : $("#ChiTietLoaiHopDongID").val(),
			benDangKyID : $("#BenDiDangKyID").val(),
			benChiuPhiID : $("#BenChiuPhiID").val(),
			phiGiaoDich : 0,
			laHopDongSoanSan : laHopDongSoanSan,
			coTaiSanTuongLai : coTaiSanTuongLai,
			//Thong tin hop dong thua ke
			noiDungTuChoiDiSan : noiDungTuChoiDiSan,
			giayToCanCuDeThuaKe : giayToCanCuDeThuaKe,
			ngayChet : ngayChet,
			soGiayChungTu : soGiayChungTu,
			ngayCapGiayChungTu : ngayCapGiayChungTu,
			noiCapGiayChungTu : noiCapGiayChungTu,
		}),
		success : function(data) {
			if (data.trim() == "true") {
				$("#CheckValidateHopDongID").val(data.trim());
			}
		}
	});
}

//Hop dong thue
function getFormHopDongThue() {
	var coTaiSanTuongLai = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisantuonglai');
	var laHopDongSoanSan = 0;
	if ($("#CBHopDongSoanSanID").is(':checked')) { 
		laHopDongSoanSan = 1;
	}
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/GetFormHopDongThue",
		async : false,
		data : ({		
			coTaiSanTuongLai : coTaiSanTuongLai,
			laHopDongSoanSan : laHopDongSoanSan
		}),
		success : function(data) {
			$("#ThongTinChiTietHopDongID").html(data);
			if (laHopDongSoanSan == 0) { 
				//Add validate
				$("#NgayBatDauChoThueID" ).datepicker();
				$("#NgayKetThucChoThueID" ).datepicker();
				$("#NgayGiaoTaiSanID" ).datepicker();
				$("#NgayCoHieuLucID" ).datepicker();
				
				$("#FormHopDongThueID").validate({
					rules : {
						giaThue : { number : true },
					},
					messages : { },
					submitHandler : function(form) { 
						capNhatHopDongThue();
					}
				});
				//End add validate
			} else {
				
			}
		}
	});
}

function capNhatHopDongThue() {
	var laHopDongSoanSan = 0;
	var coTaiSanTuongLai = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisantuonglai');
	if ($("#CBHopDongSoanSanID").is(':checked')) { 
		laHopDongSoanSan = 1;
	}
	var thoiHanThue = $("#ThoiHanChoThueID").val().trim();
	var choThueTuNgay = $("#NgayBatDauChoThueID").val().trim();
	var ngayKetThucChoThue = $("#NgayKetThucChoThueID").val().trim();
	var mucDichThue = $("#MucDichThueID").val().trim();
	var giaThue = $("#GiaThueID").val().trim();
	var phuongThucThanhToan = $("#PhuongThucThanhToanID").val().trim();
	var ngayGiaoTaiSan = $("#NgayGiaoTaiSanID").val().trim();
	var ngayCoHieuLuc = $("#NgayCoHieuLucID").val().trim();
	var cacThoaThuanKhacEditor = FCKeditorAPI.GetInstance("thoaThuanKhacEditor");
	var cacThoaThuanKhac = cacThoaThuanKhacEditor.GetHTML().trim();
	
	
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinHopDongThue",
		async : false,
		data : ({		
			loaiHopDongID : $("#LoaiHopDongID").val(),
			loaiHopDongChiTietID : $("#ChiTietLoaiHopDongID").val(),
			benDangKyID : $("#BenDiDangKyID").val(),
			benChiuPhiID : $("#BenChiuPhiID").val(),
			phiGiaoDich : 0,
			laHopDongSoanSan : laHopDongSoanSan,
			coTaiSanTuongLai : coTaiSanTuongLai,
			//Thong tin hop dong thue
			thoiHanThue : thoiHanThue,
			choThueTuNgay : choThueTuNgay,
			ngayKetThucChoThue : ngayKetThucChoThue,
			mucDichThue : mucDichThue,
			giaThue : giaThue,
			phuongThucThanhToan : phuongThucThanhToan,
			ngayGiaoTaiSan : ngayGiaoTaiSan,
			cacThoaThuanKhac : cacThoaThuanKhac,
			ngayCoHieuLuc : ngayCoHieuLuc
			
		}),
		success : function(data) {
			if (data.trim() == "true") {
				$("#CheckValidateHopDongID").val(data.trim());
			}
		}
	});
}


//Hop dong gop von
function getFormHopDongGopVon() {
	var coTaiSanTuongLai = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisantuonglai');
	var laHopDongSoanSan = 0;
	if ($("#CBHopDongSoanSanID").is(':checked')) { 
		laHopDongSoanSan = 1;
	}
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/GetFormHopDongGopVon",
		async : false,
		data : ({		
			coTaiSanTuongLai : coTaiSanTuongLai,
			laHopDongSoanSan : laHopDongSoanSan
		}),
		success : function(data) {
			$("#ThongTinChiTietHopDongID").html(data);
			if (laHopDongSoanSan == 0) {
				//Add validate
				$("#NgayThamDinhTaiSanID" ).datepicker();
				$("#NgayBatDauGopVonID" ).datepicker();
				$("#NgayKetThucGopVonID" ).datepicker();
				$("#NgayCoHieuLucID" ).datepicker();
							
				$("#FormHopDongGopVonID").validate({
					rules : {
						giaGopVon : { number : true },
					},
					messages : { },
					submitHandler : function(form) { 
						capNhatHopDongGopVon();
					}
				});
				//End add validate
			} else {
				
			}
		}
	});
}

function capNhatHopDongGopVon() {
	var laHopDongSoanSan = 0;
	var coTaiSanTuongLai = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisantuonglai');
	if ($("#CBHopDongSoanSanID").is(':checked')) { 
		laHopDongSoanSan = 1;
	}
	var giaGopVon = $("#GiaGopVonID").val().trim();
	var ngayThamDinhTaiSan = $("#NgayThamDinhTaiSanID").val().trim();
	var mucDichGopVon = $("#MucDichGopVonID").val().trim();
	var thoiHanGopVon = $("#ThoiHanGopVonID").val().trim();
	var thoiHanKetThucGopVon = $("#NgayKetThucGopVonID").val().trim();
	var gopVonTuNgay = $("#NgayBatDauGopVonID").val().trim();
	var loiNhuanGopVon = $("#LoiNhuanGopVonID").val().trim();
	var phuongThucThanhToan = $("#LoiNhuanGopVonID").val().trim();
	var ngayCoHieuLuc = $("#NgayCoHieuLucID").val().trim();
	var cacThoaThuanKhacEditor = FCKeditorAPI.GetInstance("thoaThuanKhacEditor");
	var cacThoaThuanKhac = cacThoaThuanKhacEditor.GetHTML().trim();
	
	
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinHopDongGopVon",
		async : false,
		data : ({		
			loaiHopDongID : $("#LoaiHopDongID").val(),
			loaiHopDongChiTietID : $("#ChiTietLoaiHopDongID").val(),
			benDangKyID : $("#BenDiDangKyID").val(),
			benChiuPhiID : $("#BenChiuPhiID").val(),
			phiGiaoDich : 0,
			laHopDongSoanSan : laHopDongSoanSan,
			coTaiSanTuongLai : coTaiSanTuongLai,
			//Thong tin hop dong gop von
			giaGopVon : giaGopVon,
			ngayThamDinhTaiSan : ngayThamDinhTaiSan,
			mucDichGopVon : mucDichGopVon,
			thoiHanGopVon : thoiHanGopVon,
			thoiHanKetThucGopVon : thoiHanKetThucGopVon,
			gopVonTuNgay : gopVonTuNgay,
			loiNhuanGopVon : loiNhuanGopVon,
			phuongThucThanhToan : phuongThucThanhToan,
			cacThoaThuanKhac : cacThoaThuanKhac,
			ngayCoHieuLuc : ngayCoHieuLuc
		}),
		success : function(data) {
			if (data.trim() == "true") {
				$("#CheckValidateHopDongID").val(data.trim());
			}
		}
	});
}


//Hop dong cam co
function getFormHopDongCamCo() {
	var coTaiSanTuongLai = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisantuonglai');
	var laHopDongSoanSan = 0;
	if ($("#CBHopDongSoanSanID").is(':checked')) { 
		laHopDongSoanSan = 1;
	}
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/GetFormHopDongCamCo",
		async : false,
		data : ({		
			coTaiSanTuongLai : coTaiSanTuongLai,
			laHopDongSoanSan : laHopDongSoanSan
		}),
		success : function(data) {
			$("#ThongTinChiTietHopDongID").html(data);
			if (laHopDongSoanSan == 0) {
				//Add validate
				$("#NgayThamDinhTaiSanID" ).datepicker();
				$("#NgayCoHieuLucID" ).datepicker();
				$("#FormHopDongCamCoID").validate({
					rules : {
						soTienDamBao : { number : true },
						giaTriTaiSanCamCo : { number : true },
					},
					messages : { },
					submitHandler : function(form) { 
						capNhatHopDongCamCo();
					}
				});
				//End add validate
			} else {
				
			}
		}
	});
}

function capNhatHopDongCamCo() {
	var laHopDongSoanSan = 0;
	var coTaiSanTuongLai = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisantuonglai');
	if ($("#CBHopDongSoanSanID").is(':checked')) { 
		laHopDongSoanSan = 1;
	}
	var soTienDamBao = $("#SoTienDamBaoID").val().trim();
	var giaTriTaiSanCamCo = $("#GiaTriTaiSanCamCoID").val().trim();
	var ngayThamDinhTaiSan = $("#NgayThamDinhTaiSanID").val().trim();
	var phuongThucXuLyTaiSan = $("#PhuongThucXuLyTaiSanID").val().trim();
	var ngayCoHieuLuc = $("#NgayCoHieuLucID").val().trim();
	var cacThoaThuanKhacEditor = FCKeditorAPI.GetInstance("thoaThuanKhacEditor");
	var cacThoaThuanKhac = cacThoaThuanKhacEditor.GetHTML().trim();
	
	
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinHopDongCamCo",
		async : false,
		data : ({		
			loaiHopDongID : $("#LoaiHopDongID").val(),
			loaiHopDongChiTietID : $("#ChiTietLoaiHopDongID").val(),
			benDangKyID : $("#BenDiDangKyID").val(),
			benChiuPhiID : $("#BenChiuPhiID").val(),
			phiGiaoDich : 0,
			laHopDongSoanSan : laHopDongSoanSan,
			coTaiSanTuongLai : coTaiSanTuongLai,
			//Thong tin hop dong cam co
			soTienDamBao : soTienDamBao,
			giaTriTaiSanCamCo : giaTriTaiSanCamCo,
			ngayThamDinhTaiSan : ngayThamDinhTaiSan,
			phuongThucXuLyTaiSan : phuongThucXuLyTaiSan,
			cacThoaThuanKhac : cacThoaThuanKhac,
			ngayCoHieuLuc : ngayCoHieuLuc
		}),
		success : function(data) {
			if (data.trim() == "true") {
				$("#CheckValidateHopDongID").val(data.trim());
			}
		}
	});
}


//Hop dong di chuc
function getFormHopDongDiChuc() {
	var coTaiSanTuongLai = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisantuonglai');
	var laHopDongSoanSan = 0;
	if ($("#CBHopDongSoanSanID").is(':checked')) { 
		laHopDongSoanSan = 1;
	}
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/GetFormHopDongDiChuc",
		async : false,
		data : ({		
			coTaiSanTuongLai : coTaiSanTuongLai,
			laHopDongSoanSan : laHopDongSoanSan
		}),
		success : function(data) {
			$("#ThongTinChiTietHopDongID").html(data);
			if (laHopDongSoanSan == 0) {
				//Add validate
				$("#FormHopDongDiChucID").validate({
					rules : {
					},
					messages : { },
					submitHandler : function(form) { 
						capNhatHopDongDiChuc();
					}
				});
				//End add validate
			} else {
				
			}
		}
	});
}

function capNhatHopDongDiChuc() {
	var laHopDongSoanSan = 0;
	var coTaiSanTuongLai = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisantuonglai');
	if ($("#CBHopDongSoanSanID").is(':checked')) { 
		laHopDongSoanSan = 1;
	}
	var noiDungDiChuc = $("#NoiDungDiChucID").val().trim();
	
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinHopDongDiChuc",
		async : false,
		data : ({		
			loaiHopDongID : $("#LoaiHopDongID").val(),
			loaiHopDongChiTietID : $("#ChiTietLoaiHopDongID").val(),
			benDangKyID : $("#BenDiDangKyID").val(),
			benChiuPhiID : $("#BenChiuPhiID").val(),
			phiGiaoDich : 0,
			laHopDongSoanSan : laHopDongSoanSan,
			coTaiSanTuongLai : coTaiSanTuongLai,
			//Thong tin hop dong di chuc
			noiDungDiChuc : noiDungDiChuc,
		}),
		success : function(data) {
			if (data.trim() == "true") {
				$("#CheckValidateHopDongID").val(data.trim());
			}
		}
	});
}


//Hop dong chuyen doi
function getFormHopDongChuyenDoi() {
	var coTaiSanTuongLai = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisantuonglai');
	var laHopDongSoanSan = 0;
	if ($("#CBHopDongSoanSanID").is(':checked')) { 
		laHopDongSoanSan = 1;
	}
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/GetFormHopDongChuyenDoi",
		async : false,
		data : ({		
			coTaiSanTuongLai : coTaiSanTuongLai,
			laHopDongSoanSan : laHopDongSoanSan,
		}),
		success : function(data) {
			$("#ThongTinChiTietHopDongID").html(data);
			if (laHopDongSoanSan == 0) {
				$("#NgayGiaoTaiSanChoBenAID" ).datepicker();
				$("#NgayGiaoTaiSanChoBenBID" ).datepicker();
				$("#ThoiHanThanhToanID" ).datepicker();
				$("#NgayGiaoTaiSanID" ).datepicker();
				$("#NgayCoHieuLucID" ).datepicker();
				
				$("#FormHopDongChuyenDoiID").validate({
					rules : {
						soTienChenhLech : { number : true },
						phiBenAPhaiTra : { number : true },
						phiBenBPhaiTra : { number : true },
						benTraChenhLech : {
							valueNotEquals : "0"
						},
						benThanhToan : {
							valueNotEquals : "0"
						},
					},
					messages : { },
					submitHandler : function(form) { 
						capNhatHopDongChuyenDoi();
					}
				});
				//End add validate
			} else {
				
			}
		}
	});
}

function capNhatHopDongChuyenDoi() {
	var laHopDongSoanSan = 0;
	var coTaiSanTuongLai = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisantuonglai');
	if ($("#CBHopDongSoanSanID").is(':checked')) { 
		laHopDongSoanSan = 1;
	}
	var ngayGiaoTaiSanChoBenA = $("#NgayGiaoTaiSanChoBenAID").val().trim();
	var ngayGiaoTaiSanChoBenB = $("#NgayGiaoTaiSanChoBenBID").val().trim();
	var soTienChenhLech = $("#SoTienChenhLechID").val().trim();
	var benTraChenhLech = $("#BenTraChenhLechID").val().trim();
	var phuongThucThanhToan = $("#PhuongThucThanhToanID").val().trim();
	var benThanhToan = $("#BenThanhToanID").val().trim();
	var thoiHanThanhToan = $("#ThoiHanThanhToanID").val().trim();
	var cacCamKetKhac = $("#CacCamKetKhacID").val().trim();
	var phiBenAPhaiTra = $("#PhiBenAPhaiTraID").val().trim();
	var phiBenBPhaiTra = $("#PhiBenBPhaiTraID").val().trim();
	var ngayGiaoTaiSan = $("#NgayGiaoTaiSanID").val().trim();
	var ngayCoHieuLuc = $("#NgayCoHieuLucID").val().trim();
	
	
	var cacThoaThuanKhacEditor = FCKeditorAPI.GetInstance("thoaThuanKhacEditor");
	var cacThoaThuanKhac = cacThoaThuanKhacEditor.GetHTML().trim();
	
	
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinHopDongChuyenDoi",
		async : false,
		data : ({		
			loaiHopDongID : $("#LoaiHopDongID").val(),
			loaiHopDongChiTietID : $("#ChiTietLoaiHopDongID").val(),
			phiGiaoDich : 0,
			laHopDongSoanSan : laHopDongSoanSan,
			coTaiSanTuongLai : coTaiSanTuongLai,
			//Thong tin hop dong chuyen doi
			ngayGiaoTaiSanChoBenA : ngayGiaoTaiSanChoBenA,
			ngayGiaoTaiSanChoBenB : ngayGiaoTaiSanChoBenB,
			soTienChenhLech : soTienChenhLech,
			benTraChenhLech : benTraChenhLech,
			phuongThucThanhToan : phuongThucThanhToan,
			benThanhToan : benThanhToan,
			thoiHanThanhToan : thoiHanThanhToan,
			cacCamKetKhac : cacCamKetKhac,
			phiBenAPhaiTra : phiBenAPhaiTra,
			phiBenBPhaiTra : phiBenBPhaiTra,
			ngayGiaoTaiSan : ngayGiaoTaiSan,
			ngayCoHieuLuc : ngayCoHieuLuc,
			cacThoaThuanKhac : cacThoaThuanKhac
		}),
		success : function(data) {
			if (data.trim() == "true") {
				$("#CheckValidateHopDongID").val(data.trim());
			}
		}
	});
}


//Hop dong huy bo
function getFormHopDongHuyBo() {
	var coTaiSanTuongLai = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisantuonglai');
	var laHopDongSoanSan = 0;
	if ($("#CBHopDongSoanSanID").is(':checked')) { 
		laHopDongSoanSan = 1;
	}
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/GetFormHopDongHuyBo",
		async : false,
		data : ({		
			coTaiSanTuongLai : coTaiSanTuongLai,
			laHopDongSoanSan : laHopDongSoanSan
		}),
		success : function(data) {
			$("#ThongTinChiTietHopDongID").html(data);
			if (laHopDongSoanSan == 0) {
				//Add validate
				$("#NgayGiaoLaiTaiSanID" ).datepicker();
				$("#NgayGiaoLaiTienID" ).datepicker();
				
				$("#FormHopDongHuyBoID").validate({
					rules : {
					},
					messages : { },
					submitHandler : function(form) { 
						capNhatHopDongHuyBo();
					}
				});
				//End add validate
			} else {
				
			}
		}
	});
}

function capNhatHopDongHuyBo() {
	var laHopDongSoanSan = 0;
	var coTaiSanTuongLai = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisantuonglai');
	if ($("#CBHopDongSoanSanID").is(':checked')) { 
		laHopDongSoanSan = 1;
	}
	var soHopDongHuy = $("#SoHopDongHuyID").val().trim();
	var lyDoHuy = $("#LyDoHuyID").val().trim();
	var phuongThucGiaoLaiTaiSan = $("#PhuongThucGiaoLaiTaiSanID").val().trim();
	var ngayGiaoLaiTaiSan = $("#NgayGiaoLaiTaiSanID").val().trim();
	var phuongThucGiaoLaiTien = $("#PhuongThucGiaoLaiTienID").val().trim();
	var ngayGiaoLaiTien = $("#NgayGiaoLaiTienID").val().trim();
	var boiThuongThietHai = $("#BoiThuongThietHaiID").val().trim();
	var thoaThuanKhac = $("#ThoaThuanKhacID").val().trim();
	var camKetKhac = $("#CamKetKhacID").val().trim();
	
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinHopDongHuyBo",
		async : false,
		data : ({		
			loaiHopDongID : $("#LoaiHopDongID").val(),
			loaiHopDongChiTietID : $("#ChiTietLoaiHopDongID").val(),
			benDangKyID : $("#BenDiDangKyID").val(),
			benChiuPhiID : $("#BenChiuPhiID").val(),
			phiGiaoDich : 0,
			laHopDongSoanSan : laHopDongSoanSan,
			coTaiSanTuongLai : coTaiSanTuongLai,
			//Thong tin hop dong huy bo
			soHopDongHuy : soHopDongHuy,
			lyDoHuy : lyDoHuy,
			phuongThucGiaoLaiTaiSan : phuongThucGiaoLaiTaiSan,
			ngayGiaoLaiTaiSan : ngayGiaoLaiTaiSan,
			phuongThucGiaoLaiTien : phuongThucGiaoLaiTien,
			ngayGiaoLaiTien : ngayGiaoLaiTien,
			boiThuongThietHai : boiThuongThietHai,
			thoaThuanKhac : thoaThuanKhac,
			camKetKhac : camKetKhac,
		}),
		success : function(data) {
			if (data.trim() == "true") {
				$("#CheckValidateHopDongID").val(data.trim());
			}
		}
	});
}