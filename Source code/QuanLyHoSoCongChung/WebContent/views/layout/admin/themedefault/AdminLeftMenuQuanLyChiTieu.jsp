<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="barInner">
	<div>
		<ul class="navigation">
			<s:set name="link1" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'CTQuanLyNhomChiTieu')" />
			<s:set name="link2" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'CTQuanLyLoaiChiTieu')" />
			<s:set name="link3" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'CTQuanLyDuLieuChiTieu')" />
			<s:set name="link4" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'CTTraCuuChiTieu')" />
			<s:set name="link5" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'CTQuanLyThoiGianNhapLieu')" />
			<s:set name="link6" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'CTQuanLyDuLieuChiTieuTuFile')" />
			<s:set name="link7" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'CTCapNhatTepTinDinhKem')" />
			
			<s:if test="#link1 != false">
			<li><a href="../quanlychitieu/CTQuanLyNhomChiTieu" <s:if test="subAction == 'CTQuanLyNhomChiTieu'">class="active"</s:if>>Quản lý nhóm chỉ tiêu</a></li>
			</s:if>
			<s:if test="#link2 != false">
			<li><a href="../quanlychitieu/CTQuanLyLoaiChiTieu" <s:if test="subAction == 'CTQuanLyLoaiChiTieu'">class="active"</s:if>>Quản lý loại chỉ tiêu</a></li>
			</s:if>
			<s:if test="#link3 != false">
			<li><a href="../quanlychitieu/CTQuanLyDuLieuChiTieu" <s:if test="subAction == 'CTQuanLyDuLieuChiTieu'">class="active"</s:if> >Cập nhật dữ liệu chỉ tiêu</a></li>
			</s:if>
			<s:if test="#link6 != false">
			<li><a href="../quanlychitieu/CTQuanLyDuLieuChiTieuTuFile" <s:if test="subAction == 'CTQuanLyDuLieuChiTieuTuFile'">class="active"</s:if> >Cập nhật dữ liệu chỉ tiêu từ tệp tin</a></li>
			</s:if>
			<s:if test="#link7 != false">
			<li><a href="../quanlychitieu/CTCapNhatTepTinDinhKem" <s:if test="subAction == 'CTCapNhatTepTinDinhKem'">class="active"</s:if> >Cập nhật tệp tin đính kèm</a></li>
			</s:if>
			<s:if test="#link4 != false">
			<li><a href="../quanlychitieu/CTTraCuuChiTieu" <s:if test="subAction == 'CTTraCuuChiTieu'">class="active"</s:if> >Tra cúu dữ liệu chỉ tiêu</a></li>
			</s:if>
			<s:if test="#link5 != false">
			<li><a href="../quanlychitieu/CTQuanLyThoiGianNhapLieu" <s:if test="subAction == 'CTQuanLyThoiGianNhapLieu'">class="active"</s:if> >Quản lý thời gian nhập liệu chỉ tiêu</a></li>
			</s:if>
		</ul>
	</div>
</div>