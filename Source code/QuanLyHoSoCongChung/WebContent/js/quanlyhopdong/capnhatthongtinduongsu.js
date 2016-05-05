function themThongTinDuongSu(benSoHuu) {
	var result = false;
	var coUyQuyen = 0;
	if ($("#CBNguoiDiCongChungLaUyQuyenID").is(':checked')) { 
		coUyQuyen = 1;
	}
	var hoTen = "";
	var ngaySinh = "";
	var namSinh = "";
	var loaiGiayToID = "";
	var soGiayTo = "";
	var ngayCapGiayTo = "";
	var noiCapGiayTo = "";
	var tinhThuongTruID = "";
	var huyenThuongTruID = "";
	var xaThuongTruID = "";
	var soNhaThuongTru = "";
	var diaChiLienHe = "";
	var tenToChuc = "";
	var giayDangKyKinhDoanhSo = "";
	var ngayCapGiayDangKyKinhDoanh = "";
	var noiCapGiayDangKyKinhDoanh = "";
	var soDienThoai = "";
	var chucVuNguoiDaiDien = "";
	var giayUyQuyenSo = "";
	var ngayCapGiayUyQuyen = "";
	var loaiDuongSuID = "";
	if ($("#LoaiDuongSuID").val() == 1) {
		hoTen = $("#TenDuongSuID").val().trim();
		if ($("#CBNamSinhCaNhanID").is(':checked')) { 
			namSinh = $("#NgaySinhID").val().trim();
		} else {
			ngaySinh = $("#NgaySinhID").val().trim();	
		}
		loaiGiayToID = $("#LoaiGiayToCaNhanID").val().trim();
		soGiayTo = $("#SoGiayToCaNhanID").val().trim();
		ngayCapGiayTo = $("#NgayCapCaNhanID").val().trim();
		noiCapGiayTo = $("#NoiCapGiayToCaNhanID").val().trim();
		tinhThuongTruID = $("#TinhThanhCaNhanID").val().trim();
		huyenThuongTruID = $("#QuanHuyenCaNhanID").val().trim();
		xaThuongTruID = $("#PhuongXaCaNhanID").val().trim();
		soNhaThuongTru = $("#SoNhaDuongPhoCaNhanID").val().trim();
		diaChiLienHe = $("#DiaChiLienHeCaNhanID").val().trim();
		loaiDuongSuID = 1;
	} else {
		tenToChuc = $("#TenToChucID").val().trim();
		tinhThuongTruID = $("#TinhThanhToChucID").val().trim();
		huyenThuongTruID = $("#QuanHuyenToChucID").val().trim();
		xaThuongTruID = $("#PhuongXaToChucID").val().trim();
		soNhaThuongTru = $("#SoNhaDuongPhoToChucID").val().trim();
		giayDangKyKinhDoanhSo = $("#GiayPhepDKKDID").val().trim();
		ngayCapGiayDangKyKinhDoanh = $("#NgayGiayDKKDID").val().trim();
		noiCapGiayDangKyKinhDoanh = $("#NoiCapGiayDKKD").val().trim();
		soDienThoai = $("#SoDienThoaiToChucID").val().trim();
		hoTen = $("#NguoiDaiDienToChucID").val().trim();
		if ($("#CBNamSinhToChucID").is(':checked')) { 
			namSinh = $("#NgaySinhNguoiDaiDienToChucID").val().trim();
		} else {
			ngaySinh = $("#NgaySinhNguoiDaiDienToChucID").val().trim();
		}
		loaiGiayToID = $("#LoaiGiayToNguoiDaiDienToChucID").val().trim();
		soGiayTo = $("#SoGiayToNguoiDaiDienToChucID").val().trim();
		chucVuNguoiDaiDien = $("#ChucVuNguoiDaiDienToChucID").val().trim();
		giayUyQuyenSo = $("#GiayUyQuyenID").val().trim();
		ngayCapGiayUyQuyen = $("#NgayCapGiayUyQuyenID").val().trim();
		loaiDuongSuID = 2;
	}
	var ngaySinhNguoiUyQuyen = "";
	var namSinhNguoiUyQuyen = "";
	if ($("#CBNamSinhNguoiUyQuyenID").is(':checked')) { 
		namSinhNguoiUyQuyen = $("#NgaySinhNguoiUyQuyenID").val().trim();
	} else {
		ngaySinhNguoiUyQuyen = $("#NgaySinhNguoiUyQuyenID").val().trim();
	}
	
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/ThemThongTinDuongSu",
		async : false,
		data : ({		
			hoTenNguoiUyQuyen : $("#TenNguoiUyQuyenID").val().trim(),
			ngaySinhNguoiUyQuyen : ngaySinhNguoiUyQuyen,
			namSinhNguoiUyQuyen : namSinhNguoiUyQuyen,
			loaiGiayToNguoiUyQuyenID : $("#LoaiGiayToNguoiUyQuyenID").val().trim(),
			soGiayToNguoiUyQuyen : $("#SoGiayToNguoiUyQuyenID").val().trim(),
			ngayCapGiayToNguoiUyQuyen : $("#NgayCapNguoiUyQuyenID").val().trim(),
			noiCapGiayToNguoiUyQuyen : $("#NoiCapGiayToNguoiUyQuyenID").val().trim(),
			tinhThuongTruNguoiUyQuyenID : $("#TinhThanhNguoiUyQuyenID").val().trim(),
			huyenThuongTruNguoiUyQuyenID : $("#QuanHuyenNguoiUyQuyenID").val().trim(),
			xaThuongTruNguoiUyQuyenID : $("#PhuongXaNguoiUyQuyenID").val().trim(),
			soNhaThuongTruNguoiUyQuyen : $("#SoNhaDuongPhoNguoiUyQuyenID").val().trim(),
			diaChiLienHeNguoiUyQuyen : $("#DiaChiLienHeNguoiUyQuyenID").val().trim(),
			coUyQuyen : coUyQuyen,
			hoTen : hoTen,
			ngaySinh : ngaySinh,
			namSinh : namSinh,
			loaiGiayToID : loaiGiayToID,
			soGiayTo : soGiayTo,
			ngayCapGiayTo : ngayCapGiayTo,
			noiCapGiayTo : noiCapGiayTo,
			tinhThuongTruID : tinhThuongTruID,
			huyenThuongTruID : huyenThuongTruID,
			xaThuongTruID : xaThuongTruID,
			soNhaThuongTru : soNhaThuongTru,
			diaChiLienHe : diaChiLienHe,
			tenToChuc : tenToChuc,
			giayDangKyKinhDoanhSo : giayDangKyKinhDoanhSo,
			ngayCapGiayDangKyKinhDoanh : ngayCapGiayDangKyKinhDoanh,
			noiCapGiayDangKyKinhDoanh : noiCapGiayDangKyKinhDoanh,
			soDienThoai : soDienThoai,
			chucVuNguoiDaiDien : chucVuNguoiDaiDien,
			giayUyQuyenSo : giayUyQuyenSo,
			ngayCapGiayUyQuyen : ngayCapGiayUyQuyen,
			loaiDuongSuID : loaiDuongSuID,
			benSoHuu: benSoHuu
		}),
		success : function(data) {
			if (data.trim() == "true") {
				result = true;
			}
		}
	});
	return result;
}


