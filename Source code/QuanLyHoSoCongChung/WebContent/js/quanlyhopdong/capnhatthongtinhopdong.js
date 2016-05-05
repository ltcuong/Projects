$(document).ready(function() {	
	$.validator.addMethod("valueNotEquals", function(value, element, arg) {
		return arg != value;
	}, $("#MsgError02").val());
	$.validator.addMethod("lessThan", function (value, element, param) {
	    var $min = $(param);
	    if (this.settings.onfocusout) {
	        $min.off(".validate-greaterThan").on("blur.validate-greaterThan", function () {
	            $(element).valid();
	        });
	    }
	    if (value.trim() == "") {
	    	value = 0;
	    }
	    var valueMin = $min.val().trim();
	    if (valueMin == "") {
	    	valueMin = 0;
	    }
	    return parseInt(value) <= parseInt(valueMin);
	},  $("#MsgError08").val());
	
	jQuery.extend(jQuery.validator.messages, {
		required : $("#MsgError01").val(),
		number : $("#MsgError03").val(),
		minlength : $.validator.format($("#MsgError04").val()),
		equalTo : $("#MsgError07").val(),
		email : $.validator.format($("#TextID02").val()),
	});
	//Datepicker
	$( "#NgayGiayDKKDID" ).datepicker();
	$( "#NgaySinhNguoiDaiDienToChucID" ).datepicker();
	$( "#NgayCapGiayUyQuyenID" ).datepicker();
	$( "#NgaySinhID" ).datepicker();
	$( "#NgayCapCaNhanID" ).datepicker();
	$( "#NgaySinhNguoiUyQuyenID" ).datepicker();
	$( "#NgayCapNguoiUyQuyenID" ).datepicker();
	$("#StepHiddenID").val(1);
	
	$("#CBNguoiDiCongChungLaUyQuyenID").prop('checked', false);
	
	
	var loaiDuongSuID = $("#LoaiDuongSuID").val();
	if (loaiDuongSuID == 1) {
		$("#FormCaNhanID").removeClass("DisplayNone");
		$("#FormToChucID").addClass("DisplayNone");
	} else {
		$("#FormCaNhanID").addClass("DisplayNone");
		$("#FormToChucID").removeClass("DisplayNone");
	}
	
	$("#ThongTinFormLoaiHopDongID").validate({
		rules : {
			loaiHopDong : {
				valueNotEquals : "0"
			},
			chiTietLoaiHopDong : {
				valueNotEquals : "0"
			},
		},
		messages : {
			
		},
		submitHandler : function(form) {
			$("#CheckValidateID").val("true");
		}
	});
	$("#ThongTinFormDuongSuCaNhanID").validate({
		rules : {
			loaiGiayToCaNhan : {
				valueNotEquals : "0"
			},
			tinhThanhCaNhan : {
				valueNotEquals : "0"
			},
			quanHuyenCaNhan : {
				valueNotEquals : "0"
			},
			phuongXaCaNhan : {
				valueNotEquals : "0"
			},
		},
		messages : {
			
		},
		submitHandler : function(form) {
			$("#CheckValidateID").val("true");
		}
	});
	
	$("#ThongTinFormDuongSuToChucID").validate({
		rules : {
			tinhThanhToChuc : {
				valueNotEquals : "0"
			},
			quanHuyenToChuc : {
				valueNotEquals : "0"
			},
			phuongXaToChuc : {
				valueNotEquals : "0"
			},
			loaiGiayToToChuc : {
				valueNotEquals : "0"
			},
		},
		messages : {
			
		},
		submitHandler : function(form) {
			$("#CheckValidateID").val("true");
		}
	});
	
	$("#ThongTinFormNguoiUyQuyenID").validate({
		rules : {
			loaiGiayToNguoiUyQuyen : {
				valueNotEquals : "0"
			},
			tinhThanhNguoiUyQuyen : {
				valueNotEquals : "0"
			},
			quanHuyenNguoiUyQuyen : {
				valueNotEquals : "0"
			},
			phuongXaNguoiUyQuyen : {
				valueNotEquals : "0"
			},
		},
		messages : {
			
		},
		submitHandler : function(form) {
			$("#CheckValidateID").val("true");
		}
	});
	
	$("#BtnBuocTiepID").click(function(){
		var stepA = 1; var stepTaiSanA = 2;
		var stepB = 3; var stepTaiSanB = 4;
		var stepC = 5;
		var stepHopDong = 6; var stepPreviewHopDong = 7;
		var cotaisan = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisan');
		var cobenthu3 = $('option:selected', "#ChiTietLoaiHopDongID").attr('cobenthu3');
		var currentStepID = $("#StepHiddenID").val();
		//Luu thong tin o buoc hien tai truoc khi qua buoc moi
		var result = false;
		if (currentStepID == stepA || currentStepID == stepB || currentStepID == stepC) {
			//Thong tin duong su ben A, B, C
			$("#CheckValidateID").val("false");
			$("#ThongTinFormLoaiHopDongID").submit();
			if ($("#CheckValidateID").val() == "true") { 
				var loaiDuongSuID = $("#LoaiDuongSuID").val();
				if (loaiDuongSuID == 1) {
					$("#CheckValidateID").val("false");
					$("#ThongTinFormDuongSuCaNhanID").submit();
				} else {
					$("#CheckValidateID").val("false");
					$("#ThongTinFormDuongSuToChucID").submit();
				}
				if ($("#CBNguoiDiCongChungLaUyQuyenID").is(':checked')) { 
					$("#CheckValidateID").val("false");
					$("#ThongTinFormNguoiUyQuyenID").submit();
				}
				if ($("#CheckValidateID").val() == "true") {
					if (currentStepID == stepA) {
						//Luu thong tin ben A
						result = themThongTinDuongSu(1);					
					} else if (currentStepID == stepB) {
						//Luu thong tin ben B
						result = themThongTinDuongSu(2);
					} else if (currentStepID == stepC) {
						//Luu thong tin ben C
						result = themThongTinDuongSu(3);
					}
				}
			}
		} else if (currentStepID == stepTaiSanA || currentStepID == stepTaiSanB) {
			//Thong tin tai san
 			var listTaiSanHTML = $("#accordion").html().trim();
			if (cotaisan != 0 && listTaiSanHTML == "") {
				alert("Vui long nhap it nhat 1 tai san");
			} else {
				result = true;
			}
		} else if (currentStepID == stepHopDong) {
			capNhatThongTinHopDong();
			if ($("#CheckValidateHopDongID").val() == "true") {
				result = true;
				$("#CheckValidateHopDongID").val("false");
			}
		}
		var nextStepID = parseInt(currentStepID) + 1;
		if (result) {
			if (nextStepID == stepTaiSanA || nextStepID == stepTaiSanB) {
				if (cotaisan != 0 ) {
					$("#BtnQuayLaiID").removeClass("DisplayNone");
					$("#FormThongTinHopDongID").addClass("DisplayNone");
					$("#ThongTinBuoc2ID").removeClass("DisplayNone");
					$("#FormThongTinDongSoHuuTaiSanID").removeClass("DisplayNone");
					$("#LoaiHopDongID").prop('disabled', 'disabled');
					$("#CBHopDongSoanSanID").prop('disabled', 'disabled');
					$("#ChiTietLoaiHopDongID").prop('disabled', 'disabled');
					$("#StepHiddenID").val(nextStepID);
					loaiDanhSachTaiSanTam();
					getDanhSachDongSoHuuTaiSan();
				} else {
					//Truong hop khong co tai san giao dich thi chuyen den buoc 3
					getFormCapNhatThongTinDuongSu(2);
					$("#FormThongTinHopDongID").removeClass("DisplayNone");
					$("#ThongTinBuoc2ID").addClass("DisplayNone");
					if (nextStepID == stepTaiSanA) {
						$("#StepHiddenID").val(stepB);	
					} else if (nextStepID == stepTaiSanB) {
						$("#StepHiddenID").val(stepC);	
					}
					$("#BtnQuayLaiID").removeClass("DisplayNone");
					$("#FormThongTinDongSoHuuTaiSanID").removeClass("DisplayNone");
					getDanhSachDongSoHuuTaiSan();
				}
			} else if (nextStepID == stepB) {
				getFormCapNhatThongTinDuongSu(2);
				$("#FormThongTinHopDongID").removeClass("DisplayNone");
				$("#ThongTinBuoc2ID").addClass("DisplayNone");
				$("#StepHiddenID").val(nextStepID);
				$("#BtnQuayLaiID").removeClass("DisplayNone");
				if (cotaisan != 2 ) {
					$("#FormThongTinDongSoHuuTaiSanID").removeClass("DisplayNone");
					getDanhSachDongSoHuuTaiSan();
				} else {
					$("#FormThongTinDongSoHuuTaiSanID").addClass("DisplayNone");
				}
			} else if (nextStepID == stepC) {
				//Ben C
				if (cobenthu3 == 1) {
					getFormCapNhatThongTinDuongSu(3);
					$("#StepHiddenID").val(nextStepID);
					$("#FormThongTinDongSoHuuTaiSanID").removeClass("DisplayNone");
					getDanhSachDongSoHuuTaiSan();
				} else {
					//Load form thong tin hop dong tuong ung
					$("#FormThongTinDongSoHuuTaiSanID").addClass("DisplayNone");
					$("#FormThongTinHopDongID").addClass("DisplayNone");
					$("#ThongTinChiTietHopDongID").removeClass("DisplayNone");
					$("#StepHiddenID").val(parseInt(nextStepID) + 1);
					$("#ThongTinBuoc2ID").addClass("DisplayNone");
					if ($("#ThongTinChiTietHopDongID").html().trim() == "") {
						loadFormThongTinHopDong();	
					}
				}
			} else if (nextStepID == stepHopDong) {
				//Load form thong tin hop dong tuong ung
				$("#FormThongTinDongSoHuuTaiSanID").addClass("DisplayNone");
				$("#FormThongTinHopDongID").addClass("DisplayNone");
				$("#ThongTinChiTietHopDongID").removeClass("DisplayNone");
				$("#StepHiddenID").val(nextStepID);
				$("#ThongTinBuoc2ID").addClass("DisplayNone");
				if ($("#ThongTinChiTietHopDongID").html().trim() == "") {
					loadFormThongTinHopDong();	
				}
			} else if (nextStepID == stepPreviewHopDong) {
				//load thong tin preview hop dong
				$("#FormThongTinDongSoHuuTaiSanID").addClass("DisplayNone");
				$("#FormThongTinHopDongID").addClass("DisplayNone");
				$("#ThongTinChiTietHopDongID").addClass("DisplayNone");
				$("#StepHiddenID").val(nextStepID);
				$("#ThongTinPreviewHopDongID").removeClass("DisplayNone");
				previewHopDong();
			}
		}
	});
	
	$("#BtnQuayLaiID").click(function(){
		var stepA = 1; var stepTaiSanA = 2;
		var stepB = 3; var stepTaiSanB = 4;
		var stepC = 5;
		var stepHopDong = 6; var stepPreviewHopDong = 7;
		var cotaisan = $('option:selected', "#ChiTietLoaiHopDongID").attr('cotaisan');
		var cobenthu3 = $('option:selected', "#ChiTietLoaiHopDongID").attr('cobenthu3');
		var currentStep = $("#StepHiddenID").val();
		if (currentStep == stepPreviewHopDong) {
			$("#ThongTinPreviewHopDongID").addClass("DisplayNone");
			$("#ThongTinPreviewHopDongID").html("");
			$("#StepHiddenID").val(parseInt(currentStep) - 1);
			$("#FormThongTinDongSoHuuTaiSanID").addClass("DisplayNone");
			$("#FormThongTinHopDongID").addClass("DisplayNone");
			$("#ThongTinChiTietHopDongID").removeClass("DisplayNone");
		} else if (currentStep == stepHopDong) {
			if (cobenthu3 == 0) {
				if (cotaisan == 2) {
					$("#FormThongTinHopDongID").addClass("DisplayNone");
					$("#ThongTinBuoc2ID").removeClass("DisplayNone");
					$("#FormThongTinDongSoHuuTaiSanID").removeClass("DisplayNone");
					$("#ThongTinChiTietHopDongID").addClass("DisplayNone");
					$("#StepHiddenID").val(stepTaiSanB);
					getDanhSachDongSoHuuTaiSan();
				} else {
					//Load thong tin ben B
					getFormCapNhatThongTinDuongSu(2);
					$("#FormThongTinDongSoHuuTaiSanID").removeClass("DisplayNone");
					$("#StepHiddenID").val(stepB);
					getDanhSachDongSoHuuTaiSan();
				}
				
			} else {
				//Load thong tin ben C
				getFormCapNhatThongTinDuongSu(2);
				$("#FormThongTinDongSoHuuTaiSanID").removeClass("DisplayNone");
				$("#StepHiddenID").val(parseInt(currentStep) - 1);
				getDanhSachDongSoHuuTaiSan();
			}
		} else if (currentStep == stepC) {
			if (cotaisan == 2) {
				$("#FormThongTinHopDongID").addClass("DisplayNone");
				$("#ThongTinBuoc2ID").removeClass("DisplayNone");
				$("#FormThongTinDongSoHuuTaiSanID").removeClass("DisplayNone");
				$("#StepHiddenID").val(stepTaiSanB);
				getDanhSachDongSoHuuTaiSan();
			} else {
				//Load thong tin ben B
				getFormCapNhatThongTinDuongSu(2);
				$("#FormThongTinDongSoHuuTaiSanID").removeClass("DisplayNone");
				$("#StepHiddenID").val(stepB);
				getDanhSachDongSoHuuTaiSan();
			}
		} else if (currentStep == stepTaiSanB) {
			//Load thong tin ben B
			getFormCapNhatThongTinDuongSu(2);
			$("#FormThongTinHopDongID").removeClass("DisplayNone");
			$("#ThongTinBuoc2ID").addClass("DisplayNone");
			$("#StepHiddenID").val(parseInt(currentStep) - 1);
			if (cotaisan != 2) {
				$("#FormThongTinDongSoHuuTaiSanID").removeClass("DisplayNone");
				getDanhSachDongSoHuuTaiSan();
			} else {
				$("#FormThongTinDongSoHuuTaiSanID").addClass("DisplayNone");
			}
		} else if (currentStep == stepB) {
			//Load thong tin tai san
			if (cotaisan != 0) {
				$("#FormThongTinHopDongID").addClass("DisplayNone");
				$("#ThongTinBuoc2ID").removeClass("DisplayNone");
				$("#FormThongTinDongSoHuuTaiSanID").removeClass("DisplayNone");
				$("#StepHiddenID").val(parseInt(currentStep) - 1);
				loaiDanhSachTaiSanTam();
				getDanhSachDongSoHuuTaiSan();
			} else {
				//Load thong tin tai san
				getFormCapNhatThongTinDuongSu(1);
				$("#BtnQuayLaiID").addClass("DisplayNone");
				$("#FormThongTinHopDongID").removeClass("DisplayNone");
				$("#LoaiHopDongID").prop('disabled', false);
				$("#CBHopDongSoanSanID").prop('disabled', false);
				$("#ChiTietLoaiHopDongID").prop('disabled', false);
				$("#ThongTinBuoc2ID").addClass("DisplayNone");
				$("#StepHiddenID").val(parseInt(currentStep) - 1);
			}
			
		} else if (currentStep == stepTaiSanA) {
			//Load thong tin duong su A
			getFormCapNhatThongTinDuongSu(1);
			$("#BtnQuayLaiID").addClass("DisplayNone");
			$("#FormThongTinHopDongID").removeClass("DisplayNone");
			$("#LoaiHopDongID").prop('disabled', false);
			$("#CBHopDongSoanSanID").prop('disabled', false);
			$("#ChiTietLoaiHopDongID").prop('disabled', false);
			$("#ThongTinBuoc2ID").addClass("DisplayNone");
			$("#StepHiddenID").val(parseInt(currentStep) - 1);
		}
	});
	
	
	$("#BtnCapNhatTaiSanPopupID").click(function(){
		var loaiHopDongChiTietID = $("#ChiTietLoaiHopDongID").val();
		var loaiTaiSanID = $("#LoaiTaiSanID").val().trim();
		var tenKhoaTaiSan = $("#KhoaTaiSanID").val().trim();
		var flag = true;
		if (loaiTaiSanID == 0) {
			$("#LoaiTaiSanID-error").removeClass("DisplayNone");
			flag = false;
		} else {
			$("#LoaiTaiSanID-error").addClass("DisplayNone");
		}
		if (tenKhoaTaiSan == "") {
			$("#KhoaTaiSanID-error").removeClass("DisplayNone");
			flag = false;
		} else {
			$("#KhoaTaiSanID-error").addClass("DisplayNone");
		}
		if (flag) {
			switch (parseInt(loaiTaiSanID)) {
			case 1:
				$("#FormTaiSanKhongCoBDSGanVoiDatID").submit();
				break;
			case 2:
				$("#FormTaiSanBeCaID").submit();
				break;
			case 3:
				$("#FormTaiSanCanHoID").submit();
				break;
			case 4:
				$("#FormTaiSanCoPhieuID").submit();
				break;
			case 5:
				$("#FormTaiSanCongTrinhKienTrucID").submit();
				break;
			case 6:
				
				break;
			case 7:
				
				break;
			case 8:
				$("#FormTaiSanMoToXeMayID").submit();
				break;
			case 9:
				if (loaiHopDongChiTietID == 4) {
					$("#FormTaiSanChuyenDoiNhaOID").submit();
				} else {
					$("#FormTaiSanNhaID").submit();
				}
				break;
			case 10:
				$("#FormTaiSanOToID").submit();
				break;
			case 11:
				$("#FormTaiSanSoTietKiemID").submit();
				break;
			case 12:
				
				break;
			case 13:
				$("#FormTaiSanTauBienID").submit();
				break;
			case 14:
				$("#FormTaiSanTauCaID").submit();
				break;
			case 15:
				$("#FormTaiSanTauKeoGheThuyenID").submit();
				break;
			case 16:
				
				break;
			default:
				break;
			}
		}
	});
	
	$("#BtnHoanTatID").click(function(){
		var r = confirm($("#MsgConfirmHoanThanhID").val());
		if (r == true) {
			$.ajax({
				type : "POST",
				url : "../ajaxhopdong/CapNhatHoanThanhHoSoCongChung",
				async : false,
				data : ({
					
				}),
				success : function(data) {
					if (data.trim() == "true") {
						alert($("#MsgCapNhatThanhCongID").val());
					} else {
						alert($("#MsgCapNhatThatBaiID").val());
					}
				}
			});
		}
	});
	
	
});

