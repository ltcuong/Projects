$(document).ready(function() {
	$.validator.addMethod("valueNotEquals", function(value, element, arg) {
		return arg != value;
	}, "Value must not equal arg.");
	jQuery.extend(jQuery.validator.messages, {
		required : $("#MsgError01").val(),
		number : $("#MsgError03").val(),
		minlength : $.validator.format($("#MsgError04").val()),
		equalTo : $("#MsgError07").val(),
		email : $.validator.format($("#TextID02").val()),
	});
	
	
});



function getListDanhSachTaiKhoan(page) {
	$("#HiddenPageID").val(page);
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/GetListDanhSachTaiKhoan",
		async : false,
		data : ({
			tenDangNhap : $("#TenDangNhapID").val().trim(),
			hoTen : $("#HoTenID").val().trim(),
			soDienThoai : $("#SoDienThoaiID").val().trim(),
			email : $("#EmailID").val().trim(),
			diaChi : $("#DiaChiID").val().trim(),
			nhomID : $("#NhomID").val().trim(),
			donViCongTac : $("#DonViCongTacID").val().trim(),
			chucVu : $("#ChucVuID").val().trim(),
			locked : $("#LockedID").val(),
			page : page
		}),
		success : function(data) {
			$("#DanhSachTaiKhoanID").html(data);
		}
	});
}


function xoaThongTinTaiKhoan(tenDangNhap) {
	var r = confirm($("#MsgError05").val());
	if (r == true) {
		$.ajax({
			type : "POST",
			url : "../ajaxquanlynguoidung/XoaThongTinTaiKhoan",
			async : false,
			data : ({
				tenDangNhap : tenDangNhap
			}),
			success : function(data) {
				if (data.trim() == "true") {
					var page = $("#HiddenPageID").val();
					getListDanhSachTaiKhoan(page);
					alert($("#MsgXoaThanhCongID").val());
				} else {
					alert($("#MsgXoaThatBaiID").val());
				}
			}
		});
	}
}


function thayDoiTinhTrangTaiKhoan(tenDangNhap) {
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/ThayDoiTinhTrangTaiKhoan",
		async : false,
		data : ({
			tenDangNhap : tenDangNhap
		}),
		success : function(data) {
			if (data.trim() == "true") {
				var page = $("#HiddenPageID").val();
				getListDanhSachTaiKhoan(page);
			} else {
				alert($("#MsgCapNhatThatBaiID").val());
			}
		}
	});
}

function chinhSuaThongTinTaiKhoan(tenDangNhap) {
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/GetFormThongTinTaiKhoan",
		async : false,
		data : ({
			tenDangNhap : tenDangNhap
		}),
		success : function(data) {
			$("#FormTaiKhoanID").html(data);
			showPopUpDivWithSize('PopupThongTinTaiKhoanID', 900, 400);
			$("#thongTinHoSoFormPopup").validate({
				rules : {
					tenDangNhapPopup : {
		                minlength : 4
		            },
		            emailPopup : {
						email : true
					},
		            nhomIDPopup : {
						valueNotEquals : "0"
					},
					matKhauPopup : {
		                minlength : 6
		            },
		            matKhauConfirmPopup : {
		                minlength : 6,
		                equalTo : "#MatKhauIDPopup"
		            }
				},
				messages : {
					nhomIDPopup : {
						valueNotEquals : $("#MsgError02").val()
					}
				},
				submitHandler : function(form) {
					chinhSuaThongTinTaiKhoanDetail();
				}
			});
			
		}
	});
}

function chinhSuaThongTinTaiKhoanDetail() {
	var changePass = 0;
	if($("#CBDoiMatKhauID").is(':checked')) {
		changePass = 1;
	}
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/CapNhatThongTinCoBanTaiKhoan",
		async : false,
		data : ({
			tenDangNhap : $("#TenDangNhapIDPopup").val().trim(),
			matKhau : $("#MatKhauIDPopup").val().trim(),
			hoTen : $("#HoTenIDPopup").val().trim(),
			soDienThoai : $("#SoDienThoaiIDPopup").val().trim(),
			email : $("#EmailIDPopup").val().trim(),
			diaChi : $("#DiaChiIDPopup").val().trim(),
			nhomID : $("#NhomIDPopup").val().trim(),
			donViCongTac : $("#DonViCongTacIDPopup").val().trim(),
			chucVu : $("#ChucVuIDPopup").val().trim(),
			changePass : changePass,
		}),
		success : function(data) {
			if (data.trim() == "true") {
				alert($("#MsgCapNhatThanhCongID").val());
				var page = $("#HiddenPageID").val();
				getListDanhSachTaiKhoan(page);
				closePopup();
			} else {
				alert($("#MsgCapNhatThatBaiID").val());
			}
		}
	});
}

function changeMatKhauTaiKhoan() {
	if($("#CBDoiMatKhauID").is(':checked')) {
		$("#MatKhauIDPopup").prop("disabled", false);  
		$("#MatKhauConfirmIDPopup").prop("disabled", false);  
		$("#MatKhauIDPopup").val("");
		$("#MatKhauConfirmIDPopup").val("");
	} else {
		$("#MatKhauIDPopup").prop("disabled", true);  
		$("#MatKhauConfirmIDPopup").prop("disabled", true);  
		$("#MatKhauIDPopup").val("******");
		$("#MatKhauConfirmIDPopup").val("******");
	}
}

function themTinCoBanTaiKhoan() {
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/ThemThongTinCoBanTaiKhoan",
		async : false,
		data : ({
			tenDangNhap : $("#TenDangNhapID").val().trim(),
			matKhau : $("#MatKhauID").val().trim(),
			hoTen : $("#HoTenID").val().trim(),
			soDienThoai : $("#SoDienThoaiID").val().trim(),
			email : $("#EmailID").val().trim(),
			diaChi : $("#DiaChiID").val().trim(),
			nhomID : $("#NhomID").val().trim(),
			donViCongTac : $("#DonViCongTacID").val().trim(),
			chucVu : $("#ChucVuID").val().trim(),
			changePass : 1,
		}),
		success : function(data) {
			if (data.trim() == "true") {
				alert($("#MsgCapNhatThanhCongID").val());
				$("#TenDangNhapID").val("");
				$("#MatKhauID").val("");
				$("#MatKhauConfirmID").val("");
				$("#HoTenID").val("");
				$("#SoDienThoaiID").val("");
				$("#EmailID").val("");
				$("#DiaChiID").val("");
				$("#NhomID").val(0);
				$("#DonViCongTacID").val("");
				$("#ChucVuID").val("");
				getListDanhSachTaiKhoan(1);
			} else {
				alert($("#MsgCapNhatThatBaiID").val());
			}
		}
	});
}

function checkTenTaiKhoanTonTai() {
	var result = false;
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/CheckTenTaiKhoanDaTonTai",
		async : false,
		data : ({
			tenDangNhap : $("#TenDangNhapID").val().trim()
		}),
		success : function(data) {
			if (data.trim() == "true") {
				result = true;
			} else {
				result =  false;
			}
		}
	});
	return result;
}

function nhapLaiThongTinTaiKhoan() {
	$("#TenDangNhapID").val("");
	$("#MatKhauID").val("");
	$("#MatKhauConfirmID").val("");
	$("#HoTenID").val("");
	$("#SoDienThoaiID").val("");
	$("#EmailID").val("");
	$("#DiaChiID").val("");
	$("#NhomID").val(0);
	$("#DonViCongTacID").val("");
	$("#ChucVuID").val("");
	$("#LockedID").val(-1);
	getListDanhSachTaiKhoan(1);
}