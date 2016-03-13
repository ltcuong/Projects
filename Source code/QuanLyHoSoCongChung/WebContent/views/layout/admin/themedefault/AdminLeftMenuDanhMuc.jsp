<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="barInner">
	<div>
		<ul class="navigation">
			<s:set name="link1" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'DanhMucTinh')" />
			<s:set name="link2" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'DanhMucHuyen')" />
			<s:set name="link3" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'DanhMucXa')" />
			<s:set name="link4" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'DanhMucDonViTinh')" />
			<s:set name="link5" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'DanhMucDonViTrucThuocHuyen')" />
			<s:set name="link6" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'DanhMucDonViTrucThuocTinh')" />
			
			
			<s:if test="#link2 != false">
			<li><a href="../danhmuc/DanhMucHuyen"  <s:if test="subAction == 'DanhMucHuyen'">class="active"</s:if>>Danh mục huyện</a></li>
			</s:if>
			<s:if test="#link3 != false">
			<li><a href="../danhmuc/DanhMucXa" <s:if test="subAction == 'DanhMucXa'">class="active"</s:if>>Danh mục xã</a></li>
			</s:if>
			<s:if test="#link6 != false">
			<li><a href="../danhmuc/DanhMucDonViTrucThuocTinh" <s:if test="subAction == 'DanhMucDonViTrucThuocTinh'">class="active"</s:if>>Danh mục đơn vị trực thuộc tỉnh</a></li>
			</s:if>
			<s:if test="#link5 != false">
			<li><a href="../danhmuc/DanhMucDonViTrucThuocHuyen" <s:if test="subAction == 'DanhMucDonViTrucThuocHuyen'">class="active"</s:if>>Danh mục đơn vị trực thuộc huyện</a></li>
			</s:if>
			<s:if test="#link4 != false">
			<li><a href="../danhmuc/DanhMucDonViTinh" <s:if test="subAction == 'DanhMucDonViTinh'">class="active"</s:if>>Danh mục đơn vị tính</a></li>
			</s:if>
			
		</ul>
	</div>
</div>