$(document).ready(function() {
	$.validator.addMethod("valueNotEquals", function(value, element, arg) {
		return arg != value;
	}, $("#MsgError02").val());
	
	
	jQuery.extend(jQuery.validator.messages, {
		required : $("#MsgError01").val(),
		number : $("#MsgError03").val(),
		minlength : $.validator.format($("#MsgError04").val()),
	});
	
	$("#ChiTieuChooseID").val("");
	
	$("#btnTaoBaoCaoID").click(function(){
		$("#ThongTinBaoCaoID").submit();
		
	});
	
	$("#ThongTinBaoCaoID").validate({
		rules : {
		},
		messages : {
		},
		submitHandler : function(form) {
			capNhatThongTinCauHinhBaoCao();
		}
	});
});

function capNhatThongTinCauHinhBaoCao() {
	var chiTieuArr = [];
	var flag = false;
	$("input[class=CBChooseChiTieu]").each(function(){
		if (!$(this).is(':checked')) { 
			chiTieuArr.push($(this).val());	
		} else {
			flag = true;
		}
	});
	
	if (!flag) {
		alert($("#TextID01").val());
	} else {
		var baoCaoID = $("#BaoCaoIDHidden").val();
		var maBaoCao = $("#MaBaoCaoID").val();
		var tenBaoCao = $("#TenBaoCaoID").val();
		var laBaoCaoXa = 0;
		var laBaoCaoHuyen = 0;
		var laBaoCaoTinh = 0;
		var laBaoCaoDonViThuocHuyen = 0;
		var laBaoCaoDonViThuocTinh = 0;
		if ($("#BaoCaoXaID").is(':checked')) { 
			laBaoCaoXa = 1;
		}
		if ($("#BaoCaoHuyenID").is(':checked')) { 
			laBaoCaoHuyen = 1;
		}
		if ($("#BaoCaoTinhID").is(':checked')) { 
			laBaoCaoTinh = 1;
		}
		if ($("#BaoCaoThuocDonViHuyenID").is(':checked')) { 
			laBaoCaoDonViThuocHuyen = 1;
		}
		if ($("#BaoCaoThuocDonViTinhID").is(':checked')) { 
			laBaoCaoDonViThuocTinh = 1;
		}
		$.ajax({
			type : "POST",
			url : "../ajaxbaocao/CapNhatThongTinCauHinhBaoCao",
			async : false,
			data : ({
				chiTieuArr : chiTieuArr.toString(),
				baoCaoID : baoCaoID,
				maBaoCao : maBaoCao,
				tenBaoCao : tenBaoCao,
				laBaoCaoXa : laBaoCaoXa,
				laBaoCaoHuyen : laBaoCaoHuyen,
				laBaoCaoTinh : laBaoCaoTinh,
				laBaoCaoDonViThuocHuyen : laBaoCaoDonViThuocHuyen,
				laBaoCaoDonViThuocTinh : laBaoCaoDonViThuocTinh
			}),
			success : function(data) {
				if (data.trim() == "true") {
					alert($("#MsgCapNhatThanhCongID").val());
					getListChiTieuDaChonBaoCao();
				} else {
					alert($("#MsgCapNhatThatBaiID").val());
				}
			}
		});
	}
}

function capNhatBaoCaoChiTieuPopup() {
	var baoCaoID = $("#BaoCaoIDHidden").val();
	var chiTieuArr = [];
	$("input[class=CBChooseChiTieuPopup]").each(function(){
		if ($(this).is(':checked')) { 
			chiTieuArr.push($(this).val());	
		}
	});
	
	if (chiTieuArr.length == 0) {
		alert($("#TextID01").val());
	} else {
		$.ajax({
			type : "POST",
			url : "../ajaxbaocao/CapNhatChiTieuCauHinhBaoCao",
			async : false,
			data : ({
				chiTieuArr : chiTieuArr.toString(),
				baoCaoID : baoCaoID
			}),
			success : function(data) {
				if (data.trim() == "true") {
					getListChiTieuDaChonBaoCao();
					closePopup();
				} else {
					alert($("#MsgCapNhatThatBaiID").val());
				}
			}
		});
	}
	
}

function showPopupThemMoiChiTieuBaoCao() {
	showPopUpDivWithSize("Popup01ID", 700);
	
}

function getListLoaiChiTieuByBaoCaoPopup() {
	var nhomChiTieuID = $("#NhomChiTieuID").val();
	var baoCaoID = $("#BaoCaoIDHidden").val();
	$.ajax({
		type : "POST",
		url : "../ajaxbaocao/GetListLoaiChiTieuByBaoCaoPopup",
		async : false,
		data : ({
			nhomChiTieuID : nhomChiTieuID,
			baoCaoID : baoCaoID
		}),
		success : function(data) {
			$("#ListChiTieuPopupID").html(data);
		}
	});
}

function getListChiTieuDaChonBaoCao() {
	var baoCaoID = $("#BaoCaoIDHidden").val();
	$.ajax({
		type : "POST",
		url : "../ajaxbaocao/GetListChiTieuDaChonBaoCao",
		async : false,
		data : ({
			baoCaoID : baoCaoID
		}),
		success : function(data) {
			$("#ListChiTieuID").html(data);
		}
	});
}



