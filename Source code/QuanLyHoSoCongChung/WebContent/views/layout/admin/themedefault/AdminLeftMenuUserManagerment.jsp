<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="barInner">
	<div>
	<ul class="navigation">
		 	<s:set name="link1" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'HoSoCaNhan')" />
		 	<s:set name="link2" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'QuanLyNhom')" />
		 	<s:set name="link3" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'ThemMoiTaiKhoan')" />
		 	<s:set name="link4" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'DanhSachTaiKhoan')" />
		 	<s:set name="link5" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'PhanQuyenChucNang')" />
		 	<s:set name="link6" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'ThamSoHeThong')" />
		 	<s:set name="link7" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'NhatKyNguoiDung')" />
		 	<s:set name="link8" value="@util.WebUtil@taiKhoanSV.checkLinkSubMenu(memberShip,'SaoLuuDuLieu')" />

		 	
		 	<s:if test="#link1 != false">
			<li><a href="HoSoCaNhan" <s:if test="subAction == 'HoSoCaNhan'">class="active"</s:if>>Hồ sơ cá nhân</a></li>
			</s:if>
			<s:if test="#link2 != false">
			<li><a href="QuanLyNhom" <s:if test="subAction == 'QuanLyNhom'">class="active"</s:if>>Quản lý nhóm</a></li>
			</s:if>
			<s:if test="#link3 != false">
			<li><a href="ThemMoiTaiKhoan" <s:if test="subAction == 'ThemMoiTaiKhoan'">class="active"</s:if>>Thêm mới tài khoản</a></li>
			</s:if>
			
			<s:if test="#link4 != false">
			<li><a href="DanhSachTaiKhoan" <s:if test="subAction == 'DanhSachTaiKhoan'">class="active"</s:if>>Danh sách tài khoản</a></li>
			</s:if>
			<s:if test="#link5 != false">			
			<li><a href="PhanQuyenChucNang" <s:if test="subAction == 'PhanQuyenChucNang'">class="active"</s:if>>Phân quyền chức năng</a></li>
			</s:if>
			<!-- 
			<s:if test="#link6 != false">
			<li><a href="ThamSoHeThong" <s:if test="subAction == 'ThamSoHeThong'">class="active"</s:if>>Tham số hệ thống</a></li>
			</s:if> -->
			<s:if test="#link7 != false">
			<li><a href="NhatKyNguoiDung" <s:if test="subAction == 'NhatKyNguoiDung'">class="active"</s:if>>Nhật ký người dùng</a></li>
			</s:if>
			<s:if test="#link8 != false">
			<li><a href="SaoLuuDuLieu" <s:if test="subAction == 'SaoLuuDuLieu'">class="active"</s:if>>Sao lưu dữ liệu</a></li>
			</s:if>
		</ul>
		
	</div>
</div>