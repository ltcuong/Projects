<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<form id="FormTaiSanMayBayID" method="get" action="" autocomplete="off">
<fieldset>
<table width="100%" cellspacing="5" cellpadding="5" border="0"
	class="form">
	<tbody>
		<tr>
			<td style="text-align: right; width: 15%;">Tên phiếu tài sản</td>
			<td style="width: 30%" colspan="2"><input type="text"
				name="tenPhieuTaiSan" value="" id="TenPhieuTaiSanID" class="w-200" maxlength="50">
			</td>
			<td style="text-align: right; width: 15%">Tên phương tiện</td>
			<td style="width: 30%" colspan="2"><input type="text"
				name="tenPhuongTien" value="" id="TenPhuongTienID" class="w-200" maxlength="200">
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">Ngày cấp giấy đăng ký</td>
			<td colspan="2"><input type="text" name="ngayCapGiayDangKy"
				value="" id="NgayCapGiayDangKyID" class="w-200" maxlength="10"></td>
				<td style="text-align: right;">Nơi cấp giấy đăng ký</td>
			<td colspan="2"><input type="text" name="noiCapGiayDangKy"
				value="" id="NoiCapGiayDangKyID" class="w-200" maxlength="200"></td>
		</tr>
		<tr>
			
			<td style="text-align: right;">Đặc điểm tài sản</td>
			<td colspan="2"><input type="text" name="dacDiemTaiSan" value=""
				id="DacDiemTaiSanID" class="w-200" maxlength="200"></td>
				<td style="text-align: right;">Ghi chú về tài sản</td>
			<td colspan="2"><input type="text" name="ghiChuVeTaiSan"
				value="" id="GhiChuVeTaiSanID" class="w-200" maxlength="200"></td>
		</tr>
	</tbody>
</table>
</fieldset>
</form>