$(document).ready(function() {
	var type = $("#typeHiddenID").val();
	if (type != "") {
		var logintext1 = $("#logintext1id").val();
		var logintext2 = $("#logintext2id").val();
		var logintext3 = $("#logintext3id").val();
		if (type == "anotherdevice") {			
			alert(logintext1);
		} else if (type == "nottoken") {
			alert(logintext3);
		} else {
			alert(logintext2);			
		}
	}
	
	$("#BtnDangNhapID").click(function() {
		var taikhoan_dangnhap = $("#TaiKhoanUserID").val().trim();
		var taikhoan_matkhau = $("#TaiKhoanMatKhauID").val().trim();
		if (taikhoan_dangnhap != "" && taikhoan_matkhau != "") {
			$("#updateProcessing").removeClass("DisplayNone");
			$.ajax({
				type : "POST",
				url : "ajax/CheckLoginAdmin",
				async : false,
				data : ({
					update : true,
					taikhoan_dangnhap : taikhoan_dangnhap,
					taikhoan_matkhau : taikhoan_matkhau
				}),
				success : function(data) {				
					if (data.trim() == "false") {
						$("#LoginError1").addClass("DisplayNone");
						$("#updateProcessing").addClass("DisplayNone");
						$("#LoginError3").addClass("DisplayNone");
						$("#LoginError2").removeClass("DisplayNone");
						$("#LoginError4").addClass("DisplayNone");						
						$("#LoginError5").addClass("DisplayNone");
					} else if (data.trim() == "Lock") {
						$("#LoginError1").addClass("DisplayNone");
						$("#updateProcessing").addClass("DisplayNone");
						$("#LoginError3").removeClass("DisplayNone");
						$("#LoginError2").addClass("DisplayNone");
						$("#LoginError4").addClass("DisplayNone");
						$("#LoginError5").addClass("DisplayNone");
					} else if (data.trim() == "Token") {
						$("#LoginError4").removeClass("DisplayNone");
						$("#LoginError1").addClass("DisplayNone");
						$("#updateProcessing").addClass("DisplayNone");
						$("#LoginError3").addClass("DisplayNone");
						$("#LoginError2").addClass("DisplayNone");
						$("#LoginError5").addClass("DisplayNone");
					} else if (data.trim() == "true") {
						window.location.href = 'quanlynguoidung/AdminHome';
					} else if (data.trim() == "LockNhom") {						
						$("#LoginError1").addClass("DisplayNone");
						$("#updateProcessing").addClass("DisplayNone");
						$("#LoginError4").addClass("DisplayNone");
						$("#LoginError3").addClass("DisplayNone");
						$("#LoginError2").addClass("DisplayNone");
						$("#LoginError5").removeClass("DisplayNone");
					}
				}
			});
		}
	});

});

function loginAdmin(e) {
	if (e.keyCode == 13) {
		var taikhoan_dangnhap = $("#TaiKhoanUserID").val().trim();
		var taikhoan_matkhau = $("#TaiKhoanMatKhauID").val().trim();
		if (taikhoan_dangnhap != "" && taikhoan_matkhau != "") {
			$("#updateProcessing").removeClass("DisplayNone");
			$.ajax({
				type : "POST",
				url : "ajax/CheckLoginAdmin",
				async : false,
				data : ({
					update : true,
					taikhoan_dangnhap : taikhoan_dangnhap,
					taikhoan_matkhau : taikhoan_matkhau
				}),
				success : function(data) {
					if (data.trim() == "false") {
						$("#LoginError1").addClass("DisplayNone");
						$("#updateProcessing").addClass("DisplayNone");
						$("#LoginError3").addClass("DisplayNone");
						$("#LoginError2").removeClass("DisplayNone");
						$("#LoginError4").addClass("DisplayNone");						
					} else if (data.trim() == "Lock") {
						$("#LoginError1").addClass("DisplayNone");
						$("#updateProcessing").addClass("DisplayNone");
						$("#LoginError3").removeClass("DisplayNone");
						$("#LoginError2").addClass("DisplayNone");
						$("#LoginError4").addClass("DisplayNone");
					} else if (data.trim() == "Token") {
						$("#LoginError4").removeClass("DisplayNone");
						$("#LoginError1").addClass("DisplayNone");
						$("#updateProcessing").addClass("DisplayNone");
						$("#LoginError3").addClass("DisplayNone");
						$("#LoginError2").addClass("DisplayNone");
					} else if (data.trim() == "true") {
						window.location.href = 'quanlynguoidung/AdminHome';
					}
				}
			});
		}
	}

}