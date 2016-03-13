<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
	<s:set name="link1" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'BCQuanLyCauHinhBaoCao')" />
	<s:set name="link2" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'BCDanhSachBaoCao')" />
	<s:set name="link3" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'BCThongKeBaoCao')" />
 	<s:set name="link4" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'BCQuanLyFileDinhKem')" />
 	
 	
<div class="col_right">
	<div class="box-content">
	<div style="padding-top: 10px;">
			<s:if test="#link1">
				<div style="float:left; width: 20%">
					<p align="center">
					<a href="../quanlybaocao/BCQuanLyCauHinhBaoCao"><img src="../images/themedefault/CauHinhBaoCao.png" width="100px;"></a>
					</p>
					<p align="center">
					<strong><a href="../quanlybaocao/BCQuanLyCauHinhBaoCao">Cấu hình báo cáo</a></strong>
					</p>
				</div>
				</s:if>
				<s:if test="#link2">
				<div style="float:left; width: 20%">
					<p align="center">
					<a href="../quanlybaocao/BCDanhSachBaoCao"><img src="../images/themedefault/DanhSachBaoCao.png" width="100px;"></a>
					</p>
					<p align="center">
					<strong><a href="../quanlybaocao/BCDanhSachBaoCao">Danh sách báo cáo</a></strong>
					</p>
				</div>
				</s:if>
				<s:if test="#link3">
				<div style="float:left; width: 20%">
					<p align="center">
					<a href="../quanlybaocao/BCThongKeBaoCao"><img src="../images/themedefault/ThongKeBaoCao.png" width="100px;"></a>
					</p>
					<p align="center">
					<strong><a href="../quanlybaocao/BCThongKeBaoCao">Thống kê báo cáo</a></strong>
					</p>
				</div>
				</s:if>
				
				<s:if test="#link4">
				<div style="float:left; width: 20%">
					<p align="center">
					<a href="../quanlybaocao/BCQuanLyFileDinhKem"><img src="../images/themedefault/quanlyteptindinhkem.png" width="100px;"></a>
					</p>
					<p align="center">
					<strong><a href="../quanlybaocao/BCQuanLyFileDinhKem">Quản lý tệp tin đính kèm</a></strong>
					</p>
				</div>
				</s:if>
				
				
			</div>
	</div>
</div>