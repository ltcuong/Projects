$(document).ready(function() {
	//loadListMenuLeftThemMoiTK();
	$( "#dtTuNgayID" ).datepicker();
	$( "#dtDenNgayID" ).datepicker();
	$("#btnSearch").click(function(){		
		loadListDanhSachLog(1);
	});
});


function loadListDanhSachLog(page) {
	var tuNgay = $("#dtTuNgayID").val();
	var denNgay = $("#dtDenNgayID").val();
	var nhomID = $("#nhomNguoiDungID").val();
	var tenDangNhap = $("#nguoiDungID").val();
	var formLamViec = $("#formChucNangID").val();
	var actionName = $("#noiDungID").val();
	
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/GetListNhatKyNguoiDung",
		async : false,
		data : ({
			tuNgay : tuNgay,
			denNgay : denNgay,
			nhomID : nhomID,
			tenDangNhap : tenDangNhap,
			actionName : actionName,
			formLamViec : formLamViec,
			page : page
		}),
		success : function(data) {
			$("#tblNhatKyID").html(data);		
			$("#listChinhSuaNguoiDungID").html("");
		}
	});
}

function getSelectTaiKhoan(){
	var nhomID = $("#nhomNguoiDungID").val();
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/GetSelectNguoiDung",
		async : false,
		data : ({
			nhomID : nhomID
		}),
		success : function(data) {
			$("#nguoiDungID").html(data);			
		}
	});
}

function xemChiTietNhatKy(logID) {
	$.ajax({
		type : "POST",
		url : "../ajaxquanlynguoidung/GetListChinhSuaNguoiDung",
		async : false,
		data : ({
			logID : logID
		}),
		success : function(data) {
			$("#listChinhSuaNguoiDungID").html(data);			
		}
	});
}

function changePageListDonVi(page){
	$("#PageIDHidden").val(page);
	loadListDanhSachDonVi(page);
}