function loaiDanhSachTaiSanTam() {
	var loaiHopDongChiTietID = $("#ChiTietLoaiHopDongID").val(); 
	var benSoHuuTaiSan = 1;
	if ($("#StepHiddenID").val() != 2) {
		benSoHuuTaiSan = 2;
	}
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/GetDanhSachTaiSanHopDongTam",
		async : false,
		data : ({		
			loaiHopDongChiTietID : loaiHopDongChiTietID,
			benSoHuuTaiSan : benSoHuuTaiSan
		}),
		success : function(data) {
			$("#ListTaiSanTamID").html(data);
			$( "#accordion" ).accordion({
		      collapsible: true,
		      active: false,
		      heightStyle: "content"
		    });
		}
	});
}

function previewHopDong() {
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/PreviewHopDong",
		async : false,
		data : ({		
		}),
		success : function(data) {
			$("#ThongTinPreviewHopDongID").html(data);
		}
	});
}

function showPopupThemMoiTaiSanDuongSu() {
	$("#LoaiTaiSanID").val(0);
	$("#KhoaTaiSanID").val("");
	$("#FormThongTinThemTaiSanID").html("");
	$("#LoaiTaiSanID-error").addClass("DisplayNone");
	$("#KhoaTaiSanID-error").addClass("DisplayNone");
	showPopUpDivWithSize("PopupThemMoiTaiSanID", 700);
}

