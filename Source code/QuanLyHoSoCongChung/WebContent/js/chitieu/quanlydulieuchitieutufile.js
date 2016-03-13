$(document).ready(function() {	
	
	var options = {
			beforeSend : function() {
				$("#progressbox").show();
				// clear everything
				$("#progressbar").width('0%');
				$("#message").empty();
				$("#percent").html("0%");
			},
			uploadProgress : function(event, position, total, percentComplete) {
				$("#progressbar").width(percentComplete + '%');
				$("#percent").html(percentComplete + '%');

				// change message text and % to red after 50%
				if (percentComplete > 50) {
					$("#message").html("<font color='red'>File Upload is in progress .. </font>");
				}
			},
			success : function() {
				$("#progressbar").width('100%');
				$("#percent").html('100%');
			},
			complete : function(response) {
				if (checkFormatFileInport()) {
					var nam = $("#NamID").val();
					var thang = $("#ThangID").val();
					var tenDangNhap = $("#TaiKhoanID").val();
					var href = "../quanlychitieu/CTXemTruocDuLieuImport?nam=" + nam + "&thang=" + thang + "&tenDangNhap=" + tenDangNhap;
					window.location.replace(href);
				}
			},
			error : function() {
			}
		};
	$("#UploadForm").ajaxForm(options);
		
	$("#BtnCapNhatHoSoID").click(function(){
		var myfile = $("#myfile").val();
		var nam = $("#NamID").val();
		var thang = $("#ThangID").val();
		var nhomID = $("#NhomTaiKhoanID").val();
		var taiKhoanID = $("#TaiKhoanID").val();
		var flag = true;
		if (nam == 0) {
			$("#NamID-error").removeClass("DisplayNone");
			flag = false;
		} else {
			$("#NamID-error").addClass("DisplayNone");
		}
		if (thang == 0) {
			$("#ThangID-error").removeClass("DisplayNone");
			flag = false;
		} else {
			$("#ThangID-error").addClass("DisplayNone");
		}
		if (nhomID == 0) {
			$("#NhomTaiKhoanID-error").removeClass("DisplayNone");
			flag = false;
		} else {
			$("#NhomTaiKhoanID-error").addClass("DisplayNone");
		}
		if (taiKhoanID.trim() == "") {
			$("#TaiKhoanID-error").removeClass("DisplayNone");
			flag = false;
		} else {
			$("#TaiKhoanID-error").addClass("DisplayNone");
		}
		if (myfile.trim() == "") {
			$("#FileID-error").removeClass("DisplayNone");
			flag = false;
		} else {
			$("#FileID-error").addClass("DisplayNone");
		}
		if (flag) {
			var extendFile = getExtendFile(myfile);
			if (extendFile != "xls"){
					alert($("#TextID01").val());
			} else {
				$("#UploadForm").submit();
			}
		}
	});

	$("#BtnCapNhatDuLieuID").click(function(){
		$.ajax({
			type : "POST",
			url : "../ajaxchitieu/CapNhatDuLieuImport",
			async : false,
			data : ({		
				thang : $("#ThangHiddenID").val(),
				nam : $("#NamHiddenID").val(),
				tenDangNhap : $("#TenDangNhapHiddenID").val()
			}),
			success : function(data) {
				if (data.trim() == "true") {
					alert($("#MsgCapNhatThanhCongID").val());
					var href = "../quanlychitieu/CTQuanLyDuLieuChiTieuTuFile";
					window.location.replace(href);
				} else {
					alert($("#MsgCapNhatThatBaiID").val());
				}
			}
		});
		
	});
	
	
	
});



function checkFormatFileInport() {
	var fileName = $("#myfile").val();
	var folderUpload = $("#FolderID").val();
	var result = false;
	$.ajax({
		type : "POST",
		url : "../ajaxchitieu/CheckFormatFileImport",
		async : false,
		data : ({		
			folderUpload : folderUpload,
			fileName : fileName,
			tenDangNhap : $("#TaiKhoanID").val(),
			thang :  $("#ThangID").val(),
			nam :  $("#NamID").val(),
		}),
		success : function(data) {
			if (data.trim() == "true") {
				result = true;
			} else if (data.trim() == "false") {
				alert($("#TextID02").val());
			} else if (data.trim() == "falserole") {
				alert($("#TextID03").val());
			} else if (data.trim() == "falsestring") {
				alert($("#TextID04").val());
			}
		}
	});
	return result;
}


function importThongTinHoSo() {
	var loaiHoSoID = $("#LoaiHoSoID").val();
	var fileName = $("#myfile").val();
	var folderUpload = $("#FolderID").val();
	var updateFail = $("#TextID03").val();
	$.ajax({
		type : "POST",
		url : "../ajax/ImportThongTinHoSo",
		async : false,
		data : ({		
			loaiHoSoID : loaiHoSoID,
			fileName : fileName,
			folderUpload : folderUpload
		}),
		success : function(data) {
			if (data.trim() == "false") {
				showMessageError(updateFail);
			} else {
				showMessageInfo(data.trim());
			}
		}
	});
}


function downloadFileImportChiTieu(loaiID) {
	var href = "../quanlychitieu/CTFileImportChiTieuDownloader?strParam=" + loaiID;
	window.open(href);
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

function huyNhapLieu() {
	var href = "../quanlychitieu/CTQuanLyDuLieuChiTieuTuFile";
	window.location.replace(href);
}