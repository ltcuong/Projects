$(document).ready(function() {
	$.validator.addMethod("valueNotEquals", function(value, element, arg) {
		return arg != value;
	}, $("#MsgError02").val());
	
	
	jQuery.extend(jQuery.validator.messages, {
		required : $("#MsgError01").val(),
		number : $("#MsgError03").val(),
		minlength : $.validator.format($("#MsgError04").val()),
	});
	
	$("#ThongTinLoaiChiTieuForm").validate({
		rules : {
			nhomChiTieu : {
				valueNotEquals : "0"
			},
		},
		messages : {
		},
		submitHandler : function(form) {
			var maChiTieu  = $("#MaLoaiChiTieuID").val().trim();
			if (checkMaLoaiChiTieuTonTai(maChiTieu, null)) {
				alert ($("#TextID01").val());
			} else {
				var valueTuMau = $('input:radio[name=chiTieuTuMau]:checked').val();
				if (valueTuMau != 0 && $("#LoaiChiTieuID").val() == 0) {
					$("#ErrorChiTieuChaID").removeClass("DisplayNone");
				} else {
					$("#ErrorChiTieuChaID").addClass("DisplayNone");
					themThongTinLoaiChiTieu();
				}
				
			}
		}
	});
	$('#ThongTinLoaiChiTieuForm').on('keyup keypress', function(e) {
		  var code = e.keyCode || e.which;
		  if (code == 13) { 
		    e.preventDefault();
		    return false;
		  }
	});
	
	

});

function chinhSuaLoaiChiTieu(chiTieuID) {
	$.ajax({
		type : "POST",
		url : "../ajaxchitieu/GetFormChinhSuaLoaiChiTieu",
		async : false,
		data : ({
			chiTieuID : chiTieuID
		}),
		success : function(data) {
			$("#FormChinhSuaLoaiChiTieuID").html(data);
			showPopUpDivWithSize("Popup01ID", 400);
			$("#ThongTinChinhSuaLoaiChiTieuID").validate({
				rules : {
				},
				messages : {
				},
				submitHandler : function(form) {
					var maChiTieu  = $("#MaLoaiChiTieuEditID").val().trim();
					if (checkMaLoaiChiTieuTonTai(maChiTieu, $("#LoaiChiTieuIDHidden").val())) {
						alert ($("#TextID01").val());
					} else {
						var valueTuMau = $('input:radio[name=chiTieuTuMauEdit]:checked').val();
						if (valueTuMau != 0 && $("#LoaiChiTieuEditID").val() == 0) {
							$("#ErrorChiTieuChaEditID").removeClass("DisplayNone");
						} else {
							$("#ErrorChiTieuChaEditID").addClass("DisplayNone");
							chinhSuaThongTinLoaiChiTieu();
						}
					}
				}
			});
		}
	});
	
	
	
}

function themThongTinLoaiChiTieu() {
	var congDon = 0;
	var laChiTieuBenhVienThuocHuyen = 0;
	var laChiTieuBenhVienThuocTinh = 0;
	var laChiTieuXa = 0;
	var laChiTieuHuyen = 0;
	var laChiTieuTinh = 0;
	
	if($("#CongDonTheoThangID").is(':checked')) {
		congDon = 1;
	}
	if($("#ChiTieuBenhVienThuocHuyenID").is(':checked')) {
		laChiTieuBenhVienThuocHuyen = 1;
	}
	if($("#ChiTieuBenhVienThuocTinhID").is(':checked')) {
		laChiTieuBenhVienThuocTinh = 1;
	}
	if($("#ChiTieuXaID").is(':checked')) {
		laChiTieuXa = 1;
	}
	if($("#ChiTieuHuyenID").is(':checked')) {
		laChiTieuHuyen = 1;
	}
	if($("#ChiTieuTinhID").is(':checked')) {
		laChiTieuTinh = 1;
	}
	var currentOrder = "";
	if ($("#LoaiChiTieuID").val() != 0) {
		currentOrder = $("#LoaiChiTieuID option:selected").attr("currentOrder");
	}
	var laChiTieuTuMau = $('input:radio[name=chiTieuTuMau]:checked').val();
	
	$.ajax({
		type : "POST",
		url : "../ajaxchitieu/ThemThongTinLoaiChiTieu",
		async : false,
		data : ({
			maChiTieu : $("#MaLoaiChiTieuID").val().trim(),
			tenChiTieu : $("#TenLoaiChiTieuID").val().trim(),
			nhomChiTieuID : $("#NhomChiTieuID").val().trim(),
			chiTieuChaID : $("#LoaiChiTieuID").val().trim(),
			donViTinhID : $("#DonViTinhID").val().trim(),
			congDon : congDon,
			laChiTieuBenhVienThuocHuyen : laChiTieuBenhVienThuocHuyen,
			laChiTieuBenhVienThuocTinh : laChiTieuBenhVienThuocTinh,
			laChiTieuXa : laChiTieuXa,
			laChiTieuHuyen : laChiTieuHuyen,
			laChiTieuTinh : laChiTieuTinh,
			currentOrder : currentOrder,
			laChiTieuTuMau : laChiTieuTuMau,
			locked : 0
		}),
		success : function(data) {
			if (data.trim() == "true") {
				alert($("#MsgCapNhatThanhCongID").val());
				getListLoaiChiTieu(1);
				getSelectLoaiChiTieuCreate();
				$("#MaLoaiChiTieuID").val("");
				$("#TenLoaiChiTieuID").val("");
				$("#NhomChiTieuID").val(0);
				$("#LoaiChiTieuID").val(0);
				$("#DonViTinhID").val(0);
				$("#CongDonTheoThangID").prop('checked', false);
				$("#ChiTieuXaID").prop('checked', false);
				$("#ChiTieuHuyenID").prop('checked', false);
				$("#ChiTieuTinhID").prop('checked', false);
				$("#ChiTieuBenhVienThuocHuyenID").prop('checked', false);
				$("#ChiTieuBenhVienThuocTinhID").prop('checked', false);
				$("#ChiTieuKhongID").prop('checked', true);
			} else {
				alert($("#MsgCapNhatThatBaiID").val());
			}
		}
	});
	
}