function showPopupThemMoiDongSoHuuTaiSan() {
	//Load form thong tin dong so huu tai san
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/GetFormCapNhatThongTinDongSoHuuTaiSan",
		async : false,
		data : ({		
			
		}),
		success : function(data) {
			$("#ThongTinDongSoHuuID").html(data);
			$( "#NgaySinhDongSoHuuID" ).datepicker();
			$( "#NgayCapDongSoHuuID" ).datepicker();
			$("#FormDongSoHuuTaiSanID").validate({
				rules : {
					loaiGiayToDongSoHuu : {
						valueNotEquals : "0"
					},
					tinhThanhDongSoHuu : {
						valueNotEquals : "0"
					},
					quanHuyenDongSoHuu : {
						valueNotEquals : "0"
					},
					phuongXaDongSoHuu : {
						valueNotEquals : "0"
					},
				},
				messages : {
					
				},
				submitHandler : function(form) {
					capNhatThongTinDongSoHuuTaiSan();
				}
			});
			
		}
	});
	showPopUpDivWithSize("PopupThemMoiDongSuHuuTaiSanID", 500);
}


function capNhatThongTinDongSoHuuTaiSan() {
	var benSoHuu = 1;
	if ($("#StepHiddenID").val() == 3) {
		benSoHuu = 2;
	} else if ($("#StepHiddenID").val() == 4) {
		benSoHuu = 3;
	}
	var ngaySinh = "";
	var namSinh = "";
	if ($("#CBNamSinhDongSoHuuID").is(':checked')) { 
		namSinh = $("#NgaySinhDongSoHuuID").val().trim();
	} else {
		ngaySinh = $("#NgaySinhDongSoHuuID").val().trim();	
	}
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/CapNhatThongTinNguoiDongSoHuuTaiSan",
		async : false,
		data : ({		
			benSoHuu : benSoHuu,
			hoTen : $("#TenDuongSuDongSoHuuID").val().trim(),
			ngaySinh : ngaySinh,
			namSinh : namSinh,
			loaiGiayToID : $("#LoaiGiayToDongSoHuuDongSoHuuID").val().trim(),
			soGiayTo : $("#SoGiayToDongSoHuuID").val().trim(),
			ngayCapGiayTo : $("#NgayCapDongSoHuuID").val().trim(),
			noiCapGiayTo : $("#NoiCapGiayToDongSoHuuID").val().trim(),
			tinhThuongTruID : $("#TinhThanhDongSoHuuID").val().trim(),
			huyenThuongTruID : $("#QuanHuyenDongSoHuuID").val().trim(),
			xaThuongTruID : $("#PhuongXaDongSoHuuID").val().trim(),
			soNhaThuongTru : $("#SoNhaDuongPhoDongSoHuuID").val().trim(),
			diaChiLienHe : $("#DiaChiLienHeDongSoHuuID").val().trim(),
			loaiDuongSuID : 1
		}),
		success : function(data) {
			if (data.trim() == "true") {
				closePopup();
				getDanhSachDongSoHuuTaiSan();
			}
		}
	});
}

