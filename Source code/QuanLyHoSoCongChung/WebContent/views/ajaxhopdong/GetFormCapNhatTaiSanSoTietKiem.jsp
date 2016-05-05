<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<form id="FormTaiSanSoTietKiemID" method="get" action="" autocomplete="off">
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
			<td style="width: 30%" colspan="2">&nbsp;</td>
		</tr>

		<tr>
			<td style="text-align: right;">Ngày gửi</td>
			<td colspan="2"><input type="text" name="ngayGui" value=""
				id="NgayGuiID" class="w-200" maxlength="10"></td>
			<td style="text-align: right;">Số dư tiền gửi</td>
			<td colspan="2"><input type="text" name="soDuTienGui" value=""
				id="SoDuTienGuiID" class="w-200" maxlength="15"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Kỳ hạn</td>
			<td colspan="2"><input type="text" name="kyHan" value=""
				id="KyHanID" class="w-200" maxlength="50"></td>
			<td style="text-align: right;">Lãi suất</td>
			<td colspan="2"><input type="text" name="l" value=""
				id="LaiSuatID" class="w-200" maxlength="50"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Loại tiền</td>
			<td colspan="2"><input type="text" name="loaiTien" value=""
				id="LoaiTienID" class="w-200" maxlength="50"></td>
			<td style="text-align: right;">Ngân hàng cấp</td>
			<td colspan="2"><input type="text" name="nganHangCap" value=""
				id="NganHangCapID" class="w-200" maxlength="150"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Họ tên chủ sổ</td>
			<td colspan="2"><input type="text" name="hoTenChuSo" value=""
				id="HoTenChuSoID" class="w-200" maxlength="150"></td>
			<td style="text-align: right;">Địa chỉ</td>
			<td colspan="2"><input type="text" name="diaChi" value=""
				id="DiaChiID" class="w-200" maxlength="200"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Loại giấy tờ tùy thân</td>
			<td colspan="2"><select name="loaiGiayToTuyThan"
				id="LoaiGiayToTuyThanID" class="w-200">
					<option value="0">--Tất cả--</option>
					 <s:iterator value="listLoaiGiayTo" var="element">
					 <option value='<s:property value="loaiGiayToID"/>'><s:property value="loaiGiayToTen"/></option>
					</s:iterator>
			</select></td>
			<td style="text-align: right;">Số giấy tờ tùy thân</td>
			<td colspan="2"><input type="text" name="soGiayToTuyThan"
				value="" id="SoGiayToTuyThanID" class="w-200" maxlength="50"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Ngày cấp giấy tờ tùy thân</td>
			<td colspan="2"><input type="text" name="ngayCapGiayToTuyThan"
				value="" id="NgayCapGiayToTuyThanID" class="w-200" maxlength="10"></td>
			<td style="text-align: right;">Nơi cấp giấy tờ tùy thân</td>
			<td colspan="2"><input type="text" name="noiCapGiayToTuyThan"
				value="" id="NoiCapGiayToTuyThanID" class="w-200" maxlength="200"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Ghi chú về tài sản</td>
			<td colspan="2"><input type="text" name="ghiChuVeTaiSan"
				value="" id="GhiChuVeTaiSanID" class="w-200" maxlength="200"></td>
		</tr>
	</tbody>
</table>
</fieldset>
</form>