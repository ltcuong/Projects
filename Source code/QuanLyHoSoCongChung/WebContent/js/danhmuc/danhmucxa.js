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
			tinh : {
				valueNotEquals : "0"
			},
		},
		messages : {
		},
		submitHandler : function(form) {
			var danhmuc_maso  = $("#masodanhmuchiddenID").val().trim();
			var danhmuc_ma = $("#MaDanhMucID").val().trim();
			var danhmuc_ten = $("#DanhMucTen").val().trim();
			var	huyen_maso = $("#SelectHuyenIDFull").val().trim();
			if (checkExistDanhMucMa(danhmuc_maso, danhmuc_ma, huyen_maso)) {
				alert($("#danhmucmaduocsudungID").val());
			} else if (checkExistDanhMucTen(danhmuc_maso, danhmuc_ten, huyen_maso)) {
				alert($("#danhmuctenduocsudungID").val());
			} else {
				capNhatThongTinDanhMuc();
			}	
		}
	});
	$('#ThongTinDanhMucForm').on('keyup keypress', function(e) {
		  var code = e.keyCode || e.which;
		  if (code == 13) { 
		    e.preventDefault();
		    return false;
		  }
	});
});

function capNhatThongTinDanhMuc() {
	var danhmuc_maso  = $("#masodanhmuchiddenID").val().trim();
	var danhmuc_ma = $("#MaDanhMucID").val().trim();
	var danhmuc_ten = $("#DanhMucTen").val().trim();
	var tinh_maso = $("#TinhID").val().trim();
	var huyen_maso = $("#SelectHuyenIDFull").val().trim();
	var maBaoCao = $("#MaBaoCaoID").val().trim();
	
	$.ajax({
		type : "POST",
		url : "../ajaxdanhmuc/UpdateDanhMucXa",
		async : false,
		data : ({		
			danhmuc_maso : danhmuc_maso,
			danhmuc_ma : danhmuc_ma,
			danhmuc_ten : danhmuc_ten,
			tinh_maso : tinh_maso,
			huyen_maso : huyen_maso,
			maBaoCao : maBaoCao,
			laBenhVien : 0
		}),
		success : function(data) {
			if (data.trim() == "true") {
				alert($("#danhmucupdatesuccessID").val());
				loadListDanhMuc(page);
				$("#masodanhmuchiddenID").val("");
				$("#MaDanhMucID").val("");
				$("#DanhMucTen").val("");
				$("#MaBaoCaoID").val("");
			} else {
				alert($("#danhmucupdateunsuccessID").val());
			}
		}
	});
}

function changeSelectedHuyen(){
	loadListDanhMuc(1);
	$("#masodanhmuchiddenID").val("");
	$("#MaDanhMucID").val("");
	$("#DanhMucTen").val("");
	$("#MaBaoCaoID").val("");
}
function changeSelectedTinh() {
	var tinh_maso = $("#TinhID").val();
	loadListSelectHuyenDanhMuc(tinh_maso);
	$("#masodanhmuchiddenID").val("");
	$("#MaDanhMucID").val("");
	$("#DanhMucTen").val("");
	$("#MaBaoCaoID").val("");
}


function loadListSelectHuyenDanhMuc(tinh_maso) {	
	$.ajax({
		type : "POST",
		url : "../ajaxdanhmuc/GetSelectHuyenFullDanhMuc",
		async : false,
		data : ({		
			tinh_maso : tinh_maso
		}),
		success : function(data) {
			$('#ListSelectHuyenIDFull').html(data);		
			var page = $("#pageHiddenID").val();
			loadListDanhMuc(page);
		}
	});
	
}


function checkExistDanhMucMa(danhmuc_maso, danhmuc_ma, huyen_maso) {
	var result = false;
	$.ajax({
		type : "POST",
		url : "../ajaxdanhmuc/CheckExistDanhMucXaMa",
		async : false,
		data : ({		
			danhmuc_maso : danhmuc_maso,
			danhmuc_ma : danhmuc_ma,
			huyen_maso : huyen_maso
		}),
		success : function(data) {
			if (data.trim() == "ExistData") {
				result = true;
			}
		}
	});
	return result;
}

function checkExistDanhMucTen(danhmuc_maso, danhmuc_ten, huyen_maso) {
	var result = false;
	$.ajax({
		type : "POST",
		url : "../ajaxdanhmuc/CheckExistDanhMucXaTen",
		async : false,
		data : ({		
			danhmuc_maso : danhmuc_maso,
			danhmuc_ten : danhmuc_ten,			
			huyen_maso : huyen_maso
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
	$("#TinhID").val("An Giang");
	$("#MaBaoCaoID").val("");	
	$("#BoxError").addClass("DisplayNone");
	$("#BoxSucess").addClass("DisplayNone");
	
}

function loadListDanhMuc(page) {
	$("#pageHiddenID").val(page);
	var tinh_maso = $("#TinhID").val();
	var huyen_maso = $("#SelectHuyenIDFull").val();
	$.ajax({
		type : "POST",
		url : "../ajaxdanhmuc/GetListDanhMucXa",
		async : false,
		data : ({		
			page : page,
			tinh_maso : tinh_maso,
			huyen_maso : huyen_maso,
			laBenhVien : 0
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
	var ghiChuDanhMuc = $(idClick).parent().parent().children().children().eq(4).html().trim();
	$("#masodanhmuchiddenID").val(danhmuc_maso);
	$("#MaDanhMucID").val(maDanhMuc);
	$("#DanhMucTen").val(tenDanhMuc);
	$("#MaBaoCaoID").val(ghiChuDanhMuc);
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
			url : "../ajaxdanhmuc/DeleteDanhMucXa",
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
					$("#MaBaoCaoID").val("");
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
		url : "../ajaxdanhmuc/UpdateStatusXa",
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