function getDanhSachDongSoHuuTaiSan() {
	var benSoHuu = 1;
	if ($("#StepHiddenID").val() == 4) {
		benSoHuu = 2;
	} else if ($("#StepHiddenID").val() == 5) {
		benSoHuu = 3;
	}
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/GetDanhSachDongSoHuuTaiSan",
		async : false,
		data : ({		
			benSoHuu : benSoHuu
		}),
		success : function(data) {
			$("#ListDongSoHuuTaiSanTamID").html(data);
			$( "#accordionDongSohuu" ).accordion({
		      collapsible: true,
		      active: false,
		      heightStyle: "content"
		    });
		}
	});
}

function checkNamSinhDongSoHuu() {
	if ($("#CBNamSinhDongSoHuuID").is(':checked')) { 
		$( "#NgaySinhDongSoHuuID" ).datepicker( "destroy" );
	} else {
		$( "#NgaySinhDongSoHuuID" ).datepicker();
	}
}


function changeLoaiTaiSan() {
	var loaiTaiSanID = $("#LoaiTaiSanID").val();
	var loaiHopDongChiTietID = $("#ChiTietLoaiHopDongID").val();
	var coGiaoDichMotPhan = $('option:selected', "#LoaiTaiSanID").attr('coGiaoDichMotPhan');
	var coTaiSanGanLien = $('option:selected', "#ChiTietLoaiHopDongID").attr('coTaiSanGanLien');
	
	var urlArry = ["GetFormCapNhatTaiSanBatDongSanKhongCoTaiSanGanLienVoiDat","GetFormCapNhatTaiSanBeCa","GetFormCapNhatTaiSanCanHo","GetFormCapNhatTaiSanCoPhieu",
	            "GetFormCapNhatTaiSanCongTrinhKienTruc","GetFormCapNhatTaiSanMayBay","GetFormCapNhatTaiSanMayMoc","GetFormCapNhatTaiSanMoToXeMay",
	            "GetFormCapNhatTaiSanNha", "GetFormCapNhatTaiSanOTo","GetFormCapNhatTaiSanSoTietKiem","GetFormCapNhatTaiSanLaDongSanKhac","GetFormCapNhatTaiSanTauBien",
	            "GetFormCapNhatTaiSanTauCa","GetFormCapNhatTaiSanTauKeoGheThuyen","GetFormCapNhatTaiSanTraiPhieu"];
	var url = "";
	if (loaiTaiSanID != 0) {
		if (loaiHopDongChiTietID == 4 && loaiTaiSanID == 9) {
			url = "../ajaxhopdong/GetFormCapNhatTaiSanChuyenDoiNhaO";
		} else if (loaiHopDongChiTietID == 3 && loaiTaiSanID == 1) {
			url = "../ajaxhopdong/GetFormCapNhatTaiSanChuyenDoiQuyenSuDungDat";
		} else {
			url = "../ajaxhopdong/" + urlArry[loaiTaiSanID - 1];
		}
		
		$.ajax({
			type : "POST",
			url : url,
			async : false,
			data : ({		
				coGiaoDichMotPhan : coGiaoDichMotPhan,
				coTaiSanGanLien : coTaiSanGanLien
			}),
			success : function(data) {
				$("#FormThongTinThemTaiSanID").html(data);
				//Validate thong tin tai san
				var result = false;
				switch (parseInt(loaiTaiSanID)) {
				case 1:
					$( "#NgayCapGiayChungNhanQSDDID" ).datepicker();
					if (coTaiSanGanLien == 1) {
						$( "#NgayCapGiayChungNhanGanLienID" ).datepicker();
					}
					$("#FormTaiSanKhongCoBDSGanVoiDatID").validate({
						rules : {
							dienTich : { number : true },
							hinhThucSuDungChung : { number : true },
							hinhThucSuDungRieng : { number : true },
							dienTichGiaoDichMotPhan : { number : true , lessThan: "#DienTichID" },
						},
						messages : { },
						submitHandler : function(form) { 
							result = capNhatTaiSanBDSKhongCoTSGanLienVoiDat();
							if (result) {
								closePopup();
								loaiDanhSachTaiSanTam();
							}
							
						}
					});
					break;
				case 2:
					$( "#NgayCapGDKPhuongTienNgheCaID" ).datepicker();
					$("#FormTaiSanBeCaID").validate({
						rules : {
							chieuDaiLmax : { number : true },
							chieuRongBmax : { number : true },
							chieuCaoD : { number : true },
							ltk : { number : true },
							namDong : { number : true , minlength: 4},
						},
						messages : { },
						submitHandler : function(form) { 
							result = capNhatTaiSanBeCa();
							if (result) {
								closePopup();
								loaiDanhSachTaiSanTam();
							}
						}
					});
					break;
				case 3:
					$( "#NgayCapGiayChungNhanQSDDID" ).datepicker();
					$( "#NgayCapGiayChungNhanQSHTSID" ).datepicker();
					$("#FormTaiSanCanHoID").validate({
						rules : {
							canHoSo : { number : true },
							soTangNhaChungCu : { number : true },
							canHoThuocTang : { number : true },
							dienTichDatXayDung : { number : true },
							tongDienTichSuDung : { number : true },
							dienTich : { number : true },
							hinhThucSuDungChung : { number : true },
							hinhThucSuDungRieng : { number : true },
							dienTichGiaoDichMotPhan : { number : true , lessThan: "#DienTichID" },
						},
						messages : { },
						submitHandler : function(form) { 
							result = capNhatTaiSanCanHo();
							if (result) {
								closePopup();
								loaiDanhSachTaiSanTam();
							}
						}
					});
					break;
				case 4:
					$( "#NgayPhatHanhID" ).datepicker();
					$( "#NgayCapGiayToTuyThanID" ).datepicker();
					$("#FormTaiSanCoPhieuID").validate({
						rules : {
							menhGia : { number : true },
							tongMenhGia : { number : true }
						},
						messages : { },
						submitHandler : function(form) { 
							result = capNhatTaiSanCoPhieu();
							if (result) {
								closePopup();
								loaiDanhSachTaiSanTam();
							}
						}
					});
					break;
				case 5:
					$( "#NgayCapGiayChungNhanQSDDID" ).datepicker();
					$( "#NgayCapGiayChungNhanQSHTSID" ).datepicker();
					$("#FormTaiSanCongTrinhKienTrucID").validate({
						rules : {
							soTang : { number : true },
							tongDienTichSuDung : { number : true },
							dienTichDatXayDung : { number : true },
							dienTich : { number : true },
							hinhThucSuDungRieng : { number : true },
							hinhThucSuDungChung : { number : true },
							dienTichGiaoDichMotPhan : { number : true , lessThan: "#DienTichID" },
						},
						messages : { },
						submitHandler : function(form) { 
							result = capNhatTaiSanCongTrinhKienTruc();
							if (result) {
								closePopup();
								loaiDanhSachTaiSanTam();
							}
						}
					});
					break;
				case 6:
					$( "#NgayCapGiayDangKyID" ).datepicker();
					result = capNhatTaiSanMayBay();
					if (result) {
						closePopup();
						loaiDanhSachTaiSanTam();
					}
					break;
				case 7:
					result = capNhatTaiSanMayMoc();
					if (result) {
						closePopup();
						loaiDanhSachTaiSanTam();
					}
					break;
				case 8:
					$( "#NgayCapGiayDangKyID" ).datepicker();
					$("#FormTaiSanMoToXeMayID").validate({
						rules : {
							namSanXuat : { number : true , minlength: 4}
						},
						messages : { },
						submitHandler : function(form) {
							result = capNhatTaiSanMoToXeMay();
							if (result) {
								closePopup();
								loaiDanhSachTaiSanTam();
							}
						}
					});
					break;
				case 9:
					if (loaiHopDongChiTietID == 4) {
						$( "#NgayCapGiayCNQSDDID" ).datepicker();
						$( "#ThoiHanThueDatTuNgayID" ).datepicker();
						$( "#ThoiHanThueDatDenNgayID" ).datepicker();
						$("#FormTaiSanChuyenDoiNhaOID").validate({
							rules : {
								dienTichSan : { number : true },
								dienTichSuDung : { number : true },
								dienTichSuDungChung : { number : true },
								dienTichSuDungRieng : { number : true },
							},
							messages : { },
							submitHandler : function(form) {
								result = capNhatTaiSanNha();
								if (result) {
									closePopup();
									loaiDanhSachTaiSanTam();
								}
							}
						});
					} else {
						$( "#NgayCapGiayChungNhanQSHTSID" ).datepicker();
						$( "#NgayCapGiayCNQSDDID" ).datepicker();
						$("#FormTaiSanNhaID").validate({
							rules : {
								dienTichSuDung : { number : true },
								dienTichSuDungChung : { number : true },
								dienTichSuDungRieng : { number : true },
								dienTichXayDung : { number : true },
								dienTichSan : { number : true },
								soTang : { number : true },
								dienTichGiaoDichMotPhan : { number : true , lessThan: "#DienTichSanID" },
							},
							messages : { },
							submitHandler : function(form) {
								result = capNhatTaiSanNha();
								if (result) {
									closePopup();
									loaiDanhSachTaiSanTam();
								}
							}
						});
					}
					break;
				case 10:
					$( "#NgayCapGiayDangKyID" ).datepicker();
					$("#FormTaiSanOToID").validate({
						rules : {
							namSanXuat : { number : true , minlength: 4},
							soChoNgoi : { number : true }
						},
						messages : { },
						submitHandler : function(form) {
							result = capNhatTaiSanOTo();
							if (result) {
								closePopup();
								loaiDanhSachTaiSanTam();
							}
						}
					});
					break;
				case 11:
					$( "#NgayCapGiayToTuyThanID" ).datepicker();
					$( "#NgayGuiID" ).datepicker();
					$("#FormTaiSanSoTietKiemID").validate({
						rules : {
							soDuTienGui : { number : true }
						},
						messages : { },
						submitHandler : function(form) {
							result = capNhatTaiSanSoTietKiem();
							if (result) {
								closePopup();
								loaiDanhSachTaiSanTam();
							}
						}
					});
					break;
				case 12:
					result = capNhatTaiSanLaDongSanKhac();
					if (result) {
						closePopup();
						loaiDanhSachTaiSanTam();
					}
					break;
				case 13:
					$( "#NgayCapGCNDKTauBienID" ).datepicker();
					$( "#NgayDangKyID" ).datepicker();
					$("#FormTaiSanTauBienID").validate({
						rules : {
							chieuDaiLmax : { number : true },
							chieuRongBmax : { number : true },
							chieuCaoMan : { number : true },
							namDong : { number : true ,minlength: 4}
						},
						messages : { },
						submitHandler : function(form) {
							result = capNhatTaiSanTauBien();
							if (result) {
								closePopup();
								loaiDanhSachTaiSanTam();
							}
						}
					});
					break;
				case 14:
					$( "#NgayCapGCNDKTauID" ).datepicker();
					$("#FormTaiSanTauCaID").validate({
						rules : {
							congSuat : { number : true },
							chieuDaiLmax : { number : true },
							ltk : { number : true },
							chieuRongBmax : { number : true },
							btk : { number : true },
							chieuCaoDmax : { number : true },
							chieuChimD : { number : true },
							namDong : { number : true ,minlength: 4}
						},
						messages : { },
						submitHandler : function(form) {
							result = capNhatTaiSanTauCa();
							if (result) {
								closePopup();
								loaiDanhSachTaiSanTam();
							}
						}
					});
					break;
				case 15:
					$( "#NgayCapGCNDKTauID" ).datepicker();
					$("#FormTaiSanTauKeoGheThuyenID").validate({
						rules : {
							congSuat : { number : true },
							chieuDaiLmax : { number : true },
							ltk : { number : true },
							chieuRongBmax : { number : true },
							btk : { number : true },
							chieuCaoDmax : { number : true },
							chieuChimD : { number : true },
							namDong : { number : true ,minlength: 4}
						},
						messages : { },
						submitHandler : function(form) {
							result = capNhatTaiSanTauKeoGheThuyen();
							if (result) {
								closePopup();
								loaiDanhSachTaiSanTam();
							}
						}
					});
					break;
				case 16:
					$( "#NgayPhatHanhID" ).datepicker();
					$( "#NgayCapGiayToTuyThanID" ).datepicker();
					result = capNhatTaiSanTraiPhieu();
					if (result) {
						closePopup();
						loaiDanhSachTaiSanTam();
					}
					break;
				default:
					break;
				}
			}
		});
	} else {
		$("#FormThongTinThemTaiSanID").html("");
	}
	
}

