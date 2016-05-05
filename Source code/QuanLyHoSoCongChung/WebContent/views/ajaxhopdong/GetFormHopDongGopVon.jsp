<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>

<s:if test="laHopDongSoanSan == 0">
<form id="FormHopDongGopVonID" method="get" action="" autocomplete="off">
<fieldset>
<table width="100%" cellspacing="5" cellpadding="5" border="0"
	class="form">
	<tbody>
		<tr>
			<td colspan="6">
				<p style="color: #e60200;">
					<strong>Thông tin hợp đồng góp vốn</strong>
				</p>
			</td>
		</tr>
		<tr>
			<td style="text-align: right; width: 15%; color: blue;">Giá góp vốn</td>
			<td style="width: 30%" colspan="2"><input type="text" name="giaGopVon" value="" id="GiaGopVonID" class="w-200" maxlength="15" required /></td>
			<td style="text-align: right; width: 15%; color: blue;">&nbsp;</td>
			<td style="width: 30%" colspan="2">&nbsp;</td>
		</tr>

		<tr>
			<td style="text-align: right; color: blue;">Ngày thẩm định tài sản</td>
			<td colspan="2"><input type="text" name="ngayThamDinhTaiSan" value="" id="NgayThamDinhTaiSanID" class="w-200" maxlength="10" required /></td>
			<td style="text-align: right; color: blue;">Mục đích góp vốn</td>
			<td colspan="2"><input type="text" name="mucDichGopVon" value="" id="MucDichGopVonID" class="w-200" maxlength="200" required /></td>
		</tr>
		<tr>
			<td style="text-align: right; color: blue;">Thời hạn góp vốn</td>
			<td colspan="2"><input type="text" name="thoiHanGopVon" value="" id="ThoiHanGopVonID" class="w-200" maxlength="200" required /></td>
			<td style="text-align: right; color: blue">Ngày bắt đầu góp vốn</td>
			<td colspan="2"><input type="text" name="ngayBatDauGopVon" value="" id="NgayBatDauGopVonID" class="w-200" maxlength="10" required /></td>
		</tr>
		<tr>
			<td style="text-align: right; color: blue;">Ngày kết thúc góp vốn</td>
			<td colspan="2"><input type="text" name="ngayKetThucGopVon" value="" id="NgayKetThucGopVonID" class="w-200" maxlength="10" required /></td>
			
			<td style="text-align: right; color: blue;">Lợi nhuận góp vốn</td>
			<td colspan="2"><input type="text" name="loiNhuanGopVon" value="" id="LoiNhuanGopVonID" class="w-200" maxlength="200" required /></td>
		</tr>
		<tr>
			<td style="text-align: right; color: blue;">Phương thức thanh toán</td>
			<td colspan="2"><input type="text" name="phuongThucThanhToan" value="" id="PhuongThucThanhToanID" class="w-200" maxlength="200" required /></td>
		</tr>
		<tr>
			<td style="text-align: right;">Bên đi đăng ký</td>
			<td colspan="2"><select name="benDiDangKy" id="BenDiDangKyID" class="w-200">
					<option value="0">--- Vui lòng chọn ---</option>
					<option value="1">Bên A</option>
					<option value="2">Bên B</option>
					<option value="3">Bên A và Bên B</option>
			</select></td>
			<td style="text-align: right;">Bên chịu phí</td>
			<td colspan="2"><select name="benChiuPhi" id="BenChiuPhiID" class="w-200">
					<option value="0">--- Vui lòng chọn ---</option>
					<option value="1">Bên A</option>
					<option value="2">Bên B</option>
					<option value="3">Bên A và Bên B</option>
			</select></td>
		</tr>		
		<tr>
			<td style="text-align: right;">Ngày có hiệu lực</td>
			<td colspan="2"><input type="text" name="ngayCoHieuLuc" value="" id="NgayCoHieuLucID" class="w-200" maxlength="10" /></td>
		</tr>
		<tr>
			<td style="text-align: right; vertical-align: top;">Các thỏa thuận khác</td>
			<td colspan="5">
			<div id="ThoaThuanKhacTabID">
			<FCK:editor instanceName="thoaThuanKhacEditor" inputName="thoaThuanKhacContent" height="300">
			</FCK:editor>
			</div>
			</td>
		</tr>
	</tbody>
</table>
</fieldset>
</form>
</s:if><s:else>
<form id="FormHopDongSoanSanID" method="get" action="" autocomplete="off">
<fieldset>
<table width="100%" cellspacing="5" cellpadding="5" border="0" class="form">
	<tbody>
		<tr>
			<td colspan="6">
				<p style="color: #e60200;">
					<strong>Thông tin hợp đồng góp vốn</strong>
				</p>
			</td>
		</tr>
		<tr>
			<td style="text-align: right; width: 15%; color: blue;">Nội dung soạn sẵn</td>
			<td style="width: 30%"><div id="NoiDungSoanSanTabID">
			<FCK:editor instanceName="noiDungSoanSanEditor" inputName="noiDungSoanSanContent" height="500">
			</FCK:editor>
			</div>
			</td>
		</tr>
	</tbody>
</table>
</fieldset>
</form>
</s:else>