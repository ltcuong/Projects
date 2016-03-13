<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Quản lý dữ liệu hồ sơ công chứng</title>
<link href="css/themedefault/general.css" type="text/css" rel="stylesheet" />
<link href="css/themedefault/noise-red.css" type="text/css" rel="stylesheet" />
<link href="css/themedefault/reset.css" type="text/css" rel="stylesheet" />
<link href="css/themedefault/style.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/lib/jquery.js"></script>
<script type="text/javascript" src="js/login/loginadmin.js"></script>
</head>
<body>
	<div class="mainContainer">
		<header>
		<div>
			<a href="#" class="logo"> 
				<img src="images/themedefault/LOGOTRANGCHU.png" alt=""/>
			</a>
		</div>
		</header>
		<section class="frmlogin">
				<div class="contaniner">
					<tiles:insertAttribute name="body" />
				</div>
		</section>
	</div>
</body>
</html>
