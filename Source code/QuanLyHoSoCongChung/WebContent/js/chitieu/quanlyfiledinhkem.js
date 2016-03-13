$(document).ready(function() {	

	$("#BtnTimKiemID").click(function(){
		getListTepTinDinhKem(1);
	});
});

function getListTepTinDinhKem(page) {
	$("#PageHiddenID").val(page);
	var nam = $("#NamID").val(); 
	var thang = $("#ThangID").val(); 
	var taiKhoanNhap = $("#TaiKhoanID").val();
	var nhomID = $("#NhomTaiKhoanID").val();
	$.ajax({
		type : "POST",
		url : "../ajaxbaocao/GetListTepTinDinhKemFilter",
		async : false,
		data : ({		
			nam : nam,
			thang : thang,
			taiKhoanNhap : taiKhoanNhap,
			nhomID : nhomID
		}),
		success : function(data) {
			$("#ListDinhKemID").html(data);
		}
	});
}

function xoaThongTinFileDinhKem(fileID) {
	var r = confirm($("#MsgError05").val());
	if (r == true) {
		$.ajax({
			type : "POST",
			url : "../ajaxchitieu/XoaThongTinFileDinhKem",
			async : false,
			data : ({
				fileID : fileID
			}),
			success : function(data) {
				if (data.trim() == "true") {
					alert($("#MsgXoaThanhCongID").val());
					getListTepTinDinhKem();
				} else {
					alert($("#MsgXoaThatBaiID").val());
				}
			}
		});
	}
}

function getSelectThangByNamChiTieu() {
	var namChon = $("#NamID").val(); 
	$.ajax({
		type : "POST",
		url : "../ajaxchitieu/GetSelectThangByNamChiTieu",
		async : false,
		data : ({
			namChon : namChon
		}),
		success : function(data) {
			$("#ThangID").html(data);
		}
	});
}

function getSelectTaiKhoan(){
	var nhomID = $("#NhomTaiKhoanID").val();
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/GetSelectNguoiDung",
		async : false,
		data : ({
			nhomID : nhomID
		}),
		success : function(data) {
			$("#TaiKhoanID").html(data);			
		}
	});
}
