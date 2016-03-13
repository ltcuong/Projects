$(document).ready(function() {
	$.validator.addMethod("valueNotEquals", function(value, element, arg) {
		return arg != value;
	}, $("#MsgError02").val());
	
	
	jQuery.extend(jQuery.validator.messages, {
		required : $("#MsgError01").val(),
		number : $("#MsgError03").val(),
		minlength : $.validator.format($("#MsgError04").val()),
	});
	$("input[type='text']").click(function () {
		if($(this).val() == 0) {
			$(this).select();	
		}
	});
	
	
	$("#BtnCapNhatID").click(function(){
		$("#ThongTinFormDuLieuChiTieuID").submit();
		
	});
	$("#ThongTinFormDuLieuChiTieuID").validate({
		rules : {
			thang : {
				valueNotEquals : "0"
			},
			nam : {
				valueNotEquals : "0"
			}
		},
		messages : {
		},
		submitHandler : function(form) {
			themThongTinDuLieuChiTieu();
		}
	});
});

function themThongTinDuLieuChiTieu() {
	var giaTriStr = $("#ValueChooseHidden").val();
	//Update gia tri truoc khi submit
	var giaTriArr = giaTriStr.split('#');
	var giaTriTemp = "";
	$("input.GiaTriChiTieu").each(function() {
		var chiTieuID = $(this).attr("chiTieuid");
		var giaTri = 0; 
		var giaTriTongHop = 0;
		if ($(this).val().trim() != "") {
			giaTri = $(this).val().trim();
		}
		if ($(this).parent().parent().children().eq(5).children().val().trim() != "") {
			giaTriTongHop = $(this).parent().parent().children().eq(5).children().val().trim();
		}
		var flag = true;
		for ( var int = 0; int < giaTriArr.length; int++) {
			if (giaTriArr[int].trim() != "") {
				var giaTriDetailArr = giaTriArr[int].split('@');
				if (giaTriDetailArr[0] == chiTieuID) {
					giaTriArr[int] = chiTieuID + "@" + giaTri + "@" + giaTriTongHop;
					flag = false;
					break;
				}
			}
		}
		if (flag) {
			giaTriTemp += chiTieuID + "@" + giaTri + "@" + giaTriTongHop + "#";
		}
	});
	var temp = "";
	for ( var int = 0; int < giaTriArr.length; int++) {
		if (giaTriArr[int].trim() != "") {
			temp += giaTriArr[int] + "#";
		}
		
	}
	temp += giaTriTemp;
	$("#ValueChooseHidden").val(temp);
	giaTriStr = $("#ValueChooseHidden").val();
	showWaitingProgress();
	$.ajax({
		type : "POST",
		url : "../ajaxchitieu/CapNhatThongTinDuLieuChiTieu",
		async : false,
		data : ({
			giaTriStr : giaTriStr,
			thang : $("#ThangID").val().trim(),
			nam : $("#NamID").val().trim(),
			nhomChiTieuID : $("#NhomChiTieuID").val().trim(),
			chiTieuChaID : $("#LoaiChiTieuID").val().trim()
		}),
		success : function(data) {
			closeWaitingProgress();
			if (data.trim() == "true") {
				alert($("#MsgCapNhatThanhCongID").val());
			} else {
				alert($("#MsgCapNhatThatBaiID").val());
			}
		}
	});
	
}


