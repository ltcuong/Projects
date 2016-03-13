<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
	<s:set name="link1" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'HoSoCaNhan')" />
 	<s:set name="link2" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'QuanLyNhom')" />
 	<s:set name="link3" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'ThemMoiTaiKhoan')" />
 	<s:set name="link4" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'DanhSachTaiKhoan')" />
 	<s:set name="link5" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'PhanQuyenChucNang')" />
 	<s:set name="link6" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'ThamSoHeThong')" />
 	<s:set name="link7" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'NhatKyNguoiDung')" />
 	<s:set name="link8" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'SaoLuuDuLieu')" />
 	
<div class="col_right">
	<div class="box-content">
		<div style="padding-top: 10px;">
				<s:if test="#link1">
				<div style="float:left; width: 20%">
					<p align="center">
					<a href="../quanlynguoidung/HoSoCaNhan"><img src="../images/themedefault/HoSoCaNhan.png" width="100px;"></a>
					</p>
					<p align="center">
					<strong><a href="../quanlynguoidung/HoSoCaNhan">Hồ sơ cá nhân</a></strong>
					</p>
				</div>
				</s:if>
				<s:if test="#link2">
				<div style="float:left; width: 20%">
					<p align="center">
					<a href="../quanlynguoidung/QuanLyNhom"><img src="../images/themedefault/QuanLyNhom.png" width="100px;"></a>
					</p>
					<p align="center">
					<strong><a href="../quanlynguoidung/QuanLyNhom">Quản lý nhóm</a></strong>
					</p>
				</div>
				</s:if>
				<s:if test="#link3">
				<div style="float:left; width: 20%">
					<p align="center">
					<a href="../quanlynguoidung/ThemMoiTaiKhoan"><img src="../images/themedefault/ThemTaiKhoan.png" width="100px;"></a>
					</p>
					<p align="center">
					<strong><a href="../quanlynguoidung/ThemMoiTaiKhoan">Thêm mới tài khoản</a></strong>
					</p>
				</div>
				</s:if>
				<s:if test="#link4">
				<div style="float:left; width: 20%">
					<p align="center">
					<a href="../quanlynguoidung/DanhSachTaiKhoan"><img src="../images/themedefault/DanhSachTaiKhoan.png" width="100px;"></a>
					</p>
					<p align="center">
					<strong><a href="../quanlynguoidung/DanhSachTaiKhoan">Danh sách tài khoản</a></strong>
					</p>
				</div>
				</s:if>
				<s:if test="#link5">
				<div style="float:left; width: 20%">
					<p align="center">
					<a href="../quanlynguoidung/PhanQuyenChucNang"><img src="../images/themedefault/PhanQuyenChucNang.png" width="100px;"></a>
					</p>
					<p align="center">
					<strong><a href="../quanlynguoidung/PhanQuyenChucNang">Phân quyền chức năng</a></strong>
					</p>
				</div>
				</s:if>
				<s:if test="#link7">
				<div style="float:left; width: 20%">
					<p align="center">
					<a href="../quanlynguoidung/NhatKyNguoiDung"><img src="../images/themedefault/NhatKyNguoiDung.png" width="100px;"></a>
					</p>
					<p align="center">
					<strong><a href="../quanlynguoidung/NhatKyNguoiDung">Nhật ký người dùng</a></strong>
					</p>
				</div>
				</s:if>
				<s:if test="#link8">
				<div style="float:left; width: 20%">
					<p align="center">
					<a href="../quanlynguoidung/SaoLuuDuLieu"><img src="../images/themedefault/SaoLuuDuLieu.png" width="100px;"></a>
					</p>
					<p align="center">
					<strong><a href="../quanlynguoidung/SaoLuuDuLieu">Sao lưu dữ liệu</a></strong>
					</p>
				</div>
				</s:if>
			</div>
	</div>
</div>