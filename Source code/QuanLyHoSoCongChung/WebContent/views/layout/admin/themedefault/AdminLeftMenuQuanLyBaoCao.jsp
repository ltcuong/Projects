<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="barInner">
	<div>
		<ul class="navigation">
			<s:set name="link1" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'BCQuanLyCauHinhBaoCao')" />
			<s:set name="link2" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'BCDanhSachBaoCao')" />
			<s:set name="link3" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'BCThongKeBaoCao')" />
			<s:set name="link4" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'BCQuanLyFileDinhKem')" />
			
			<s:if test="#link1 != false">
			<li><a href="../quanlybaocao/BCQuanLyCauHinhBaoCao" <s:if test="subAction == 'BCQuanLyCauHinhBaoCao'">class="active"</s:if><s:if test="subAction == 'BCChiTietCauHinhBaoCao'">class="active"</s:if>>Cấu hình báo cáo</a></li>
			</s:if>
			<s:if test="#link2 != false">
			<li><a href="../quanlybaocao/BCDanhSachBaoCao"  <s:if test="subAction == 'BCDanhSachBaoCao'">class="active"</s:if>>Danh sách báo cáo</a></li>
			</s:if>
			<s:if test="#link3 != false">
			<li><a href="../quanlybaocao/BCThongKeBaoCao" <s:if test="subAction == 'BCThongKeBaoCao'">class="active"</s:if>>Thống kê báo cáo</a></li>
			</s:if>
			<s:if test="#link4 != false">
			<li><a href="../quanlybaocao/BCQuanLyFileDinhKem" <s:if test="subAction == 'BCQuanLyFileDinhKem'">class="active"</s:if>>Quản lý tệp tin đính kèm</a></li>
			</s:if>
		</ul>
	</div>
</div>