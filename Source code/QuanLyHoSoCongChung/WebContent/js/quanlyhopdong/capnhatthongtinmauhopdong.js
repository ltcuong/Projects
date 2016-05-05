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
	
	$("#BtnCapNhatID").click(function(){
		var noiDungEditor = FCKeditorAPI.GetInstance("noiDungEditor");
		var noiDungTemplate = noiDungEditor.GetHTML();
		var templateID = $("#TenTemplateID").val();
		
		$.ajax({
			type : "POST",
			url : "../ajaxhopdong/CapNhatThongTinMauHopDong",
			async : false,
			data : ({		
				noiDungTemplate : noiDungTemplate,
				templateID : templateID
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
	
	$("#TenTemplateID").change(function(){
		$.ajax({
			type : "POST",
			url : "../ajaxhopdong/GetContentHopDongByLoaiHopDongChiTiet",
			async : false,
			data : ({		
				templateID :$(this).val()
			}),
			success : function(data) {
				$("#HopDongTabID").html(data);
				getListTuKhoaTemplate();
			}
		});
	});
});

function getListTuKhoaTemplate() {
	var templateID = $("#TenTemplateID").val();
	$.ajax({
		type : "POST",
		url : "../ajaxhopdong/GetListTuKhoaTemplate",
		async : false,
		data : ({		
			templateID : templateID
		}),
		success : function(data) {
			$("#FormTuKhoaID").html(data);
		}
	});
}
