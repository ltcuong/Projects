<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<form id="FormTaiSanMayMocID" method="get" action="" autocomplete="off">
<fieldset>
<table width="100%" cellspacing="5" cellpadding="5" border="0"
	class="form">
	<tbody>
		<tr>
			<td style="text-align: right; width: 15%;">Tên phiếu tài sản</td>
			<td style="width: 30%" colspan="2"><input type="text"
				name="tenPhieuTaiSan" value="" id="TenPhieuTaiSanID" class="w-200" maxlength="50">
			</td>
			<td style="text-align: right; width: 15%">Nhãn hiệu</td>
			<td style="width: 30%" colspan="2"><input type="text"
				name="nhanHieu" value="" id="NhanHieuID" class="w-200" maxlength="200"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Công suất(Mã lực)</td>
			<td colspan="2"><input type="text" name="congSuat" value=""
				id="CongSuatID" class="w-200" maxlength="100"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Nơi chế tạo</td>
			<td colspan="2"><input type="text" name="noiCheTao" value=""
				id="NoiCheTaoID" class="w-200" maxlength="200"></td>
			<td style="text-align: right;">Đặc điểm tài sản</td>
			<td colspan="2"><input type="text" name="dacDiemTaiSan" value=""
				id="DacDiemTaiSanID" class="w-200" maxlength="200"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Cơ quan đăng kiểm</td>
			<td colspan="2"><input type="text" name="coQuanDangKiem"
				value="" id="CoQuanDangKiemID" class="w-200" maxlength="200"></td>
			<td style="text-align: right;">Ghi chú về tài sản</td>
			<td colspan="2"><input type="text" name="ghiChuVeTaiSan"
				value="" id="GhiChuVeTaiSanID" class="w-200" maxlength="200"></td>
		</tr>
	</tbody>
</table>
</fieldset>
</form>