$(document).ready(function() {
	$.validator.addMethod("valueNotEquals", function(value, element, arg) {
		return arg != value;
	}, $("#MsgError02").val());
	
	$("span.numbers").digits();
	jQuery.extend(jQuery.validator.messages, {
		required : $("#MsgError01").val(),
		number : $("#MsgError03").val(),
		minlength : $.validator.format($("#MsgError04").val()),
	});

	$("#BtnChonHetID").click(function(){
		if ($("#HuyenID").val() == 0) {
			if($(this).is(':checked')) {
				$("input[class=CbHuyen]").each(function(){
					$(this).prop('checked', true);
				});
			} else {
				$("input[class=CbHuyen]").each(function(){
					$(this).prop('checked', false);
				});
			}
		} else {
			if($(this).is(':checked')) {
				$("input[class=CbXa]").each(function(){
					$(this).prop('checked', true);
				});
			} else {
				$("input[class=CbXa]").each(function(){
					$(this).prop('checked', false);
				});
			}
		}
	});
	
	$("#BtnThongKeBaoCaoID").click(function(){
		var flag = true;
		var loaiBaoCaoID = 1;
		var kyBaoCaoID = null;
		var namBaoCao = null;
		var thangBaoCao = null;
		var tuNam = null;
		var denNam = null;
		var showChuQuanValue = 0;
		if($("#CBShowChuQuanID").is(':checked')) {
			showChuQuanValue = 1;
		}
		if ($("#BaoCaoID").val() == 0) {
			$("#BaoCaoID").next().removeClass("DisplayNone");
			flag = false;
		} else {
			$("#BaoCaoID").next().addClass("DisplayNone");
		}	
		if($("#RdBaoCaoKyID").is(':checked')) {
			loaiBaoCaoID = 1;
			kyBaoCaoID = $("#KyBaoCaoID").val();
			namBaoCao = $("#NamBaoCaoKyID").val();
			if ($("#KyBaoCaoID").val() == 0) {
				$("#KyBaoCaoID").next().removeClass("DisplayNone");
				flag = false;
			} else {
				$("#KyBaoCaoID").next().addClass("DisplayNone");
			}
			if ($("#NamBaoCaoKyID").val() == 0) {
				$("#NamBaoCaoKyID").next().removeClass("DisplayNone");
				flag = false;
			} else {
				$("#NamBaoCaoKyID").next().addClass("DisplayNone");
			}
		} else if($("#RdBaoCaoThangID").is(':checked')) {
			loaiBaoCaoID = 2;
			thangBaoCao = $("#ThangBaoCaoID").val();
			namBaoCao = $("#NamBaoCaoThangID").val();
			if ($("#ThangBaoCaoID").val() == 0) {
				$("#ThangBaoCaoID").next().removeClass("DisplayNone");
				flag = false;
			} else {
				$("#ThangBaoCaoID").next().addClass("DisplayNone");
			}
			if ($("#NamBaoCaoThangID").val() == 0) {
				$("#NamBaoCaoThangID").next().removeClass("DisplayNone");
				flag = false;
			} else {
				$("#NamBaoCaoThangID").next().addClass("DisplayNone");
			}
		} else if($("#RdBaoCaoNamID").is(':checked')) {
			loaiBaoCaoID = 3;
			tuNam = $("#TuNamID").val();
			denNam = $("#DenNamID").val();
			if ($("#TuNamID").val() == 0) {
				$("#TuNamID").next().removeClass("DisplayNone");
				flag = false;
			} else {
				$("#TuNamID").next().addClass("DisplayNone");
			}
			if ($("#DenNamID").val() == 0) {
				$("#DenNamID").next().removeClass("DisplayNone");
				flag = false;
			} else {
				$("#DenNamID").next().addClass("DisplayNone");
			}
			if (flag) {
				if (tuNam > denNam) {
					$("#TuNamID").next().next().removeClass("DisplayNone");
					flag = false;
				} else {
					$("#TuNamID").next().next().addClass("DisplayNone");
				}
			}
		}
		var huyenSelected = "";
		var xaSelected = "";
		if (flag) {
			if ($("#HuyenID").val() == 0) {
				$("input[class=CbHuyen]").each(function(){
					if($(this).is(':checked')) {
						huyenSelected += $(this).val() + ",";
					}
				});
				if (huyenSelected == "" && showChuQuanValue == 0) {
					flag = false;
					alert($("#TextID01").val());
				}
			} else {
				$("input[class=CbXa]").each(function(){
					if($(this).is(':checked')) {
						xaSelected += $(this).val() + ",";
					}
				});
				if (xaSelected == "") {
					flag = false;
					alert($("#TextID01").val());
				}
			}
		}
		if (flag) { 
			$.ajax({
				type : "POST",
				url : "../ajaxbaocao/GetThongTinBaoCaoChiTiet",
				async : false,
				data : ({
					baoCaoID : $("#BaoCaoID").val(),
					loaiBaoCaoID : loaiBaoCaoID,
					kyBaoCaoID : kyBaoCaoID,
					namBaoCao : namBaoCao,
					thangBaoCao : thangBaoCao,
					huyenSelected : huyenSelected,
					xaSelected : xaSelected,
					tuNam : tuNam,
					denNam : denNam,
					huyenID : $("#HuyenID").val(),
					showChuQuanValue: showChuQuanValue
				}),
				success : function(data) {
					$("#ThongTinBaoCaoChiTietID").html(data);
				}
			});
			
		}
	});
	
	$("input:radio").change(function(){
	    // Do something interesting here
		$("#KyBaoCaoID").next().addClass("DisplayNone");
		$("#NamBaoCaoKyID").next().addClass("DisplayNone");
		$("#ThangBaoCaoID").next().addClass("DisplayNone");
		$("#NamBaoCaoThangID").next().addClass("DisplayNone");
		$("#TuNamID").next().addClass("DisplayNone");
		$("#TuNamID").next().next().addClass("DisplayNone");
		$("#DenNamID").next().addClass("DisplayNone");
		
		if ($(this).val() == 1) {
			$("#TRBaoCaoKyID").removeClass("DisplayNone");
			$("#TRBaocaoThangID").addClass("DisplayNone");
			$("#TRBaocaoNamID").addClass("DisplayNone");
		} else if ($(this).val() == 2) {
			$("#TRBaoCaoKyID").addClass("DisplayNone");
			$("#TRBaocaoThangID").removeClass("DisplayNone");
			$("#TRBaocaoNamID").addClass("DisplayNone");
		} else if ($(this).val() == 3) {
			$("#TRBaoCaoKyID").addClass("DisplayNone");
			$("#TRBaocaoThangID").addClass("DisplayNone");
			$("#TRBaocaoNamID").removeClass("DisplayNone");
		} 
	});

});

