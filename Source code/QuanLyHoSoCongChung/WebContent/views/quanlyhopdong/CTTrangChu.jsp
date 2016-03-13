<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
	<s:set name="link1" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'CTQuanLyNhomChiTieu')" />
	<s:set name="link2" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'CTQuanLyLoaiChiTieu')" />
	<s:set name="link3" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'CTQuanLyDuLieuChiTieu')" />
	<s:set name="link4" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'CTTraCuuChiTieu')" />
	<s:set name="link5" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'CTQuanLyThoiGianNhapLieu')" />
 	<s:set name="link6" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'CTQuanLyDuLieuChiTieuTuFile')" />
	<s:set name="link7" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'CTCapNhatTepTinDinhKem')" />
			
			
<div class="col_right">
	<div class="box-content">
	<div style="padding-top: 10px;">
				<s:if test="#link1">
				<div style="float:left; width: 20%">
					<p align="center">
					<a href="../quanlychitieu/CTQuanLyNhomChiTieu"><img src="../images/themedefault/NhomChiTieu.png" width="100px;"></a>
					</p>
					<p align="center">
					<strong><a href="../quanlychitieu/CTQuanLyNhomChiTieu">Quản lý nhóm chỉ tiêu</a></strong>
					</p>
				</div>
				</s:if>
				<s:if test="#link2">
				<div style="float:left; width: 20%">
					<p align="center">
					<a href="../quanlychitieu/CTQuanLyLoaiChiTieu"><img src="../images/themedefault/LoaiChiTieu.png" width="100px;"></a>
					</p>
					<p align="center">
					<strong><a href="../quanlychitieu/CTQuanLyLoaiChiTieu">Quản lý loại chỉ tiêu</a></strong>
					</p>
				</div>
				</s:if>
				<s:if test="#link3">
				<div style="float:left; width: 20%">
					<p align="center">
					<a href="../quanlychitieu/CTQuanLyDuLieuChiTieu"><img src="../images/themedefault/CapNhatDuLieu.png" width="100px;"></a>
					</p>
					<p align="center">
					<strong><a href="../quanlychitieu/CTQuanLyDuLieuChiTieu">Cập nhật dữ liệu chỉ tiêu</a></strong>
					</p>
				</div>
				</s:if>
				
				<s:if test="#link6">
				<div style="float:left; width: 20%">
					<p align="center">
					<a href="../quanlychitieu/CTQuanLyDuLieuChiTieuTuFile"><img src="../images/themedefault/UploadDataFromFile.png" width="100px;"></a>
					</p>
					<p align="center">
					<strong><a href="../quanlychitieu/CTQuanLyDuLieuChiTieuTuFile">Cập nhật dữ liệu chỉ tiêu từ tệp tin</a></strong>
					</p>
				</div>
				</s:if>
				
				
				<s:if test="#link7">
				<div style="float:left; width: 20%">
					<p align="center">
					<a href="../quanlychitieu/CTCapNhatTepTinDinhKem"><img src="../images/themedefault/uploadfile.png" width="100px;"></a>
					</p>
					<p align="center">
					<strong><a href="../quanlychitieu/CTCapNhatTepTinDinhKem">Cập nhật tệp tin đính kèm</a></strong>
					</p>
				</div>
				</s:if>
				<s:if test="#link4">
				<div style="float:left; width: 20%">
					<p align="center">
					<a href="../quanlychitieu/CTTraCuuChiTieu"><img src="../images/themedefault/TraCuuDuLieu.png" width="100px;"></a>
					</p>
					<p align="center">
					<strong><a href="../quanlychitieu/CTTraCuuChiTieu">Tra cúu dữ liệu chỉ tiêu</a></strong>
					</p>
				</div>
				</s:if>
				<s:if test="#link5">
				<div style="float:left; width: 20%">
					<p align="center">
					<a href="../quanlychitieu/CTQuanLyThoiGianNhapLieu"><img src="../images/themedefault/QuanLyThoiGian.png" width="100px;"></a>
					</p>
					<p align="center">
					<strong><a href="../quanlychitieu/CTQuanLyThoiGianNhapLieu">Quản lý thời gian nhập liệu chỉ tiêu</a></strong>
					</p>
				</div>
				</s:if>
		</div>
	</div>
</div>