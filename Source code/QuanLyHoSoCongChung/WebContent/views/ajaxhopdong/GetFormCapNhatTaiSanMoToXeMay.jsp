<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<form id="FormTaiSanMoToXeMayID" method="get" action="" autocomplete="off">
<fieldset>
<table width="100%" cellspacing="5" cellpadding="5" border="0"
	class="form">
	<tbody>
		<tr>
			<td style="text-align: right; width: 15%;">Tên phiếu tài sản</td>
			<td style="width: 30%" colspan="2"><input type="text"
				name="tenPhieuTaiSan" value="" id="TenPhieuTaiSanID" class="w-200" maxlength="50">
			</td>
			<td style="text-align: right; width: 15%; color: blue;">&nbsp;</td>
			<td style="width: 30%" colspan="2">&nbsp;
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">Nhãn hiệu</td>
			<td colspan="2"><input type="text" name="nhanHieu" value=""
				id="NhanHieuID" class="w-200" maxlength="100"></td>
			<td style="text-align: right;">Loại xe</td>
			<td colspan="2"><input type="text" name="loaiXe" value=""
				id="LoaiXeID" class="w-200" maxlength="100"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Màu sơn</td>
			<td colspan="2"><input type="text" name="mauSon" value=""
				id="MauSonID" class="w-200" maxlength="100"></td>
			<td style="text-align: right;">Năm sản xuất</td>
			<td colspan="2"><input type="text" name="namSanXuat" value=""
				id="NamSanXuatID" class="w-200" maxlength="4"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Số khung</td>
			<td colspan="2"><input type="text" name="soKhung" value=""
				id="SoKhungID" class="w-200" maxlength="50"></td>
			<td style="text-align: right;">Số máy</td>
			<td colspan="2"><input type="text" name="soMay" value=""
				id="SoMayID" class="w-200" maxlength="50"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Giấy đăng ký số</td>
			<td colspan="2"><input type="text" name="giayDangKySo" value=""
				id="GiayDangKySoID" class="w-200" maxlength="100"></td>
			<td style="text-align: right;">Ngày cấp giấy đăng ký</td>
			<td colspan="2"><input type="text" name="ngayCapGiayDangKy"
				value="" id="NgayCapGiayDangKyID" class="w-200" maxlength="10"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Nơi cấp giấy đăng ký</td>
			<td colspan="2"><input type="text" name="noiCapGiayDangKy"
				value="" id="NoiCapGiayDangKyID" class="w-200" maxlength="200"></td>
			<td style="text-align: right;">Ghi chú về tài sản</td>
			<td colspan="2"><input type="text" name="ghiChuVeTaiSan"
				value="" id="GhiChuVeTaiSanID" class="w-200" maxlength="200"></td>
		</tr>
	</tbody>
</table>
</fieldset>
</form>