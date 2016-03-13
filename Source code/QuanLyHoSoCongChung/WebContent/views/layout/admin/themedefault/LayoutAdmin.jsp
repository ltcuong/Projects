<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<?xml version="1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta http-equiv="content-language" content="en" />
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Pragma" content="No-cache" />
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Expires" content="0" />

<title>Quản lý dữ liệu hồ sơ công chứng</title>
<link href="../css/themedefault/bootstrap.css" rel="stylesheet"/>
<link href="../css/themedefault/general.css"	rel="stylesheet"/>
<link href="../css/themedefault/noise-red.css" rel="stylesheet"/>
<link href="../css/themedefault/myStyle.css"	rel="stylesheet" type="text/css"/>
	
<link href="../css/themedefault/reset.css" type="text/css" rel="stylesheet" />
<link href="../css/themedefault/main.css" type="text/css" rel="stylesheet" />
<link href="../css/themedefault/admin.css" type="text/css" rel="stylesheet" />
<link href="../css/themedefault/colorbox.css" type="text/css" rel="stylesheet" />

<link href="../css/lib/jquery-ui.css" type="text/css" rel="stylesheet" />

<script type="text/javascript" src="../js/lib/jquery.js"></script>
<script type="text/javascript" src="../js/lib/jquery-ui.js"></script>
<script type="text/javascript" src="../js/lib/jquery.validate.js"></script>
<script type="text/javascript" src="../js/lib/jquery.colorbox.js"></script>
<script type="text/javascript" src="../js/lib/jquery.form.js"></script>

<script type="text/javascript" src="../js/cront.js"></script>
<script type="text/javascript" src="../js/common.js"></script>

</head>
<body>

	<div class="mainContainer">
		<header>
		<div>
			<a href="#" class="logo"> 
			<img src="../images/themedefault/LOGOTRANGCHU.png" style="height: 85px;"/></a>
		</div>
		</header>
		<div style="display: block;" class="widgetBar">
			<tiles:insertAttribute name="leftMenu" />
		</div>

		<div class="content contentRight">
			<div class="topBar">
				<tiles:insertAttribute name="menuTop" />
			</div>
			<div class="contentInner" id="ContentBodyID">
				<tiles:insertAttribute name="body" />
			</div>
		</div>
	</div>
	<div id="wrapper">
		<div style="display: none;" id="overlay"></div>
		<div style="display: none;" id="popup">
			<img src="../images/themedefault/loading.gif" />
		</div>
		<input type="hidden" value="Xin vui lòng nhập thông tin" id="MsgError01"/>
		<input type="hidden" value="Xin vui lòng chọn giá trị" id="MsgError02"/>
		<input type="hidden" value="Xin vui lòng chỉ nhập số" id="MsgError03"/>
		<input type="hidden" value="Xin vui lòng nhập ít nhất {0} ký tự" id="MsgError04"/>
		<input type="hidden" value="Bạn có muốn xoá thông tin?" id="MsgError05"/>
		<input type="hidden" value="Xin vui lòng chọn tài khoản để cấp quyền." id="MsgError06"/>
		<input type="hidden" value="Mật khẩu không trùng khớp." id="MsgError07"/>
		
		
		<input type="hidden" value="Cập nhật thông tin thành công!" id="MsgCapNhatThanhCongID"/>
		<input type="hidden" value="Cập nhật thông tin thất bại. Xin vui lòng thử lại." id="MsgCapNhatThatBaiID"/>
		<input type="hidden" value="Xoá thông tin thành công!" id="MsgXoaThanhCongID"/>
		<input type="hidden" value="Thông tin đang được sử dụng. Không thể xoá." id="MsgXoaThatBaiID"/>
		<input type="hidden" value="Kích thước tệp tin không đước quá 5MB." id="MsgKichThuocLonID"/>
	</div>
	
</body>

</html>
