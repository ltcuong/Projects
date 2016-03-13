$(document).ready(function() {

	$.validator.addMethod("valueNotEquals", function(value, element, arg) {
		return arg != value;
	}, "Value must not equal arg.");
	jQuery.extend(jQuery.validator.messages, {
		required : $("#MsgError01").val(),
		number : $("#MsgError03").val(),
		minlength : $.validator.format($("#MsgError04").val()),
		equalTo : $("#MsgError07").val(),
		email : $.validator.format($("#TextID02").val()),
	});
	
	
	$("input[name=cbHuyen]").each(function(){		
		$(this).prop('checked', false);
	});
	$( "#ListXaID" ).empty();
	$("#CheckAllID").prop('checked', false);
	$("#ListXaChooseID").val("");
	$("#ListHuyenChooseID").val("");
	
	getListDanhSachTaiKhoan(1);
	
	$("#BtnCapNhatTaiKhoanID").click(function(){
		//getListXaThemMoiTaiKhoan(1);
		$("#thongTinHoSoForm").submit();
	});
	
	$("#thongTinHoSoForm").validate({
		rules : {
			tenDangNhap : {
                minlength : 4
            },
            email : {
				email : true
			},
			nhomID : {
				valueNotEquals : "0"
			},
			matKhau : {
                minlength : 6
            },
            matKhauConfirm : {
                minlength : 6,
                equalTo : "#MatKhauID"
            }
		},
		messages : {
			nhomID : {
				valueNotEquals : $("#MsgError02").val()
			}
		},
		submitHandler : function(form) {
			if ($("#ListHuyenChooseID").val().trim() == "" || (!$("#CheckAllID").is(':checked') && $("#ListXaChooseID").val().trim() == ""))  {
				alert($("#TextID01").val());
			} else {
				if (!checkTenTaiKhoanTonTai()) {
					themTinCoBanTaiKhoan();	
				} else {
					alert($("#TaiKhoanTonTaiError01").val());
				}
			}
		}
	});
	
	$(".CBHuyenChoose").click(function(){
		getListXaThemMoiTaiKhoan(1);
		
	});
	
});

function checkAllXa() {	
	$("#ListXaChooseID").val("");
	if ($("#CheckAllID").is(':checked')) {
		$("input[name=cbXa]").each(function(){		
			$(this).prop('checked', true);
		});
	} else {
		$("input[name=cbXa]").each(function(){		
			$(this).prop('checked', false);
		});
	}	
}

function chooseXa(id_clicked){
	if ($("#CheckAllID").is(':checked')) {
		$("#CheckAllID").prop('checked', false);
		$("#ListXaChooseID").val("");
		$("input[name=cbXa]").each(function(){		
			$(this).prop('checked', false);
		});
	} else {
		var valueCB = document.getElementById(id_clicked).value;
		var listCBChoose = $("#ListXaChooseID").val();
		var arrString = listCBChoose.split(",");	
		if(document.getElementById(id_clicked).checked) {
			arrString.push(valueCB);	
		} else {
			
			var i = arrString.indexOf(valueCB);
			if(i != -1) {
				arrString.splice(i,1);
			}
		}
		$("#ListXaChooseID").val(arrString);
	}
}


function getListXaThemMoiTaiKhoan(page) {
	var listHuyenStr = [];
	$("input[class=CBHuyenChoose]").each(function(){
		if ($(this).is(':checked')) { 
			listHuyenStr.push($(this).val());	
		}
	});
	if (listHuyenStr.toString() != "") {
		$.ajax({
			type : "POST",
			url : "../ajaxquanlynguoidung/GetListXaThemMoiTaiKhoan",
			async : false,
			data : ({
				page : page,
				listHuyenStr : listHuyenStr.toString()
			}),
			success : function(data) {
				$("#ListXaID").html(data);
				if (data.trim() == "") {
					$("#CheckAllID").prop('checked', true);
				} else {
					//Check all checkbox
					if ($("#CheckAllID").is(':checked')) {
						$("input[name=cbXa]").each(function(){		
							$(this).prop('checked', true);
						});
					} else {
						var listCBChoose = $("#ListXaChooseID").val();
						if (listCBChoose != "") {
							var arrString = listCBChoose.split(",");	
							$("input[name=cbXa]").each(function(){
								for ( var int = 0; int < arrString.length; int++) {
									if ($(this).val() == arrString[int]) {				
										$(this).prop('checked', true);
									}
								}		
							});
						}
					}
				}
				
				
			}
		});
	} else {
		$( "#ListXaID" ).empty();
		$("#CheckAllID").prop('checked', false);
	}
	$("#ListHuyenChooseID").val(listHuyenStr.toString());
}

