<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<form id="FormDongSoHuuTaiSanID" method="get" action="" autocomplete="off">
<fieldset>
<table width="100%" cellspacing="5" cellpadding="0" border="0" class="form">
	<tbody>
		<tr>
			<td style="text-align: right; color: blue; width: 15%">Họ và tên</td>
			<td colspan="2" style="width: 30%"><input type="text"
				class="w-300" id="TenDuongSuDongSoHuuID" name="tenDuongSuDongSoHuu" value="" required maxlength="255"></td>
			<td style="text-align: right; width: 15% ;color: blue; ">Ngày sinh</td>
			<td colspan="2" style="width: 30%; text-align: left;">
			<input type="text" style="width: 230px;" class="w-300" id="NgaySinhDongSoHuuID" name="ngaySinhDongSoHuu" value="" required maxlength="10"> 
			(<input type="checkbox" id="CBNamSinhDongSoHuuID" onclick="checkNamSinhDongSoHuu()"/> Năm sinh)</td>
		</tr>
		<tr>
			<td style="text-align: right; color: blue;">Loại giấy tờ</td>
			<td colspan="2"><select name="loaiGiayToDongSoHuu" id="LoaiGiayToDongSoHuuDongSoHuuID">
					<option value="0">--- Chọn ---</option>
					<s:iterator value="listLoaiGiayTo" var="element">
					<option value='<s:property value="#element.loaiGiayToID"/>'><s:property value="#element.loaiGiayToTen"/></option>
					</s:iterator>
			</select></td>
			<td style="text-align: right; color: blue;">Số giấy tờ</td>
			<td colspan="2"><input type="text" class="w-300" id="SoGiayToDongSoHuuID" name="soGiayToDongSoHuu" value="" required maxlength="20"></td>
		</tr>
		<tr>
			<td style="text-align: right; color: blue;">Ngày cấp</td>
			<td colspan="2"><input type="text" class="w-300" id="NgayCapDongSoHuuID" name="ngayCapDongSoHuu" value="" required maxlength="10"></td>
			<td style="text-align: right; color: blue;">Nơi cấp</td>
			<td colspan="2"><input type="text" class="w-300" id="NoiCapGiayToDongSoHuuID" name="noiCapGiayToDongSoHuu" value="" required maxlength="200"></td>
		</tr>
		<tr>
			<td style="text-align: right; color: blue;">Tỉnh/thành thường trú</td>
			<td colspan="2"><select name="tinhThanhDongSoHuu" id="TinhThanhDongSoHuuID" onchange="getSelectHuyenByTinhDongSoHuuID()">
					<option value="0">--- Chọn ---</option>
					<s:iterator value="listTinh" var="element">
					<option value='<s:property value="#element.tinhID"/>'><s:property value="#element.tinhTen"/></option>
					</s:iterator>
			</select></td>
			<td style="text-align: right; color: blue;">Quận/huyện thường trú</td>
			<td colspan="2"><select name="quanHuyenDongSoHuu" id="QuanHuyenDongSoHuuID" onchange="getSelectXaByHuyenDongSoHuuID()">
					<option value="0">--- Chọn ---</option>
			</select></td>
		</tr>
		<tr>
			<td style="text-align: right; color: blue;">Phường/xã thường trú</td>
			<td colspan="2"><select name="phuongXaDongSoHuu" id="PhuongXaDongSoHuuID">
					<option value="0">--- Chọn ---</option>
			</select></td>
			<td style="text-align: right;">Số nhà/đường phố</td>
			<td colspan="2"><input type="text" class="w-300"
				id="SoNhaDuongPhoDongSoHuuID" name="soNhaDuongPhoDongSoHuu" value="" maxlength="200"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Địa chỉ liên hệ</td>
			<td colspan="4"><input type="text" class="w-700"
				id="DiaChiLienHeDongSoHuuID" name="diaChiLienHeDongSoHuu" value="" maxlength="255"></td>
		</tr>

	</tbody>
</table>
<div style="text-align: center;">
				<input type="submit" class="btn_over" id="BtnCapNhatDongSoHuuPopupID" value="Cập nhật">
				<input type="button" class="btn_over" id="" value="Huỷ bỏ">
				
				</div>
</fieldset>
</form>