function tinhTrungBinhBaoCao() {
	var tinhTrungBinh = 0;
	var showChuQuanValue = 0;
	if($("#CBTinhTrungBinhID").is(':checked')) {
		tinhTrungBinh = 1;
	}
	if($("#CBShowChuQuanID").is(':checked')) {
		showChuQuanValue = 1;
	}
	var flag = true;
	var loaiBaoCaoID = 1;
	var kyBaoCaoID = null;
	var namBaoCao = null;
	var thangBaoCao = null;
	var tuNam = null;
	var denNam = null;
	if ($("#BaoCaoID").val() == 0) {
		$("#BaoCaoID").next().removeClass("DisplayNone");
		flag = false;
	} else {
		$("#BaoCaoID").next().addClass("DisplayNone");
	}	
	if($("#RdBaoCaoKyID").is(':checked')) {
		loaiBaoCaoID = 1;
		kyBaoCaoID = $("#KyBaoCaoID").val();
		namBaoCao = $("#NamBaoCaoKyID").val();
		if ($("#KyBaoCaoID").val() == 0) {
			$("#KyBaoCaoID").next().removeClass("DisplayNone");
			flag = false;
		} else {
			$("#KyBaoCaoID").next().addClass("DisplayNone");
		}
		if ($("#NamBaoCaoKyID").val() == 0) {
			$("#NamBaoCaoKyID").next().removeClass("DisplayNone");
			flag = false;
		} else {
			$("#NamBaoCaoKyID").next().addClass("DisplayNone");
		}
	} else if($("#RdBaoCaoThangID").is(':checked')) {
		loaiBaoCaoID = 2;
		thangBaoCao = $("#ThangBaoCaoID").val();
		namBaoCao = $("#NamBaoCaoThangID").val();
		if ($("#ThangBaoCaoID").val() == 0) {
			$("#ThangBaoCaoID").next().removeClass("DisplayNone");
			flag = false;
		} else {
			$("#ThangBaoCaoID").next().addClass("DisplayNone");
		}
		if ($("#NamBaoCaoThangID").val() == 0) {
			$("#NamBaoCaoThangID").next().removeClass("DisplayNone");
			flag = false;
		} else {
			$("#NamBaoCaoThangID").next().addClass("DisplayNone");
		}
	} else if($("#RdBaoCaoNamID").is(':checked')) {
		loaiBaoCaoID = 3;
		tuNam = $("#TuNamID").val();
		denNam = $("#DenNamID").val();
		if ($("#TuNamID").val() == 0) {
			$("#TuNamID").next().removeClass("DisplayNone");
			flag = false;
		} else {
			$("#TuNamID").next().addClass("DisplayNone");
		}
		if ($("#DenNamID").val() == 0) {
			$("#DenNamID").next().removeClass("DisplayNone");
			flag = false;
		} else {
			$("#DenNamID").next().addClass("DisplayNone");
		}
		if (flag) {
			if (tuNam > denNam) {
				$("#TuNamID").next().next().removeClass("DisplayNone");
				flag = false;
			} else {
				$("#TuNamID").next().next().addClass("DisplayNone");
			}
		}
	}
	var huyenSelected = "";
	var xaSelected = "";
	if (flag) {
		if ($("#HuyenID").val() == 0) {
			$("input[class=CbHuyen]").each(function(){
				if($(this).is(':checked')) {
					huyenSelected += $(this).val() + ",";
				}
			});
			if (huyenSelected == "") {
				flag = false;
				alert($("#TextID01").val());
			}
		} else {
			$("input[class=CbXa]").each(function(){
				if($(this).is(':checked')) {
					xaSelected += $(this).val() + ",";
				}
			});
			if (xaSelected == "") {
				flag = false;
				alert($("#TextID01").val());
			}
		}
	}
	if (flag) {
		$.ajax({
			type : "POST",
			url : "../ajaxbaocao/GetThongTinBaoCaoChiTiet",
			async : false,
			data : ({
				baoCaoID : $("#BaoCaoID").val(),
				loaiBaoCaoID : loaiBaoCaoID,
				kyBaoCaoID : kyBaoCaoID,
				namBaoCao : namBaoCao,
				thangBaoCao : thangBaoCao,
				huyenSelected : huyenSelected,
				xaSelected : xaSelected,
				tuNam : tuNam,
				denNam : denNam,
				huyenID : $("#HuyenID").val(),
				tinhTrungBinh : tinhTrungBinh,
				showChuQuanValue : showChuQuanValue
			}),
			success : function(data) {
				$("#ThongTinBaoCaoChiTietID").html(data);
			}
		});
		
	}
}