function xoaThongTinTaiKhoan(tenDangNhap) {
	var r = confirm($("#MsgError05").val());
	if (r == true) {
		$.ajax({
			type : "POST",
			url : "../ajaxquanlynguoidung/XoaThongTinTaiKhoan",
			async : false,
			data : ({
				tenDangNhap : tenDangNhap
			}),
			success : function(data) {
				if (data.trim() == "true") {
					var page = $("#HiddenPageID").val();
					getListDanhSachTaiKhoan(page);
					alert($("#MsgXoaThanhCongID").val());
				} else {
					alert($("#MsgXoaThatBaiID").val());
				}
			}
		});
	}
}


function thayDoiTinhTrangTaiKhoan(tenDangNhap) {
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/ThayDoiTinhTrangTaiKhoan",
		async : false,
		data : ({
			tenDangNhap : tenDangNhap
		}),
		success : function(data) {
			if (data.trim() == "true") {
				var page = $("#HiddenPageID").val();
				getListDanhSachTaiKhoan(page);
			} else {
				alert($("#MsgCapNhatThatBaiID").val());
			}
		}
	});
}

function chinhSuaThongTinTaiKhoan(tenDangNhap) {
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/GetFormThongTinTaiKhoan",
		async : false,
		data : ({
			tenDangNhap : tenDangNhap
		}),
		success : function(data) {
			$("#FormTaiKhoanID").html(data);
			showPopUpDivWithSize('PopupThongTinTaiKhoanID', 900, 400);
			$("#thongTinHoSoFormPopup").validate({
				rules : {
					tenDangNhapPopup : {
		                minlength : 4
		            },
		            emailPopup : {
						email : true
					},
		            nhomIDPopup : {
						valueNotEquals : "0"
					},
					matKhauPopup : {
		                minlength : 6
		            },
		            matKhauConfirmPopup : {
		                minlength : 6,
		                equalTo : "#MatKhauIDPopup"
		            }
				},
				messages : {
					nhomIDPopup : {
						valueNotEquals : $("#MsgError02").val()
					}
				},
				submitHandler : function(form) {
					chinhSuaThongTinTaiKhoanDetail();
				}
			});
			
		}
	});
}

function chinhSuaThongTinTaiKhoanDetail() {
	var changePass = 0;
	if($("#CBDoiMatKhauID").is(':checked')) {
		changePass = 1;
	}
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/CapNhatThongTinCoBanTaiKhoan",
		async : false,
		data : ({
			tenDangNhap : $("#TenDangNhapIDPopup").val().trim(),
			matKhau : $("#MatKhauIDPopup").val().trim(),
			hoTen : $("#HoTenIDPopup").val().trim(),
			soDienThoai : $("#SoDienThoaiIDPopup").val().trim(),
			email : $("#EmailIDPopup").val().trim(),
			diaChi : $("#DiaChiIDPopup").val().trim(),
			nhomID : $("#NhomIDPopup").val().trim(),
			donViCongTac : $("#DonViCongTacIDPopup").val().trim(),
			chucVu : $("#ChucVuIDPopup").val().trim(),
			changePass : changePass,
		}),
		success : function(data) {
			if (data.trim() == "true") {
				alert($("#MsgCapNhatThanhCongID").val());
				var page = $("#HiddenPageID").val();
				getListDanhSachTaiKhoan(page);
				closePopup();
			} else {
				alert($("#MsgCapNhatThatBaiID").val());
			}
		}
	});
}

