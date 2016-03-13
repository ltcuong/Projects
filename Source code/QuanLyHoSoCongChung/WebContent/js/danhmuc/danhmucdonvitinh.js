$(document).ready(function() {
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
			capNhatThongTinDanhMuc();	
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
	var donViTinhID = $("#DonViTinhIDHidden").val().trim();
	var donViTinhTen = $("#TenDonViID").val().trim();
	var page = $("#pageHiddenID").val().trim();
	$.ajax({
		type : "POST",
		url : "../ajaxdanhmuc/UpdateDanhMucDonViTinh",
		async : false,
		data : ({		
			donViTinhID : donViTinhID,
			donViTinhTen : donViTinhTen
		}),
		success : function(data) {
			if (data.trim() == "true") {
				alert($("#danhmucupdatesuccessID").val());
				loadListDanhMucDonViTinh(page);
				$("#DonViTinhIDHidden").val("");
				$("#TenDonViID").val("");
			} else {
				alert($("#danhmucupdateunsuccessID").val());
			}
		}
	});
}



function clearDataDanhMuc() {
	$("#DonViTinhIDHidden").val("");
	$("#TenDonViID").val("");
}

function loadListDanhMucDonViTinh(page) {
	$("#pageHiddenID").val(page);
	$.ajax({
		type : "POST",
		url : "../ajaxdanhmuc/GetListDanhMucDonViTinh",
		async : false,
		data : ({		
			page : page,
		}),
		success : function(data) {
			$("#ListDanhMucID").html(data);			
		}
	});
}


function editDanhMuc(danhmuc_maso) {
	var idClick = "#editDanhMuc_" + danhmuc_maso;
	var tenDanhMuc = $(idClick).parent().parent().children().children().eq(0).html().trim();
	$("#DonViTinhIDHidden").val(danhmuc_maso);
	$("#TenDonViID").val(tenDanhMuc);
}

function deleteDanhMuc(donViTinhID) {
	var page = $("#pageHiddenID").val();
	var danhmucdelete = $("#MsgError05").val();
	var danhmucdeletesuccess = $("#MsgXoaThanhCongID").val();
	var danhmucdeleteunsucess = $("#MsgXoaThatBaiID").val();

	var r = confirm(danhmucdelete);
	if (r == true) {
		$.ajax({
			type : "POST",
			url : "../ajaxdanhmuc/XoaDanhMucDonViTinh",
			async : false,
			data : ({
				donViTinhID : donViTinhID
			}),
			success : function(data) {
				if (data.trim() == "true") {
					alert(danhmucdeletesuccess);
					loadListDanhMucDonViTinh(page);	
					$("#DonViTinhIDHidden").val("");
				} else {
					alert(danhmucdeleteunsucess);
				}
			}
		});
	}
}
