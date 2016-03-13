$(document).ready(function() {
	//loadListMenuLeftThemMoiTK();
	$.validator.addMethod("valueNotEquals", function(value, element, arg) {
		return arg != value;
	}, "Value must not equal arg.");
	jQuery.extend(jQuery.validator.messages, {
		required : $("#MsgError01").val(),
		number : $("#MsgError03").val(),
		minlength : $.validator.format($("#MsgError04").val()),
		email : $.validator.format($("#TextID02").val()),
	});
	
	$("#thongTinCoBanForm").validate({
		rules : {
			email : {
				email : true
			}
		
		},
		messages : {
		},
		submitHandler : function(form) {
			var matKhauMoi = $("#taikhoan_matkhaumoiID").val().trim();
			var lapLaiMatKhauMoi = $("#taikhoan_laplaimkID").val().trim();
			if (checkMatKhauCu()) {
				if ($("#cbDoiMatKhauID").is(':checked')){ 
					if (lapLaiMatKhauMoi.length < 6) {
						alert($("#TextID04").val());
					} else {
						if (matKhauMoi != lapLaiMatKhauMoi) {
							alert($("#TextID03").val());
						} else {
							capNhatThongTinHoSo();
						}
					}
				} else {
					capNhatThongTinHoSo();
				}
				
			}
		}
	});
	$('#thongTinCoBanForm').on('keyup keypress', function(e) {
		  var code = e.keyCode || e.which;
		  if (code == 13) { 
		    e.preventDefault();
		    return false;
		  }
	});
	
	$("#cbDoiMatKhauID").click(function(){
		if ($(this).is(':checked')){
			$("#taikhoan_matkhaucuID").attr("required", "true");
			$("#taikhoan_matkhaumoiID").attr("required", "true");
			$("#taikhoan_laplaimkID").attr("required", "true");
			$("#mk1").removeClass("DisplayNone");
			$("#mk2").removeClass("DisplayNone");
			$("#mk3").removeClass("DisplayNone");
		} else {
			$("#mk1").addClass("DisplayNone");
			$("#mk2").addClass("DisplayNone");
			$("#mk3").addClass("DisplayNone");
			$("#taikhoan_matkhaucuID").removeAttr('required');
			$("#taikhoan_matkhaumoiID").removeAttr('required');
			$("#taikhoan_laplaimkID").removeAttr('required');
		}
		
		
	});

	
});


function checkMatKhauCu() {
	var result = true;
	if ($("#cbDoiMatKhauID").is(':checked')){
		$.ajax({
			type : "POST",
			url : "../ajaxquanlynguoidung/CheckMatKhauCu",
			async : false,
			data : ({		
				taikhoan_matkhau : $("#taikhoan_matkhaucuID").val().trim()
			}),
			success : function(data) {
				if (data.trim() == "false") {
					result = false;
					alert($("#TextID01").val());
				}
			}
		});
	}
	return result;
}

function capNhatThongTinHoSo() {
	var doiMatKhau = false;
	if ($("#cbDoiMatKhauID").is(':checked')){
		doiMatKhau = true;
	}
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/UpdateHoSoCaNhan",
		async : false,
		data : ({		
			taikhoan_hoten : $("#taikhoan_hotenID").val().trim(),
			taikhoan_sdt : $("#taikhoan_sdtID").val().trim(),
			email : $("#taikhoan_emailID").val().trim(),
			doiMatKhau : doiMatKhau,
			taikhoan_diachi : $("#taikhoan_diachiID").val().trim(),
			taikhoan_matkhau : $("#taikhoan_matkhaumoiID").val().trim(),
			taikhoan_chucvu : $("#taikhoan_chucvuID").val().trim(),
			taikhoan_donvi : $("#taikhoan_donviID").val().trim()
		}),
		success : function(data) {
			if (data.trim() == "true") {
				alert($("#MsgCapNhatThanhCongID").val());
			} else {
				alert($("#MsgCapNhatThatBaiID").val());
			}
		}
	});
}
