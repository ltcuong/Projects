$(document).ready(function() {
	$.validator.addMethod("valueNotEquals", function(value, element, arg) {
		return arg != value;
	}, "Value must not equal arg.");
	jQuery.extend(jQuery.validator.messages, {
		required : $("#MsgError01").val(),
		number : $("#MsgError03").val(),
		minlength : $.validator.format($("#MsgError04").val()),
	});
	
	$("#thongTinCoBanForm").validate({
		rules : {
		},
		messages : {
		},
		submitHandler : function(form) {
			saoLuuDuLieu();
		}
	});
	
});

function saoLuuDuLieu() {
	showWaitingProgress();
	$.ajax({
		type : "POST",
		url : "../ajax/BackupDatabase",
		async : false,
		data : ({
		}),
		success : function(data) {
			closeWaitingProgress();
			if (data.trim() == "true") {
				alert($("#TextID01").val());
				getListNhatKySaoLuu(1);
			} else {
				alert($("#TextID02").val());
			}
		}
	});
}

function getListNhatKySaoLuu(page) {
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/GetListNhatKySaoLuu",
		async : false,
		data : ({
			page : page
		}),
		success : function(data) {
			$("#DanhSachSaoLuuID").html(data);
		}
	});
}


function xoaNhatKySaoLuuDuLieu(saoLuuID) {
	var r = confirm($("#MsgError05").val());
	if (r == true) {
		$.ajax({
			type : "POST",
			url : "../ajaxquanlynguoidung/XoaNhatKySaoLuuDuLieu",
			async : false,
			data : ({
				saoLuuID : saoLuuID
			}),
			success : function(data) {
				if (data.trim() == "true") {
					getListNhatKySaoLuu(1);
					alert($("#MsgCapNhatThanhCongID").val());
				} else {
					alert($("#ErrorNhomDangSuDungID").val());
				}
			}
		});
	}
}