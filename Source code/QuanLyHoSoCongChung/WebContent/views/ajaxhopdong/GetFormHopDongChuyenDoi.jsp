<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>

<s:if test="laHopDongSoanSan == 0">
<form id="FormHopDongChuyenDoiID" method="get" action="" autocomplete="off">
<fieldset>
<table width="100%" cellspacing="5" cellpadding="5" border="0"
	class="form">
	<tbody>
		<tr>
			<td colspan="6">
				<p style="color: #e60200;">
					<strong>Thông tin hợp đồng chuyển đổi</strong>
				</p>
			</td>
		</tr>
		<tr>
			<td style="text-align: right; color: blue;width: 15%;">Ngày giao tài sản cho bên A</td>
			<td colspan="2"  style="width: 30%"><input type="text" name="ngayGiaoTaiSanChoBenA" value="" id="NgayGiaoTaiSanChoBenAID" class="w-200" maxlength="10" required/></td>
			<td style="text-align: right; color: blue; width: 15%;">Ngày giao tài sản cho bên B</td>
			<td colspan="2"  style="width: 30%"><input type="text" name="ngayGiaoTaiSanChoBenB" value="" id="NgayGiaoTaiSanChoBenBID" class="w-200" maxlength="10" required/></td>
		</tr>
		<tr>
			<td style="text-align: right; color: blue;">Giá chênh lệch</td>
			<td colspan="2"><input type="text" name="soTienChenhLech" value="" id="SoTienChenhLechID" class="w-200" maxlength="15" required  required/></td>
			<td style="text-align: right; color: blue;">Bên trả chênh lệch</td>
			<td colspan="2"><select name="benTraChenhLech" id="BenTraChenhLechID" class="w-200">
					<option value="0">--- Vui lòng chọn ---</option>
					<option value="1">Bên A</option>
					<option value="2">Bên B</option>
					<option value="3">Bên A và Bên B</option>
			</select></td>
		</tr>
		<tr>
			<td style="text-align: right; color: blue;">Phương thức thanh toán</td>
			<td colspan="2"><input type="text" name="phuongThucThanhToan" value="" id="PhuongThucThanhToanID" class="w-200" maxlength="200" required/></td>
			<td style="text-align: right; color: blue;">Bên thanh toán</td>
			<td colspan="2"><select name="benThanhToan" id="BenThanhToanID" class="w-200">
					<option value="0">--- Vui lòng chọn ---</option>
					<option value="1">Bên A</option>
					<option value="2">Bên B</option>
					<option value="3">Bên A và Bên B</option>
			</select></td>
		</tr>
		<tr>
			<td style="text-align: right; color: blue;">Thời hạn thanh toán</td>
			<td colspan="2"><input type="text" name="thoiHanThanhToan" value="" id="ThoiHanThanhToanID" class="w-200" maxlength="10" required/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Các cam kết khác</td>
			<td colspan="6"><input type="text" name="cacCamKetKhac" value="" id="CacCamKetKhacID" class="w-200" maxlength="500" ></td>
		</tr>
		<tr>
			<td style="text-align: right; color: blue;">Phí bên A trả</td>
			<td colspan="2"><input type="text" name="phiBenAPhaiTra" value="" id="PhiBenAPhaiTraID" class="w-200" maxlength="15" required/></td>
			<td style="text-align: right; color: blue;">Phí bên B trả</td>
			<td colspan="2"><input type="text" name="phiBenBPhaiTra" value="" id="PhiBenBPhaiTraID" class="w-200" maxlength="15" required/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Ngày giao tài sản</td>
			<td colspan="2"><input type="text" name="ngayGiaoTaiSan" value="" id="NgayGiaoTaiSanID" class="w-200" maxlength="10" ></td>
			<td style="text-align: right;">Ngày có hiệu lực</td>
			<td colspan="2"><input type="text" name="ngayCoHieuLuc" value="" id="NgayCoHieuLucID" class="w-200" maxlength="10" ></td>
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
					<strong>Thông tin hợp đồng chuyển đổi</strong>
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