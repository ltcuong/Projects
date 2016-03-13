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
				themThongTinDinhKem();
			},
			error : function() {
			}
		};
	$("#UploadForm").ajaxForm(options);
		
	$("#BtnCapNhatHoSoID").click(function(){
		var myfile = $("#myfile").val();
		var nam = $("#NamID").val();
		var thang = $("#ThangID").val();
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
		if (myfile.trim() == "") {
			$("#FileID-error").removeClass("DisplayNone");
			flag = false;
		} else {
			$("#FileID-error").addClass("DisplayNone");
		}
		if (flag) {
			$("#UploadForm").submit();
		}
	});
	
});

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

function themThongTinDinhKem() {
	var thang = $("#ThangID").val();
	var nam = $("#NamID").val();
	var tenFile = $("#myfile").val();
	var duongDanLuu = $("#FolderID").val();
	$.ajax({
		type : "POST",
		url : "../ajaxchitieu/ThemThongTinFileDinhKem",
		async : false,
		data : ({
			thang : thang,
			nam : nam,
			tenFile : tenFile,
			duongDanLuu : duongDanLuu
		}),
		success : function(data) {
			if (data.trim() == "true") {
				alert($("#MsgCapNhatThanhCongID").val());
				$("#myfile").val("");
				getListTepTinDinhKem();
			} else {
				alert($("#MsgCapNhatThatBaiID").val());
			}
		}
	});
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
			$("#ListDinhKemID").html("");
		}
	});
}

function getListTepTinDinhKem() {
	var thang = $("#ThangID").val();
	var nam = $("#NamID").val();
	$.ajax({
		type : "POST",
		url : "../ajaxchitieu/GetListTepTinDinhKem",
		async : false,
		data : ({
			thang : thang,
			nam : nam
		}),
		success : function(data) {
			$("#ListDinhKemID").html(data);
		}
	});
}

function getSelectThang(){
	var folderName = $("#FolderHiddenID").val() + $("#ThangID").val() + "-" + $("#NamID").val() + "/";
	$("#FolderID").val(folderName);
	getListTepTinDinhKem();
}

function reloadFormDinhKem() {
	$("#NamID").val(0);
	getSelectThangByNamChiTieu();
	$("#FolderID").val("");
	$("#myfile").val("");
}