function changeTaiSanGanLien() {
	var loaiTaiSanGanLienID = $("#LoaiTaiSanGanLienID").val();
	if (loaiTaiSanGanLienID == 1) {
		$("#WarpTaiSanNhaID").removeClass("DisplayNone");
		$("#WarpTaiSanCongTrinhID").addClass("DisplayNone");
	} else {
		$("#WarpTaiSanCongTrinhID").removeClass("DisplayNone");
		$("#WarpTaiSanNhaID").addClass("DisplayNone");
	}
}

function changeLoaiDuongSu() {
	var loaiDuongSUID = $("#LoaiDuongSuID").val();
	if (loaiDuongSUID == 1) {
		$("#FormCaNhanID").removeClass("DisplayNone");
		$("#FormToChucID").addClass("DisplayNone");
	} else {
		$("#FormCaNhanID").addClass("DisplayNone");
		$("#FormToChucID").removeClass("DisplayNone");
	}
}



function getLoaiHopDongChiTiet() {
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/GetSelectLoaiHopDongChiTiet",
		async : false,
		data : ({		
			loaiHopDongID : $("#LoaiHopDongID").val().trim()
		}),
		success : function(data) {
			$("#ChiTietLoaiHopDongID").html(data);
		}
	});
}

function getLoaiTaiSanByLoaiHopDongChiTietID() {
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/GetSelectLoaiTaiSanByLoaiHopDong",
		async : false,
		data : ({		
			loaiHopDongChiTietID : $("#ChiTietLoaiHopDongID").val().trim()
		}),
		success : function(data) {
			$("#LoaiTaiSanID").html(data);
		}
	});
}