function checkCheckBoxHuyen() {
	var flag = true;
	$("input[class=CbHuyen]").each(function(){
		if(!$(this).is(':checked')) {
			flag = false;
		}
	});
	if (flag) {
		$("#BtnChonHetID").prop('checked', true);
	} else {
		$("#BtnChonHetID").prop('checked', false);
	}
}

function checkCheckBoxXa() {
	var flag = true;
	$("input[class=CbXa]").each(function(){
		if(!$(this).is(':checked')) {
			flag = false;
		}
	});
	if (flag) {
		$("#BtnChonHetID").prop('checked', true);
	} else {
		$("#BtnChonHetID").prop('checked', false);
	}
}

function exportExcelData() {
	var baoCaoID = $("#BaoCaoID").val();
	var loaiBaoCaoID = 1;
	var kyBaoCaoID = 0;
	var namBaoCao = 0;
	var thangBaoCao = 0;
	var huyenSelected = "0";
	var xaSelected = "0";
	var tuNam = 0;
	var denNam = 0;
	var tinhTrungBinh = 0;
	var showChuQuanValue = 0;
	if($("#CBTinhTrungBinhID").is(':checked')) {
		tinhTrungBinh = 1;
	}
	if($("#CBShowChuQuanID").is(':checked')) {
		showChuQuanValue = 1;
	}
	if($("#RdBaoCaoKyID").is(':checked')) {
		loaiBaoCaoID = 1;
		kyBaoCaoID = $("#KyBaoCaoID").val();
		namBaoCao = $("#NamBaoCaoKyID").val();
	} else if($("#RdBaoCaoThangID").is(':checked')){
		loaiBaoCaoID = 2;
		thangBaoCao = $("#ThangBaoCaoID").val();
		namBaoCao = $("#NamBaoCaoThangID").val();
	} else if($("#RdBaoCaoNamID").is(':checked')){
		loaiBaoCaoID = 3;
		tuNam = $("#TuNamID").val();
		denNam = $("#DenNamID").val();
	}
	if ($("#HuyenID").val() == 0) {
		$("input[class=CbHuyen]").each(function(){
			if($(this).is(':checked')) {
				huyenSelected += $(this).val() + ",";
			}
		});
		if (huyenSelected == "") {
			alert($("#TextID01").val());
		}
	} else {
		$("input[class=CbXa]").each(function(){
			if($(this).is(':checked')) {
				xaSelected += $(this).val() + ",";
			}
		});
		huyenSelected = $("#HuyenID").val();
		if (xaSelected == "") {
			alert($("#TextID01").val());
		}
	}
	var param = baoCaoID + "@" + loaiBaoCaoID + "@" + kyBaoCaoID + "@" + namBaoCao + "@" + thangBaoCao + "@"
				+ huyenSelected + "@" + xaSelected + "@" + tuNam + "@" + denNam + "@" + tinhTrungBinh + "@" + showChuQuanValue;
	var href = "../quanlybaocao/BCThongKeBaoCaoDownloader?strParam=" + param;
	window.open(href);
}
function getListDiaDanhThongKe() {
	$.ajax({
		type : "POST",
		url : "../ajaxbaocao/GetListDiaDanhThongKe",
		async : false,
		data : ({
			huyenID : $("#HuyenID").val()
		}),
		success : function(data) {
			$("#ListDiaDanhThongKeID").html(data);
			$("#BtnChonHetID").prop('checked', false);
		}
	});
	
}
