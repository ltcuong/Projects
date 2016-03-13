$(document).ready(function() {
	//loadListMenuLeftThemMoiTK();
	loadListThamSoHeThong();
	
	$("#btnCapNhatID").click(function(){
		var param_value = $("#PramValueID").val();		
		var param_ma = $("#ParamHiddenID").val();	
		var ThamSoHeThongText1ID = $("#ThamSoHeThongText1ID").val();
		var ThamSoHeThongText2ID = $("#ThamSoHeThongText2ID").val();
		var InfoText3 = $("#InfoText3").val();
		
		if (param_value.trim() == "") {
			showMessageError(ThamSoHeThongText1ID);
		} else {
			var flag = true;
			if (param_ma == "prefixmd5") {
				var r=confirm(ThamSoHeThongText2ID);
				if (r==true) {
					flag = true;
				} else {
					flag = false;
				}
			}
			if (flag) {
				$.ajax({
					type : "POST",
					url : "../ajaxquanlynguoidung/UpdateThamSoHeThong",
					async : false,
					data : ({		
						param_value : param_value,
						param_ma : param_ma
					}),
					success : function(data) {
						if (data.trim() == "true") {
							showMessageInfo(InfoText3);
							loadListThamSoHeThong();
						} else {
						}
					}
				});
			}
			
		}
		
		
		
	});
});

function loadListThamSoHeThong() {
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/GetListThamSoHeThong",
		async : false,
		data : ({
		}),
		success : function(data) {
			$("#dtgView").html(data);			
		}
	});
	
}

function editPramValue(param_ma) {
	$("#ParamHiddenID").val(param_ma);
	var idClick = "#editPram_" + param_ma;
	var pramValue = $(idClick).parent().parent().children().children().eq(1).html().trim();
	$("#PramValueID").val(pramValue);
	
}