function chinhSuaThongTinLoaiChiTieu() {
	var congDon = 0;
	var laChiTieuBenhVienThuocHuyen = 0;
	var laChiTieuBenhVienThuocTinh = 0;
	var laChiTieuXa = 0;
	var laChiTieuHuyen = 0;
	var laChiTieuTinh = 0;
	
	if($("#CongDonTheoThangEditID").is(':checked')) {
		congDon = 1;
	}
	if($("#ChiTieuBenhVienThuocHuyenEditID").is(':checked')) {
		laChiTieuBenhVienThuocHuyen = 1;
	}
	if($("#ChiTieuBenhVienThuocTinhEditID").is(':checked')) {
		laChiTieuBenhVienThuocTinh = 1;
	}
	if($("#ChiTieuXaEditID").is(':checked')) {
		laChiTieuXa = 1;
	}
	if($("#ChiTieuHuyenEditID").is(':checked')) {
		laChiTieuHuyen = 1;
	}
	if($("#ChiTieuTinhEditID").is(':checked')) {
		laChiTieuTinh = 1;
	}
	var currentOrder = "";
	if ($("#LoaiChiTieuEditID").val() != 0) {
		currentOrder = $("#LoaiChiTieuEditID option:selected").attr("currentOrder");
	}
	var laChiTieuTuMau = $('input:radio[name=chiTieuTuMauEdit]:checked').val();
	
	$.ajax({
		type : "POST",
		url : "../ajaxchitieu/UpdateThongTinLoaiChiTieu",
		async : false,
		data : ({
			chiTieuID : $("#LoaiChiTieuIDHidden").val().trim(),
			maChiTieu : $("#MaLoaiChiTieuEditID").val().trim(),
			tenChiTieu : $("#TenLoaiChiTieuEditID").val().trim(),
			nhomChiTieuID : $("#NhomChiTieuEditID").val().trim(),
			chiTieuChaID : $("#LoaiChiTieuEditID").val().trim(),
			donViTinhID : $("#DonViTinhEditID").val().trim(),
			congDon : congDon,
			laChiTieuBenhVienThuocHuyen : laChiTieuBenhVienThuocHuyen,
			laChiTieuBenhVienThuocTinh : laChiTieuBenhVienThuocTinh,
			laChiTieuXa : laChiTieuXa,
			laChiTieuHuyen : laChiTieuHuyen,
			laChiTieuTinh : laChiTieuTinh,
			currentOrder : currentOrder,
			laChiTieuTuMau : laChiTieuTuMau
			
		}),
		success : function(data) {
			if (data.trim() == "true") {
				alert($("#MsgCapNhatThanhCongID").val());
				getListLoaiChiTieu(1);
				getSelectLoaiChiTieuCreate();
				closePopup();
			} else {
				alert($("#MsgCapNhatThatBaiID").val());
			}
		}
	});
	
}

function xoaThongTinLoaiChiTieu(chiTieuID) {
	var r = confirm($("#MsgError05").val());
	if (r == true) {
		$.ajax({
			type : "POST",
			url : "../ajaxchitieu/XoaThongTinLoaiChiTieu",
			async : false,
			data : ({
				chiTieuID : chiTieuID
			}),
			success : function(data) {
				if (data.trim() == "true") {
					var page = $("#HiddenPageID").val();
					getListLoaiChiTieu(page);
					alert($("#MsgXoaThanhCongID").val());
				} else {
					alert($("#MsgXoaThatBaiID").val());
				}
			}
		});
	}
}



function getListLoaiChiTieu(page) {
	$("#HiddenPageID").val(page);
	var result = false;
	$.ajax({
		type : "POST",
		url : "../ajaxchitieu/GetListLoaiChiTieu",
		async : false,
		data : ({
			page : page
		}),
		success : function(data) {
			$("#ListLoaiChiTieuID").html(data);
		}
	});
	return result;
}

function checkMaLoaiChiTieuTonTai(maChiTieu, chiTieuID) {
	var result = false;
	$.ajax({
		type : "POST",
		url : "../ajaxchitieu/CheckMaLoaiChiTieuTonTai",
		async : false,
		data : ({
			maChiTieu : maChiTieu,
			chiTieuID : chiTieuID
		}),
		success : function(data) {
			if (data.trim() == "true") {
				result =  true;
			}
		}
	});
	return result;
}