function changeMatKhauTaiKhoan() {
	if($("#CBDoiMatKhauID").is(':checked')) {
		$("#MatKhauIDPopup").prop("disabled", false);  
		$("#MatKhauConfirmIDPopup").prop("disabled", false);  
		$("#MatKhauIDPopup").val("");
		$("#MatKhauConfirmIDPopup").val("");
	} else {
		$("#MatKhauIDPopup").prop("disabled", true);  
		$("#MatKhauConfirmIDPopup").prop("disabled", true);  
		$("#MatKhauIDPopup").val("******");
		$("#MatKhauConfirmIDPopup").val("******");
	}
}

function themTinCoBanTaiKhoan() {
	var allXa = 0;
	if ($("#CheckAllID").is(':checked')) { 
		allXa = 1;
	}
	var listXaQuanLy =  $("#ListXaChooseID").val().trim();
	if (listXaQuanLy != "") {
		listXaQuanLy = listXaQuanLy.substring (1,listXaQuanLy.length);
	}
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/ThemThongTinCoBanTaiKhoan",
		async : false,
		data : ({
			tenDangNhap : $("#TenDangNhapID").val().trim(),
			matKhau : $("#MatKhauID").val().trim(),
			hoTen : $("#HoTenID").val().trim(),
			soDienThoai : $("#SoDienThoaiID").val().trim(),
			email : $("#EmailID").val().trim(),
			diaChi : $("#DiaChiID").val().trim(),
			nhomID : $("#NhomID").val().trim(),
			donViCongTac : $("#DonViCongTacID").val().trim(),
			chucVu : $("#ChucVuID").val().trim(),
			allXa : allXa,
			listHuyenQuanLy: $("#ListHuyenChooseID").val().trim(),
			listXaQuanLy : listXaQuanLy,
			changePass : 1,
		}),
		success : function(data) {
			if (data.trim() == "true") {
				alert($("#MsgCapNhatThanhCongID").val());
				$("#TenDangNhapID").val("");
				$("#MatKhauID").val("");
				$("#MatKhauConfirmID").val("");
				$("#HoTenID").val("");
				$("#SoDienThoaiID").val("");
				$("#EmailID").val("");
				$("#DiaChiID").val("");
				$("#NhomID").val(0);
				$("#DonViCongTacID").val("");
				$("#ChucVuID").val("");
				$("input[name=cbHuyen]").each(function(){		
					$(this).prop('checked', false);
				});
				$( "#ListXaID" ).empty();
				$("#CheckAllID").prop('checked', false);
				$("#ListXaChooseID").val("");
				$("#ListHuyenChooseID").val("");
				getListDanhSachTaiKhoan(1);
			} else {
				alert($("#MsgCapNhatThatBaiID").val());
			}
		}
	});
}

function checkTenTaiKhoanTonTai() {
	var result = false;
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/CheckTenTaiKhoanDaTonTai",
		async : false,
		data : ({
			tenDangNhap : $("#TenDangNhapID").val().trim()
		}),
		success : function(data) {
			if (data.trim() == "true") {
				result = true;
			} else {
				result =  false;
			}
		}
	});
	return result;
}

function getListDanhSachTaiKhoan(page) {
	$("#HiddenPageID").val(page);
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/GetListDanhSachTaiKhoan",
		async : false,
		data : ({
			page : page
		}),
		success : function(data) {
			$("#DanhSachTaiKhoanID").html(data);
		}
	});
}


function nhapLaiThongTinTaiKhoan() {
	$("#TenDangNhapID").val("");
	$("#MatKhauID").val("");
	$("#MatKhauConfirmID").val("");
	$("#HoTenID").val("");
	$("#SoDienThoaiID").val("");
	$("#EmailID").val("");
	$("#DiaChiID").val("");
	$("#NhomID").val(0);
	$("#DonViCongTacID").val("");
	$("#ChucVuID").val("");
	getListDanhSachTaiKhoan(1);
}