function getSelectHuyenByTinhID() {
	$.ajax({
		type : "POST",
		url : "../ajax/GetSelectHuyenFull",
		async : false,
		data : ({		
			tinhID : $("#TinhThanhCaNhanID").val().trim()
		}),
		success : function(data) {
			$("#QuanHuyenCaNhanID").html(data);
			getSelectXaByHuyenID();
		}
	});
}

function getSelectXaByHuyenID() {
	$.ajax({
		type : "POST",
		url : "../ajax/GetSelectXaFull",
		async : false,
		data : ({		
			huyenID : $("#QuanHuyenCaNhanID").val().trim()
		}),
		success : function(data) {
			$("#PhuongXaCaNhanID").html(data);
		}
	});
}

function getSelectHuyenByTinhToChucID() {
	$.ajax({
		type : "POST",
		url : "../ajax/GetSelectHuyenFull",
		async : false,
		data : ({		
			tinhID : $("#TinhThanhToChucID").val().trim()
		}),
		success : function(data) {
			$("#QuanHuyenToChucID").html(data);
			getSelectXaByHuyenToChucID();
		}
	});
}

function getSelectXaByHuyenToChucID() {
	$.ajax({
		type : "POST",
		url : "../ajax/GetSelectXaFull",
		async : false,
		data : ({		
			huyenID : $("#QuanHuyenToChucID").val().trim()
		}),
		success : function(data) {
			$("#PhuongXaToChucID").html(data);
		}
	});
}

