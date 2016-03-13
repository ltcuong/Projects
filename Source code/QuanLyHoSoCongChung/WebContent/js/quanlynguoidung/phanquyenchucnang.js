$(document).ready(function() {
	var module = $("#NhomChucNangID").val();		
	var nhomID =  $("#NhomTaiKhoanID").val();
	loadListDanhSachChucNang(nhomID, module);
	$("#NhomTaiKhoanID").change(function(){
		var module = $("#NhomChucNangID").val();		
		var nhomID =  $("#NhomTaiKhoanID").val();
		loadListDanhSachChucNang(nhomID, module);		
	});
	
	$("#NhomChucNangID").change(function(){
		var nhomID =  $("#NhomTaiKhoanID").val();
		var module = $(this).val();		
		loadListDanhSachChucNang(nhomID, module);		
	});
	$("input[class=groupView]").each(function(){
		if (!$(this).is(':checked')) {
			$("#CheckAllViewID").prop('checked', false);
		}
	});
	$("input[class=groupAdd]").each(function(){
		if (!$(this).is(':checked')) {
			$("#CheckAllAddID").prop('checked', false);
		}
	});
	$("input[class=groupDelete]").each(function(){
		if (!$(this).is(':checked')) {
			$("#CheckAllDeleteID").prop('checked', false);
		}
	});
	$("input[class=groupEdit]").each(function(){
		if (!$(this).is(':checked')) {
			$("#CheckAllEditID").prop('checked', false);
		}
	});
});	
	
function loadListDanhSachChucNang(nhomID, module) {
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/GetListDanhSachPhanQuyen",
		data : ({		
			nhomID : nhomID,
			module : module
		}),
		success : function(data) {
			$('#DanhSachPhanQuyenID').html(data);
			$("input[class=groupView]").each(function(){
				if (!$(this).is(':checked')) {
					$("#CheckAllViewID").prop('checked', false);
				}
			});
			$("input[class=groupAdd]").each(function(){
				if (!$(this).is(':checked')) {
					$("#CheckAllAddID").prop('checked', false);
				}
			});
			$("input[class=groupDelete]").each(function(){
				if (!$(this).is(':checked')) {
					$("#CheckAllDeleteID").prop('checked', false);
				}
			});
			$("input[class=groupEdit]").each(function(){
				if (!$(this).is(':checked')) {
					$("#CheckAllEditID").prop('checked', false);
				}
			});
		}
	});
}


function changeStatusPhanQuyen(id_clicked){
	var idClick = "#" + id_clicked;
	var stringArr = id_clicked.split("_");
	var column = stringArr[0];
	var index = stringArr[1];
	var status = 0;
	if ($(idClick).is(':checked')) {
		status = 1;
	}
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/ChangeStatusPhanQuyen",
		data : ({		
			column : column,
			status : status,
			index :  index
		}),
		success : function(data) {			
			$("input[class=groupView]").each(function(){
				if (!$(this).is(':checked')) {
					$("#CheckAllViewID").prop('checked', false);
				}
			});
			$("input[class=groupAdd]").each(function(){
				if (!$(this).is(':checked')) {
					$("#CheckAllAddID").prop('checked', false);
				}
			});
			$("input[class=groupDelete]").each(function(){
				if (!$(this).is(':checked')) {
					$("#CheckAllDeleteID").prop('checked', false);
				}
			});
			$("input[class=groupEdit]").each(function(){
				if (!$(this).is(':checked')) {
					$("#CheckAllEditID").prop('checked', false);
				}
			});
		}
	});	
}

function updateStatusPhanQuyen() {
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/UpdateStatusPhanQuyen",
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

function checkAllView(id_clicked) {
	var idClick = "#" + id_clicked;
	if ($(idClick).is(':checked')) {
		$("input[class=groupView]").each(function(){
			$(this).prop('checked', true);
			changeStatusPhanQuyen(this.id);
		});
		
	} else {
		$("input[class=groupView]").each(function(){
			$(this).prop('checked', false);
			changeStatusPhanQuyen(this.id);
		});	
	}
}

function checkAllAdd(id_clicked) {
	var idClick = "#" + id_clicked;
	if ($(idClick).is(':checked')) {
		$("input[class=groupAdd]").each(function(){
			$(this).prop('checked', true);
			changeStatusPhanQuyen(this.id);
		});
		
	} else {
		$("input[class=groupAdd]").each(function(){
			$(this).prop('checked', false);		
			changeStatusPhanQuyen(this.id);
		});	
	}
}

function checkAllDelete(id_clicked) {
	var idClick = "#" + id_clicked;
	if ($(idClick).is(':checked')) {
		$("input[class=groupDelete]").each(function(){
			$(this).prop('checked', true);
			changeStatusPhanQuyen(this.id);
		});
		
	} else {
		$("input[class=groupDelete]").each(function(){
			$(this).prop('checked', false);		
			changeStatusPhanQuyen(this.id);
		});	
	}
}

function checkAllEdit(id_clicked) {
	var idClick = "#" + id_clicked;
	if ($(idClick).is(':checked')) {
		$("input[class=groupEdit]").each(function(){
			$(this).prop('checked', true);
			changeStatusPhanQuyen(this.id);
		});
		
	} else {
		$("input[class=groupEdit]").each(function(){
			$(this).prop('checked', false);		
			changeStatusPhanQuyen(this.id);
		});	
	}
}