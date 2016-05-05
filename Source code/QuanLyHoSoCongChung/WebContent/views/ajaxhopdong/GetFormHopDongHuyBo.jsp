<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>
<s:if test="laHopDongSoanSan == 0">
<form id="FormHopDongHuyBoID" method="get" action="" autocomplete="off">
<fieldset>
<table width="100%" cellspacing="5" cellpadding="5" border="0"
	class="form">
	<tbody>
		<tr>
			<td colspan="6">
				<p style="color: #e60200;">
					<strong>Thông tin hợp đồng huỷ bỏ</strong>
				</p>
			</td>
		</tr>
		<tr>
			<td style="text-align: right; color: blue; width: 15%">Số hợp động huỷ</td>
			<td style="width: 30%" colspan="2"><input type="text" name="soHopDongHuy" value="" id="SoHopDongHuyID" class="w-200" maxlength="100" required /></td>
			<td style="text-align: right; color: blue; width: 15%">&nbsp;</td>
			<td style="width: 30%" colspan="2">&nbsp;</td>
		</tr>
		<tr>
			<td style="text-align: right; color: blue;">Lý do huỷ</td>
			<td style="" colspan="5"><input type="text" name="lyDoHuy" value="" id="LyDoHuyID" class="w-200" maxlength="200" required /></td>
		</tr>
		<tr>
			<td style="text-align: right; color: blue;">Phương thức giao lại tài sản</td>
			<td style="" colspan="2"><input type="text" name="phuongThucGiaoLaiTaiSan" value="" id="PhuongThucGiaoLaiTaiSanID" class="w-200" maxlength="200" required /></td>
			<td style="text-align: right; color: blue;">Ngày giao lại tài sản</td>
			<td style="" colspan="2"><input type="text" name="ngayGiaoLaiTaiSan" value="" id="NgayGiaoLaiTaiSanID" class="w-200" maxlength="10" required /></td>
		</tr>
		<tr>
			<td style="text-align: right; color: blue;">Phương thức giao lại tiền</td>
			<td style="" colspan="2"><input type="text" name="phuongThucGiaoLaiTien" value="" id="PhuongThucGiaoLaiTienID" class="w-200" maxlength="200" required /></td>
			<td style="text-align: right; color: blue;">Ngày giao lại tiền</td>
			<td style="" colspan="2"><input type="text" name="ngayGiaoLaiTien" value="" id="NgayGiaoLaiTienID" class="w-200" maxlength="10" required ></td>
		</tr>
		<tr>
			<td style="text-align: right; color: blue;">Bồi thường thiệt hại</td>
			<td style="" colspan="5"><input type="text" name="boiThuongThietHai" value="" id="BoiThuongThietHaiID" class="w-200" maxlength="200" required /></td>
		</tr>
		<tr>
			<td style="text-align: right; color: blue;">Các cam kết khác</td>
			<td style="" colspan="5"><input type="text" name="camKetKhac" value="" id="CamKetKhacID" class="w-200" maxlength="200" required /></td>
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
<table width="100%" cellspacing="5" cellpadding="5" border="0"
	class="form">
	<tbody>
		<tr>
			<td colspan="6">
				<p style="color: #e60200;">
					<strong>Thông tin hợp đồng huỷ bỏ</strong>
				</p>
			</td>
		</tr>
		<tr>
			<td style="text-align: right; width: 15%; color: blue;">Nội dung soạn sẵn</td>
			<td style="width: 30%">
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