function getFormCapNhatThongTinDuongSu(benSoHuu) {
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/GetFormCapNhatThongTinDuongSu",
		async : false,
		data : ({		
			benSoHuu: benSoHuu
		}),
		success : function(data) {
			$("#FormThongTinHopDongID").html(data);
			//Date
			$( "#NgayGiayDKKDID" ).datepicker();
			$( "#NgaySinhNguoiDaiDienToChucID" ).datepicker();
			$( "#NgayCapGiayUyQuyenID" ).datepicker();
			$( "#NgaySinhID" ).datepicker();
			$( "#NgayCapCaNhanID" ).datepicker();
			$( "#NgaySinhNguoiUyQuyenID" ).datepicker();
			$( "#NgayCapNguoiUyQuyenID" ).datepicker();
			$("#ThongTinFormLoaiHopDongID").validate({
				rules : {
					loaiHopDong : {
						valueNotEquals : "0"
					},
					chiTietLoaiHopDong : {
						valueNotEquals : "0"
					},
				},
				messages : {
					
				},
				submitHandler : function(form) {
					$("#CheckValidateID").val("true");
				}
			});
			$("#ThongTinFormDuongSuCaNhanID").validate({
				rules : {
					loaiGiayToCaNhan : {
						valueNotEquals : "0"
					},
					tinhThanhCaNhan : {
						valueNotEquals : "0"
					},
					quanHuyenCaNhan : {
						valueNotEquals : "0"
					},
					phuongXaCaNhan : {
						valueNotEquals : "0"
					},
				},
				messages : {
					
				},
				submitHandler : function(form) {
					$("#CheckValidateID").val("true");
				}
			});
			
			$("#ThongTinFormDuongSuToChucID").validate({
				rules : {
					tinhThanhToChuc : {
						valueNotEquals : "0"
					},
					quanHuyenToChuc : {
						valueNotEquals : "0"
					},
					phuongXaToChuc : {
						valueNotEquals : "0"
					},
					loaiGiayToToChuc : {
						valueNotEquals : "0"
					},
				},
				messages : {
					
				},
				submitHandler : function(form) {
					$("#CheckValidateID").val("true");
				}
			});
			
			$("#ThongTinFormNguoiUyQuyenID").validate({
				rules : {
					loaiGiayToNguoiUyQuyen : {
						valueNotEquals : "0"
					},
					tinhThanhNguoiUyQuyen : {
						valueNotEquals : "0"
					},
					quanHuyenNguoiUyQuyen : {
						valueNotEquals : "0"
					},
					phuongXaNguoiUyQuyen : {
						valueNotEquals : "0"
					},
				},
				messages : {
					
				},
				submitHandler : function(form) {
					$("#CheckValidateID").val("true");
				}
			});
		}
	});
}