function getSelectHuyenByTinhNguoiUyQuyenID() {
	$.ajax({
		type : "POST",
		url : "../ajax/GetSelectHuyenFull",
		async : false,
		data : ({		
			tinhID : $("#TinhThanhNguoiUyQuyenID").val().trim()
		}),
		success : function(data) {
			$("#QuanHuyenNguoiUyQuyenID").html(data);
			getSelectXaByHuyenNguoiUyQuyenID();
		}
	});
}

function getSelectXaByHuyenNguoiUyQuyenID() {
	$.ajax({
		type : "POST",
		url : "../ajax/GetSelectXaFull",
		async : false,
		data : ({		
			huyenID : $("#QuanHuyenNguoiUyQuyenID").val().trim()
		}),
		success : function(data) {
			$("#PhuongXaNguoiUyQuyenID").html(data);
		}
	});
}

function getSelectHuyenByTinhDongSoHuuID() {
	$.ajax({
		type : "POST",
		url : "../ajax/GetSelectHuyenFull",
		async : false,
		data : ({		
			tinhID : $("#TinhThanhDongSoHuuID").val().trim()
		}),
		success : function(data) {
			$("#QuanHuyenDongSoHuuID").html(data);
			getSelectXaByHuyenDongSoHuuID();
		}
	});
}

