$(document).ready(function() {
	loadListDanhMuc(1);
	$.validator.addMethod("valueNotEquals", function(value, element, arg) {
		return arg != value;
	}, $("#MsgError02").val());
	
	
	jQuery.extend(jQuery.validator.messages, {
		required : $("#MsgError01").val(),
		number : $("#MsgError03").val(),
		minlength : $.validator.format($("#MsgError04").val()),
	});

	$("#ThongTinDanhMucForm").validate({
		rules : {
			
		},
		messages : {
		},
		submitHandler : function(form) {
			var danhmuc_maso  = $("#masodanhmuchiddenID").val().trim();
			var danhmuc_ma = $("#MaDanhMucID").val().trim();
			var danhmuc_ten = $("#DanhMucTen").val().trim();
			
			if (checkExistDanhMucMa(danhmuc_maso, danhmuc_ma)) {
				alert($("#danhmucmaduocsudungID").val());
			} else if (checkExistDanhMucTen(danhmuc_maso, danhmuc_ten)) {
				alert($("#danhmuctenduocsudungID").val());
			} else {
				capNhatThongTinDanhMuc();
			}
		}
	});
	
});

function capNhatThongTinDanhMuc() {
	var danhmuc_maso = $("#masodanhmuchiddenID").val().trim();
	var danhmuc_ma = $("#MaDanhMucID").val().trim();
	var danhmuc_ten = $("#DanhMucTen").val().trim();
	var danhmuc_tentp = $("#DanhMucTenThanhPho").val().trim();
	var maBaoCao = $("#MaBaoCaoID").val().trim();
	
	
	var page = $("#pageHiddenID").val().trim();
	$.ajax({
		type : "POST",
		url : "../ajaxdanhmuc/UpdateDanhMucTinh",
		async : false,
		data : ({		
			danhmuc_maso : danhmuc_maso,
			danhmuc_ma : danhmuc_ma,
			danhmuc_ten : danhmuc_ten,
			danhmuc_tentp : danhmuc_tentp,
			maBaoCao : maBaoCao,
		}),
		success : function(data) {
			if (data.trim() == "true") {
				alert($("#danhmucupdatesuccessID").val());
				loadListDanhMuc(page);
				$("#masodanhmuchiddenID").val("");
				$("#MaDanhMucID").val("");
				$("#DanhMucTen").val("");
				$("#DanhMucTenThanhPho").val("");
				$("#MaBaoCaoID").val("");	
			} else {
				alert($("#danhmucupdateunsuccessID").val());
			}
		}
	});
}

function checkExistDanhMucMa(danhmuc_maso, danhmuc_ma) {
	var result = false;
	$.ajax({
		type : "POST",
		url : "../ajaxdanhmuc/CheckExistDanhMucTinhMa",
		async : false,
		data : ({		
			danhmuc_maso : danhmuc_maso,
			danhmuc_ma : danhmuc_ma,			
		}),
		success : function(data) {
			if (data.trim() == "ExistData") {
				result = true;
			}
		}
	});
	return result;
}

function checkExistDanhMucTen(danhmuc_maso, danhmuc_ten) {
	var result = false;
	$.ajax({
		type : "POST",
		url : "../ajaxdanhmuc/CheckExistDanhMucTinhTen",
		async : false,
		data : ({		
			danhmuc_maso : danhmuc_maso,
			danhmuc_ten : danhmuc_ten,			
		}),
		success : function(data) {
			if (data.trim() == "ExistData") {
				result = true;
			}
		}
	});
	return result;
}



function clearDataDanhMuc() {
	$("#masodanhmuchiddenID").val("");
	$("#MaDanhMucID").val("");
	$("#DanhMucTen").val("");
	$("#GhiChuID").val("");	
	$("#BoxError").addClass("DisplayNone");
	$("#BoxSucess").addClass("DisplayNone");
	
}

function loadListDanhMuc(page) {
	$("#pageHiddenID").val(page);
	$.ajax({
		type : "POST",
		url : "../ajaxdanhmuc/GetListDanhMucTinh",
		async : false,
		data : ({		
			page : page
		}),
		success : function(data) {
			$("#ListDanhMuc").html(data);			
		}
	});
}



function editDanhMuc(danhmuc_maso) {
	
	var idClick = "#editDanhMuc_" + danhmuc_maso;
	var maDanhMuc = $(idClick).parent().parent().children().children().eq(0).html().trim();
	var tenDanhMuc = $(idClick).parent().parent().children().children().eq(1).html().trim();
	var tenThanhPho = $(idClick).parent().parent().children().children().eq(2).html().trim();
	var ghiChuDanhMuc = $(idClick).parent().parent().children().children().eq(3).html().trim();
	$("#masodanhmuchiddenID").val(danhmuc_maso);
	$("#MaDanhMucID").val(maDanhMuc);
	$("#DanhMucTen").val(tenDanhMuc);
	$("#MaBaoCaoID").val(ghiChuDanhMuc);		
	$("#DanhMucTenThanhPho").val(tenThanhPho);
	
}

function deleteDanhMuc(danhmuc_maso) {
	var page = $("#pageHiddenID").val();
	var danhmucdelete = $("#danhmucdeleteID").val();
	var danhmucdeletesuccess = $("#danhmucdeletesuccessID").val();
	var danhmucdeleteunsucess = $("#danhmucdeleteunsucessID").val();

	var idClick = "#deleteDanhMuc_" + danhmuc_maso;
	var tenDanhMuc = $(idClick).parent().parent().children().children().eq(1)
			.html();
	var r = confirm(danhmucdelete.format(tenDanhMuc));
	if (r == true) {
		$.ajax({
			type : "POST",
			url : "../ajaxdanhmuc/DeleteDanhMucTinh",
			async : false,
			data : ({
				danhmuc_maso : danhmuc_maso
			}),
			success : function(data) {
				if (data.trim() == "true") {
					showMessageInfo(danhmucdeletesuccess.format(tenDanhMuc));
					loadListDanhMuc(page);	
					$("#masodanhmuchiddenID").val("");
					$("#MaDanhMucID").val("");
					$("#DanhMucTen").val("");
					$("#GhiChuID").val("");
				} else {
					showMessageError(danhmucdeleteunsucess.format(tenDanhMuc));
				}
			}
		});
	}
}
function changeStatusDanhMuc(danhmuc_maso) {
	
	$.ajax({
		type : "POST",
		url : "../ajaxdanhmuc/UpdateStatusTinh",
		async : false,
		data : ({		
			danhmuc_maso : danhmuc_maso
		}),
		success : function(data) {
			if (data.trim() == "true") {
				loadListDanhMuc($("#pageHiddenID").val());
			}			
		}
	});
}
