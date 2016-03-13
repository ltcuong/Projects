$(document).ready(function() {
	$.validator.addMethod("valueNotEquals", function(value, element, arg) {
		return arg != value;
	}, $("#MsgError02").val());
	
	
	jQuery.extend(jQuery.validator.messages, {
		required : $("#MsgError01").val(),
		number : $("#MsgError03").val(),
		minlength : $.validator.format($("#MsgError04").val()),
	});
	
	$("#ThongTinNhomChiTieuForm").validate({
		rules : {
			thuTu : {
				number : true,
			}
		},
		messages : {
		},
		submitHandler : function(form) {
			var maNhomChiTieu  = $("#MaNhomChiTieuID").val().trim();
			if (checkMaNhomChiTieuTonTai(maNhomChiTieu, null)) {
				alert ($("#TextID01").val());
			} else {
				themThongTinNhomChiTieu();
			}
		}
	});
	$('#ThongTinNhomChiTieuForm').on('keyup keypress', function(e) {
		  var code = e.keyCode || e.which;
		  if (code == 13) { 
		    e.preventDefault();
		    return false;
		  }
	});
	

});

function chinhSuaNhomChiTieu(nhomChiTieuID) {
	$.ajax({
		type : "POST",
		url : "../ajaxchitieu/GetFormChinhSuaNhomChiTieu",
		async : false,
		data : ({
			nhomChiTieuID : nhomChiTieuID
		}),
		success : function(data) {
			$("#FormChinhSuaNhomChiTieuID").html(data);
			showPopUpDivWithSize("Popup01ID", 200);
			$("#ThongTinChinhSuaNhomChiTieuID").validate({
				rules : {
					thuTuEdit : {
						number : true,
					}
				},
				messages : {
				},
				submitHandler : function(form) {
					var maNhomChiTieu  = $("#MaNhomChiTieuEditID").val().trim();
					if (checkMaNhomChiTieuTonTai(maNhomChiTieu, $("#NhomChiTieuIDHidden").val())) {
						alert ($("#TextID01").val());
					} else {
						chinhSuaThongTinNhomChiTieu();
					}
				}
			});
		}
	});
	
	
	
}

function themThongTinNhomChiTieu() {
	$.ajax({
		type : "POST",
		url : "../ajaxchitieu/ThemThongTinNhomChiTieu",
		async : false,
		data : ({
			maNhomChiTieu : $("#MaNhomChiTieuID").val().trim(),
			tenNhomChiTieu : $("#TenNhomChiTieuID").val().trim(),
			locked : 0,
			thuTu : $("#ThuTuID").val().trim(),
		}),
		success : function(data) {
			if (data.trim() == "true") {
				alert($("#MsgCapNhatThanhCongID").val());
				getListNhomChiTieu(1);
				$("#MaNhomChiTieuID").val("");
				$("#TenNhomChiTieuID").val("");
			} else {
				alert($("#MsgCapNhatThatBaiID").val());
			}
		}
	});
	
}


function chinhSuaThongTinNhomChiTieu() {
	$.ajax({
		type : "POST",
		url : "../ajaxchitieu/ThemThongTinNhomChiTieu",
		async : false,
		data : ({
			nhomChiTieuID : $("#NhomChiTieuIDHidden").val().trim(),
			maNhomChiTieu : $("#MaNhomChiTieuEditID").val().trim(),
			tenNhomChiTieu : $("#TenNhomChiTieuEditID").val().trim(),
			thuTu : $("#ThuTuEditID").val().trim(),
		}),
		success : function(data) {
			if (data.trim() == "true") {
				alert($("#MsgCapNhatThanhCongID").val());
				getListNhomChiTieu(1);
				closePopup();
			} else {
				alert($("#MsgCapNhatThatBaiID").val());
			}
		}
	});
	
}

function xoaThongTinNhomChiTieu(nhomChiTieuID) {
	var r = confirm($("#MsgError05").val());
	if (r == true) {
		$.ajax({
			type : "POST",
			url : "../ajaxchitieu/XoaThongTinNhomChiTieu",
			async : false,
			data : ({
				nhomChiTieuID : nhomChiTieuID
			}),
			success : function(data) {
				if (data.trim() == "true") {
					var page = $("#HiddenPageID").val();
					getListNhomChiTieu(page);
					alert($("#MsgXoaThanhCongID").val());
				} else {
					alert($("#MsgXoaThatBaiID").val());
				}
			}
		});
	}
}



function getListNhomChiTieu(page) {
	$("#HiddenPageID").val(page);
	var result = false;
	$.ajax({
		type : "POST",
		url : "../ajaxchitieu/GetListNhomChiTieu",
		async : false,
		data : ({
			page : page
		}),
		success : function(data) {
			$("#ListNhomChiTieuID").html(data);
		}
	});
	return result;
}

function checkMaNhomChiTieuTonTai(maNhomChiTieu, nhomChiTieuID) {
	var result = false;
	$.ajax({
		type : "POST",
		url : "../ajaxchitieu/CheckMaNhomChiTieuTonTai",
		async : false,
		data : ({
			maNhomChiTieu : maNhomChiTieu,
			nhomChiTieuID : nhomChiTieuID
		}),
		success : function(data) {
			if (data.trim() == "true") {
				result =  true;
			}
		}
	});
	return result;
}