function getSelectXaByHuyenDongSoHuuID() {
	$.ajax({
		type : "POST",
		url : "../ajax/GetSelectXaFull",
		async : false,
		data : ({		
			huyenID : $("#QuanHuyenDongSoHuuID").val().trim()
		}),
		success : function(data) {
			$("#PhuongXaDongSoHuuID").html(data);
		}
	});
}

function chiHienNamSinhCaNhan() {
	if ($("#CBNamSinhCaNhanID").is(':checked')) { 
		$( "#NgaySinhID" ).datepicker( "destroy" );
	} else {
		$( "#NgaySinhID" ).datepicker();
	}
}

function chiHienNamSinhToChuc() {
	if ($("#CBNamSinhToChucID").is(':checked')) { 
		$( "#NgaySinhNguoiDaiDienToChucID" ).datepicker( "destroy" );
	} else {
		$( "#NgaySinhNguoiDaiDienToChucID" ).datepicker();
	}
}

function chiHienNamSinhNguoiUyQuyen() {
	if ($("#CBNamSinhNguoiUyQuyenID").is(':checked')) { 
		$( "#NgaySinhNguoiUyQuyenID" ).datepicker( "destroy" );
	} else {
		$( "#NgaySinhNguoiUyQuyenID" ).datepicker();
	}
}

function showFormNguoiDiCongChungLaUyQuyen() {
	if ($("#CBNguoiDiCongChungLaUyQuyenID").is(':checked')) { 
		$( "#WarpThongTinNguoiUyQuyenID" ).removeClass( "DisplayNone" );
	} else {
		$( "#WarpThongTinNguoiUyQuyenID" ).addClass( "DisplayNone" );
	}
}

function checkCoGiaoDichMotPhan() {
	if ($("#CBGiaoDichMotPhanID").is(':checked')) { 
		$( "#FieldGiaoDich1PhanID" ).removeClass( "DisplayNone" );
	} else {
		$( "#FieldGiaoDich1PhanID" ).addClass( "DisplayNone" );
	}
}