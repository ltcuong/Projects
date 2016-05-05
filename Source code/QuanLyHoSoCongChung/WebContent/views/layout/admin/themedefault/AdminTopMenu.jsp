<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<div class="topBarInner">
	<div>
		<ul class="breadcrumbs">
			<s:set name="link1" value="@util.WebUtil@taiKhoanSV.checkLinkMainMenu(memberShip,'users')" />
			<s:set name="link2" value="@util.WebUtil@taiKhoanSV.checkLinkMainMenu(memberShip,'chitieu')" />
			<s:set name="link3" value="@util.WebUtil@taiKhoanSV.checkLinkMainMenu(memberShip,'baocao')" />
			<s:set name="link4" value="@util.WebUtil@taiKhoanSV.checkLinkMainMenu(memberShip,'danhmuc')" />
			
			<li><a href="../quanlynguoidung/AdminHome"><img src="../images/themedefault/home5.png" /></a></li>
			<s:if test="#link1 != false">
			<li><a href="../quanlynguoidung/AdminHome" <s:if test="mainAction == 'QuanLyNguoiDung'">class="ActiveTopMenu"</s:if>>Quản lý người dùng</a></li>
			</s:if>
			<s:if test="#link2 != false">
			<li><a href="../quanlyhopdong/HDTrangChu"  <s:if test="mainAction == 'ChiTieu'">class="ActiveTopMenu"</s:if>>Quản lý hợp đồng công chứng</a></li>
			</s:if>
			<s:if test="#link3 != false">
			<li><a href="../quanlybaocao/BCTrangChu" <s:if test="mainAction == 'BaoCao'">class="ActiveTopMenu"</s:if>>Báo cáo thống kê </a></li>
			</s:if>
			<s:if test="#link4 != false">
			<li><a href="../danhmuc/TrangChu" <s:if test="mainAction == 'DanhMuc'">class="ActiveTopMenu"</s:if>>Quản lý danh mục </a></li>
			</s:if>
			<li><a href="../huongdan/HDTrangChu" <s:if test="mainAction == 'HuongDan'">class="ActiveTopMenu"</s:if>>Hướng dẫn</a></li>
		</ul>		
	</div>
	<ul class="profile barButtons">
		<li class="profile"><a href="javascript:void(0);" onclick="logoutButton();">Đăng xuất</a>
		</li>
	</ul>
	<ul class="profile barButtons">
		<li class="profile"><a href="#">
		<img src="../images/themedefault/member2.png" alt="">
		Chào mừng: <span id="" style="font-weight: bold;"><s:property value="memberShip.getHoTen()"/></span>
		 <span class="arrow"></span>
		 <span class="expand"></span></a>
		 </li>
	</ul>
	
</div>