function getListChiTieuCapNhatDuLieuCoSoLieu(page) {
	$("#PageHiddenID").val(page);
	var thang = $("#ThangID").val().trim();
	var nam = $("#NamID").val().trim();
	if (thang != 0 && nam != 0) {
		var giaTriStr = $("#ValueChooseHidden").val();
		if (page != 1 && giaTriStr != "") {
			var giaTriArr = giaTriStr.split('#');
			var giaTriTemp = "";
			$("input.GiaTriChiTieu").each(function() {
				var chiTieuID = $(this).attr("chiTieuid");
				var giaTri = 0; 
				var giaTriTongHop = 0;
				if ($(this).val().trim() != "") {
					giaTri = $(this).val().trim();
				}
				if ($(this).parent().parent().children().eq(5).children().val().trim() != "") {
					giaTriTongHop = $(this).parent().parent().children().eq(5).children().val().trim();
				}
				var flag = true;
				for ( var int = 0; int < giaTriArr.length; int++) {
					if (giaTriArr[int].trim() != "") {
						var giaTriDetailArr = giaTriArr[int].split('@');
						if (giaTriDetailArr[0] == chiTieuID) {
							giaTriArr[int] = chiTieuID + "@" + giaTri + "@" + giaTriTongHop;
							flag = false;
							break;
						}
						
					}
					
				}
				if (flag) {
					giaTriTemp += chiTieuID + "@" + giaTri + "@" + giaTriTongHop + "#";
				}
			});
			var temp = "";
			for ( var int = 0; int < giaTriArr.length; int++) {
				if (giaTriArr[int].trim() != "") {
					temp += giaTriArr[int] + "#";
				}
				
			}
			temp += giaTriTemp;
			$("#ValueChooseHidden").val(temp);
		}
		$.ajax({
			type : "POST",
			url : "../ajaxchitieu/GetListChiTieuCapNhatDuLieuCoSoLieu",
			async : false,
			data : ({
				nhomChiTieuID : $("#NhomChiTieuID").val().trim(),
				chiTieuChaID  : $("#LoaiChiTieuID").val().trim(),
				thang : $("#ThangID").val().trim(),
				nam : $("#NamID").val().trim(),
				page : page
			}),
			success : function(data) {
				
				$("#ListChiTieuCapNhatID").html(data);
				$("input[type='text']").click(function () {
					if($(this).val() == 0) {
						$(this).select();	
					}
				});
				$('input.number').keypress(function(event) {
					  if ((event.which != 46 || $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57) 
							  && (event.which != 8) && (event.which != 13) && (event.which != 9)) {
					    event.preventDefault();
					  }
				});
				$('input.number').keydown(function(event) {
					if(event.which == 13 || event.which == 9){
						var is_chrome = navigator.userAgent.toLowerCase().indexOf('chrome') > -1;
						//Chrome
						if(is_chrome){
							$(this).parent().parent().next().children().eq(4).focus();
							$(this).parent().parent().next().children().eq(4).select();	
							var thisValue = $(this).val();
							$(this).parent().parent().children().eq(5).children().val(thisValue);
						} else {
							$(this).parent().parent().next().find('.GiaTriChiTieu').focus();
							$(this).parent().parent().next().find('.GiaTriChiTieu').select();	
							var thisValue = $(this).val();
							$(this).parent().parent().children().eq(5).children().val(thisValue);
						}
				    }
				});
				//Luu gia tri
				giaTriStr = $("#ValueChooseHidden").val();
				if (giaTriStr == "") {
					$("input.GiaTriChiTieu").each(function(){
						var chiTieuID = $(this).attr("chiTieuid");
						var giaTri = 0; 
						var giaTriTongHop = 0;
						if ($(this).val().trim() != "") {
							giaTri = $(this).val().trim();
							//giaTri = giaTri.replace(/\./g,'');
						}
						if ($(this).parent().parent().children().eq(5).children().val().trim() != "") {
							giaTriTongHop = $(this).parent().parent().children().eq(5).children().val().trim();
						}
						giaTriStr += chiTieuID + "@" + giaTri + "@" + giaTriTongHop + "#";
					});
					$("#ValueChooseHidden").val(giaTriStr);
				} else {
					var giaTriArr = giaTriStr.split('#');
					var giaTriTemp = "";
					$("input.GiaTriChiTieu").each(function() {
						var chiTieuID = $(this).attr("chiTieuid");
						var giaTri = 0; 
						var giaTriTongHop = 0;
						if ($(this).val().trim() != "") {
							giaTri = $(this).val().trim();
						}
						if ($(this).parent().parent().children().eq(5).children().val().trim() != "") {
							giaTriTongHop = $(this).parent().parent().children().eq(5).children().val().trim();
						}
						var flag = true;
						for ( var int = 0; int < giaTriArr.length; int++) {
							if (giaTriArr[int].trim() != "") {
								var giaTriDetailArr = giaTriArr[int].split('@');
								if (giaTriDetailArr[0] == chiTieuID) {
									giaTriArr[int] = chiTieuID + "@" + giaTriDetailArr[1] + "@" + giaTriDetailArr[2];
									$(this).val(giaTriDetailArr[1]);
									$(this).parent().parent().children().eq(5).children().val(giaTriDetailArr[2]);
									flag = false;
									break;
								}
							}
						}
						if (flag) {
							giaTriTemp += chiTieuID + "@" + giaTri + "@" + giaTriTongHop + "#";
						}
					});
					var temp = "";
					for ( var int = 0; int < giaTriArr.length; int++) {
						if (giaTriArr[int].trim() != "") {
							temp += giaTriArr[int] + "#";
						}
						
					}
					temp += giaTriTemp;
					$("#ValueChooseHidden").val(temp);
				}
				
			}
		});
	} else {
		$("#ListChiTieuCapNhatID").html("");
	}

}


/*
function getListChiTieuCapNhatDuLieuCha() {
	$.ajax({
		type : "POST",
		url : "../ajaxchitieu/GetListChiTieuCapNhatDuLieu",
		async : false,
		data : ({
			nhomChiTieuID : $("#NhomChiTieuID").val().trim(),
			chiTieuChaID  : $("#LoaiChiTieuID").val().trim()
		}),
		success : function(data) {
			$("#ListChiTieuCapNhatID").html(data);
			$("input[type='text']").click(function () {
				if($(this).val() == 0) {
					$(this).select();	
				}
			});
		}
	});
}
*/



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
			$("#ListChiTieuCapNhatID").html("");
			$("#ValueChooseHidden").val("");
			
		}
	});
}

function changeThangSelect() {
	$("#ValueChooseHidden").val("");
	getListChiTieuCapNhatDuLieuCoSoLieu(1);
}


function getSelectLoaiChiTieuByMemberShip() {
	var nhomChiTieuID = $("#NhomChiTieuID").val(); 
	$.ajax({
		type : "POST",
		url : "../ajaxchitieu/GetSelectLoaiChiTieuByMemberShip",
		async : false,
		data : ({
			nhomChiTieuID : nhomChiTieuID
		}),
		success : function(data) {
			$("#LoaiChiTieuID").html(data);
			var thang = $("#ThangID").val().trim();
			var nam =  $("#NamID").val().trim();
			if (nam != 0 && thang != 0) {
				$("#ValueChooseHidden").val("");
				getListChiTieuCapNhatDuLieuCoSoLieu(1);	
			}
		}
	});
}

function changeLoaiChiTieu () {
	var thang = $("#ThangID").val().trim();
	var nam =  $("#NamID").val().trim();
	if (nam != 0 && thang != 0) {
		$("#ValueChooseHidden").val("");
		getListChiTieuCapNhatDuLieuCoSoLieu(1);	
	}
}

