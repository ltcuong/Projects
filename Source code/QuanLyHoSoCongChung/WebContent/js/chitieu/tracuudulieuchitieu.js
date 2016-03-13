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
	
	$("#BtnTimKiemID").click(function(){
		getListChiTieuTraCuuDuLieu(1);
	});
	

});

function getListChiTieuTraCuuDuLieu(page) {
	$.ajax({
		type : "POST",
		url : "../ajaxchitieu/GetListChiTieuTraCuuDuLieu",
		async : false,
		data : ({
			page : page,
			nhomChiTieuID : $("#NhomChiTieuID").val().trim(),
			thang : $("#ThangID").val().trim(),
			nam : $("#NamID").val().trim(),
			huyenID : $("#HuyenID").val().trim(),
			xaID : $("#XaID").val().trim()
		}),
		success : function(data) {
			$("#ThongTinChiTieuID").html(data);
		}
	});
}
