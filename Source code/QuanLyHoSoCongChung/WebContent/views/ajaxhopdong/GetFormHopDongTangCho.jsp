<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>

<s:if test="laHopDongSoanSan == 0">
<form id="FormHopDongTangChoID" method="get" action="" autocomplete="off">
<fieldset>
<table width="100%" cellspacing="5" cellpadding="5" border="0"
	class="form">
	<tbody>
		<tr>
			<td colspan="6">
				<p style="color: #e60200;">
					<strong>Thông tin hợp đồng tặng cho</strong>
				</p>
			</td>
		</tr>
		<tr>
			<td style="text-align: right; width: 15%; color: blue;">Ngày giao tài sản</td>
			<td style="width: 30%" colspan="2"><input type="text" name="ngayGiaoTaiSan" value="" id="NgayGiaoTaiSanID" class="w-200" maxlength="10" required />
			</td>
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
		<s:if test="loaiTangCho == 1">
		<tr>
			<td style="text-align: right; color: blue;">Giá trị QSDD và TSGLVD</td>
			<td colspan="2"><input type="text" name="giaTriQSDDVaTSGLVD"
				value="" id="GiaTriQSDDVaTSGLVDID" class="w-200" maxlength="15" required></td>
			<td style="text-align: right; color: blue;">Giấy tờ về quyền sở hữu tài sản</td>
			<td colspan="2"><input type="text" name="giayToQuyenSoHuuTaiSan" value=""
				id="GiayToQuyenSoHuuTaiSanID" class="w-200" maxlength="100" required></td>
		</tr>
		</s:if><s:elseif test="loaiTangCho == 2">
		<tr>
			<td style="text-align: right; color: blue;">Trang thiết bị chủ yếu</td>
			<td colspan="2"><input type="text" name="trangThietBiChuYeu"
				value="" id="TrangThietBiChuYeuID" class="w-200" maxlength="200" required></td>
			<td style="text-align: right; color: blue;">Giấy tờ pháp lý</td>
			<td colspan="2"><input type="text" name="giayToPhapLy" value=""
				id="GiayToPhapLyID" class="w-200" maxlength="200" required></td>
		</tr>
		</s:elseif>
		<tr>
			<td style="text-align: right;">Các cam kết khác</td>
			<td colspan="2"><input type="text" name="cacCamKetKhac" value=""
				id="CacCamKetKhacID" class="w-200" maxlength="200"></td>
			<td style="text-align: right;">Điều kiện tặng cho</td>
			<td colspan="2"><input type="text" name="dieuKienTangCho"
				value="" id="DieuKienTangChoID" class="w-200" maxlength="200"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Ngày có hiệu lực</td>
			<td colspan="2"><input type="text" name="ngayCoHieuLuc" value=""
				id="NgayCoHieuLucID" class="w-200" maxlength="10"></td>
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
					<strong>Thông tin hợp đồng tặng cho</strong>
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
