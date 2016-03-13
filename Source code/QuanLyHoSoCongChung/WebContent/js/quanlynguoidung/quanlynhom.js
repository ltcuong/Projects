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
			var nhomMa = $("#MaNhomID").val().trim();
			var nhomTen = $("#TenNhomID").val().trim();
			var nhomChaID = $("#NhomTaiKhoanID").val().trim();
			themMoiNhomTaiKhoan(nhomMa, nhomTen, "", nhomChaID);
		}
	});
	$('#thongTinCoBanForm').on('keyup keypress', function(e) {
		  var code = e.keyCode || e.which;
		  if (code == 13) { 
		    e.preventDefault();
		    return false;
		  }
	});
	//loadListDanhSachNhom(1);
	$("#BtnNhapMoi").click(function() {
		$("#MaNhomID").val("");
		$("#TenNhomID").val("");
		loadListDanhSachNhom();
	});
});

function themMoiNhomTaiKhoan(nhomMa, nhomTen, nhomID, nhomChaID) {
	if (checkExistsMaNhom(nhomMa, nhomID)) {
		alert($("#ErrorMaNhomTonTaiID").val());
		return;
	} else if (checkExistsTenNhom(nhomTen, nhomID)) {
		alert($("#ErrorTenNhomTonTaiID").val());
		return;
	} else {
		//showWaitingProgress(event);
		$.ajax({
			type : "POST",
			url : "../ajaxquanlynguoidung/CapNhatThongTinNhomTaiKhoan",
			async : false,
			data : ({
				nhomMa : nhomMa,
				nhomTen : nhomTen,
				nhomID : nhomID,
				nhomChaID : nhomChaID
			}),
			success : function(data) {
				//closeWaitingProgress();
				if (data.trim() == "true") {
					alert($("#MsgCapNhatThanhCongID").val());
					loadListDanhSachNhom();
					getSelectNhomTaiKhoan();
					$("#MaNhomID").val("");
					$("#TenNhomID").val("");
					
				} else {
					alert($("#MsgCapNhatThatBaiID").val());
				}
			}
		});
	}
}

function chinhSuaNhomTaiKhoan(nhomID) {
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/GetFormThongTinNhomTaiKhoan",
		async : false,
		data : ({
			nhomID : nhomID
		}),
		success : function(data) {
			$("#FormNhomTaiKhoanID").html(data);
			showPopUpDiv('PopupThongTinNhomTaiKhoanID');
			$("#thongTinCoBanFormPopup").validate({
				rules : {
				},
				messages : {
				},
				submitHandler : function(form) {
					var nhomMa = $("#MaNhomIDPopup").val().trim();
					var nhomTen = $("#TenNhomIDPopup").val().trim();
					var nhomChaID = $("#NhomTaiKhoanPopupID").val().trim();
					themMoiNhomTaiKhoan(nhomMa, nhomTen, nhomID, nhomChaID);
					closePopup();
					loadListDanhSachNhom();
					getSelectNhomTaiKhoan();
				}
			});
			
		}
	});
}


function changeStatusNhom(nhomID) {
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/UpdateStatusNhomTaiKhoan",
		async : false,
		data : ({
			nhomID : nhomID
		}),
		success : function(data) {
			if (data.trim() == "true") {
				loadListDanhSachNhom();
				alert($("#MsgCapNhatThanhCongID").val());
			} else {
				alert($("#MsgCapNhatThatBaiID").val());
			}
		}
	});
}

function deleteNhomTaiKhoan(nhomID) {
	var r = confirm($("#MsgError05").val());
	if (r == true) {
		$.ajax({
			type : "POST",
			url : "../ajaxquanlynguoidung/DeleteNhomTaiKhoan",
			async : false,
			data : ({
				nhomID : nhomID
			}),
			success : function(data) {
				if (data.trim() == "true") {
					loadListDanhSachNhom();
					getSelectNhomTaiKhoan();
					alert($("#MsgCapNhatThanhCongID").val());
				} else {
					alert($("#ErrorNhomDangSuDungID").val());
				}
			}
		});
	}
}

function editNhomTaiKhoan(id_nhom, nhomkhoitao) {
	
}


function loadListDanhSachNhom() {
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/GetListDanhSachNhom",
		async : false,
		data : ({
			
		}),
		success : function(data) {
			$('#DanhSachNhomID').html(data);
		}
	});
}


function checkExistsMaNhom(nhomMa, nhomID) {
	var result = false;
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/CheckExistsMaNhom",
		async : false,
		data : ({
			nhomMa : nhomMa,
			nhomID : nhomID
		}),
		success : function(data) {
			if (data.trim() == "true") {					
				result = true;					
			}
		}
	});
	return result;
}

function checkExistsTenNhom(nhomTen, nhomID) {
	var result = false;
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/CheckExistsTenNhom",
		async : false,
		data : ({
			nhomTen : nhomTen,
			nhomID : nhomID
		}),
		success : function(data) {
			if (data.trim() == "true") {
				result =  true;
			}
		}
	});
	return result;
}