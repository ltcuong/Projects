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
			nhomChiTieu : {
				valueNotEquals : "0"
			},
		},
		messages : {
		},
		submitHandler : function(form) {
			var chiTieuDaChon = $("#ChiTieuChooseID").val().trim();
			if (chiTieuDaChon == "") {
				alert($("#TextID01").val());
			} else {
				themThongTinCauHinhBaoCao();
			}
		}
	});
	
	

});

function xoaThongTinBaoCao(baoCaoID) {
	var r = confirm($("#MsgError05").val());
	if (r == true) {
		$.ajax({
			type : "POST",
			url : "../ajaxbaocao/XoaThongTinBaoCao",
			async : false,
			data : ({
				baoCaoID : baoCaoID
			}),
			success : function(data) {
				if (data.trim() == "true") {
					getDanhSachCauHinhBaoCao(1);
					alert($("#MsgXoaThanhCongID").val());
				} else {
					alert($("#MsgXoaThatBaiID").val());
				}
			}
		});
	}
	
}

function themThongTinCauHinhBaoCao() {
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
		url : "../ajaxbaocao/ThemThongTinCauHinhBaoCao",
		async : false,
		data : ({
			maBaoCao : $("#MaBaoCaoID").val().trim(),
			tenBaoCao : $("#TenBaoCaoID").val().trim(),
			chiTieuChoose : $("#ChiTieuChooseID").val().trim(),
			laBaoCaoXa : laBaoCaoXa,
			laBaoCaoHuyen : laBaoCaoHuyen,
			laBaoCaoTinh : laBaoCaoTinh,
			laBaoCaoDonViThuocHuyen : laBaoCaoDonViThuocHuyen,
			laBaoCaoDonViThuocTinh : laBaoCaoDonViThuocTinh
		}),
		success : function(data) {
			if (data.trim() == "true") {
				alert($("#MsgCapNhatThanhCongID").val());
				$("#ChiTieuChooseID").val("");
				reloadForm();
			} else {
				alert($("#MsgCapNhatThatBaiID").val());
			}
		}
	});
	
}
/*
function themThongTinCauHinhBaoCao() {
	$.ajax({
		type : "POST",
		url : "../ajaxbaocao/ThemThongTinCauHinhBaoCao",
		async : false,
		data : ({
			maBaoCao : $("#MaBaoCaoID").val().trim(),
			tenBaoCao : $("#TenBaoCaoID").val().trim(),
			chiTieuChoose : $("#ChiTieuChooseID").val().trim()
		}),
		success : function(data) {
			if (data.trim() == "true") {
				alert($("#MsgCapNhatThanhCongID").val());
				$("#ChiTieuChooseID").val("");
				$("#MaBaoCaoID").val("");
				$("#TenBaoCaoID").val("");
				$("#NhomChiTieuID").val(0);
				getListLoaiChiTieuByBaoCao();
				getDanhSachCauHinhBaoCao(1);
			} else {
				alert($("#MsgCapNhatThatBaiID").val());
			}
		}
	});
	
}

*/
function getDanhSachCauHinhBaoCao (page) {
	$.ajax({
		type : "POST",
		url : "../ajaxbaocao/GetDanhSachCauHinhBaoCao",
		async : false,
		data : ({
			page : page
		}),
		success : function(data) {
			$("#ListCauHinhBaoCaoID").html(data);
		}
	});
	
}

function chonChiTieuBaoBao(id_clicked) {
	var idClicked = "#" + id_clicked;
	var listChiTieuChoose = $("#ChiTieuChooseID").val();
	var chiTieuArr = listChiTieuChoose.split(",");	
	if ($(idClicked).is(':checked')) {
		chiTieuArr.push($(idClicked).val());	
	} else {
		var i = chiTieuArr.indexOf($(idClicked).val());
		if(i != -1) {
			chiTieuArr.splice(i,1);
		}
	}
	$("#ChiTieuChooseID").val(chiTieuArr);
	var flag = true;
	$("input[class=CBChooseChiTieu]").each(function(){
		if (!$(this).is(':checked')) {
			$("#CheckAllChiTieuID").prop('checked', false);
			flag = false;
		}
	});
	if (flag) {
		$("#CheckAllChiTieuID").prop('checked', true);
	}
}

function chonAllChiTieu() {
	var listChiTieuChoose = $("#ChiTieuChooseID").val();
	var chiTieuArr = listChiTieuChoose.split(",");	
	if ($("#CheckAllChiTieuID").is(':checked')) {
		$("input[class=CBChooseChiTieu]").each(function(){
			$(this).prop('checked', true);
			chiTieuArr.push($(this).val());	
		});
		
	} else {
		$("input[class=CBChooseChiTieu]").each(function(){
			$(this).prop('checked', false);
			var i = chiTieuArr.indexOf($(this).val());
			if(i != -1) {
				chiTieuArr.splice(i,1);
			}
		});	
	}
	$("#ChiTieuChooseID").val(chiTieuArr);
}


function getListLoaiChiTieuByBaoCao() {
	var nhomChiTieuID = $("#NhomChiTieuID").val();
	$.ajax({
		type : "POST",
		url : "../ajaxbaocao/GetListLoaiChiTieuByBaoCao",
		async : false,
		data : ({
			nhomChiTieuID : nhomChiTieuID
		}),
		success : function(data) {
			$("#ListChiTieuID").html(data);
			//Check checkbox
			var listChiTieuChoose = $("#ChiTieuChooseID").val();
			if (listChiTieuChoose != "") {
				$("input[class=CBChooseChiTieu]").each(function(){
					var chiTieuArr = listChiTieuChoose.split(",");	
					for ( var i = 0; i < chiTieuArr.length; i++) {
						if (chiTieuArr[i] == $(this).val()) {
							$(this).prop('checked', true);
						}
					}
				});
			}
			//kiem tra checkall
			var flag = true;
			$("input[class=CBChooseChiTieu]").each(function(){
				if (!$(this).is(':checked')) {
					flag = false;
				}
			});
			if (flag) {
				$("#CheckAllChiTieuID").prop('checked', true);
			} else {
				$("#CheckAllChiTieuID").prop('checked', false);
			}
		}
	});
}
