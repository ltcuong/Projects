<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<form id="FormTaiSanTraiPhieuID" method="get" action="" autocomplete="off">
<fieldset>
<table width="100%" cellspacing="5" cellpadding="5" border="0"
	class="form">
	<tbody>
		<tr>
			<td style="text-align: right; width: 15%;">Tên phiếu tài sản</td>
			<td style="width: 30%" colspan="2"><input type="text"
				name="tenPhieuTaiSan" value="" id="TenPhieuTaiSanID" class="w-200" maxlength="50">
			</td>
			<td style="text-align: right; width: 15%">Loại trái phiếu</td>
			<td style="width: 30%" colspan="2"><input type="text"
				name="loaiTraiPhieu" value="" id="LoaiTraiPhieuID" class="w-200" maxlength="50">
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">Ngày phát hành</td>
			<td colspan="2"><input type="text" name="ngayPhatHanh" value=""
				id="NgayPhatHanhID" class="w-200" maxlength="100"></td>
			<td style="text-align: right;">Nơi phát hành</td>
			<td colspan="2"><input type="text" name="noiPhatHanh" value=""
				id="NoiPhatHanhID" class="w-200" maxlength="200"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Mệnh giá</td>
			<td colspan="2"><input type="text" name="menhGia" value=""
				id="MenhGiaID" class="w-200" maxlength="50"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Kỳ hạn</td>
			<td colspan="2"><input type="text" name="kyHan" value=""
				id="KyHanID" class="w-200" maxlength="100"></td>
			<td style="text-align: right;">Lãi suất</td>
			<td colspan="2"><input type="text" name="laiSuat" value=""
				id="LaiSuatID" class="w-200" maxlength="50"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Thời hạn thanh toán</td>
			<td colspan="2"><input type="text" name="thoiHanThanhToan"
				value="" id="ThoiHanThanhToanID" class="w-200" maxlength="50"></td>
			<td style="text-align: right;">Họ tên</td>
			<td colspan="2"><input type="text" name="hoTen" value=""
				id="HoTenID" class="w-200" maxlength="150"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Địa chỉ</td>
			<td colspan="2"><input type="text" name="diaChi" value=""
				id="DiaChiID" class="w-200" maxlength="200"></td>
			<td style="text-align: right;">Loại giấy tờ tùy thân</td>
			<td colspan="2"><select name="loaiGiayToTuyThan"
				id="LoaiGiayToTuyThanID" class="w-200">
					<option value="0">--Tất cả--</option>
					 <s:iterator value="listLoaiGiayTo" var="element">
				 <option value='<s:property value="loaiGiayToID"/>'><s:property value="loaiGiayToTen"/></option>
				</s:iterator>
			</select></td>
		</tr>
		<tr>
			<td style="text-align: right;">Số giấy tờ tùy thân</td>
			<td colspan="2"><input type="text" name="soGiayToTuyThan"
				value="" id="SoGiayToTuyThanID" class="w-200" maxlength="50"></td>
			<td style="text-align: right;">Ngày cấp giấy tờ tùy thân</td>
			<td colspan="2"><input type="text" name="ngayCapGiayToTuyThan"
				value="" id="NgayCapGiayToTuyThanID" class="w-200" maxlength="10"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Nơi cấp giấy tờ tùy thân</td>
			<td colspan="2"><input type="text" name="noiCapGiayToTuyThan"
				value="" id="NoiCapGiayToTuyThanID" class="w-200" maxlength="200"></td>
			<td style="text-align: right;">Ghi chú về tài sản</td>
			<td colspan="2"><input type="text" name="ghiChuVeTaiSan"
				value="" id="GhiChuVeTaiSanID" class="w-200" maxlength="200"></td>
		</tr>
	</tbody>
</table>
</fieldset>
</form>