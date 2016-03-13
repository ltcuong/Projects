$(document).ready(function() {
	$.validator.addMethod("valueNotEquals", function(value, element, arg) {
		return arg != value;
	}, $("#MsgError02").val());
	
	
	jQuery.extend(jQuery.validator.messages, {
		required : $("#MsgError01").val(),
		number : $("#MsgError03").val(),
		minlength : $.validator.format($("#MsgError04").val()),
	});
	
	$("#BtnCapNhatID").click(function(){
		$.ajax({
			type : "POST",
			url : "../ajaxchitieu/CapNhatThoiGianNhapLieu",
			async : false,
			data : ({
				thang : $("#ThangID").val().trim(),
				nam : $("#NamID").val().trim()
			}),
			success : function(data) {
				if (data.trim() == "true") {
					alert($("#MsgCapNhatThanhCongID").val());
				} else {
					alert($("#MsgCapNhatThatBaiID").val());
				}
			}
		});
		
	});
	

});

