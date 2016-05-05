<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<form id="FormTaiSanBeCaID" method="get" action="" autocomplete="off">
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
				name="tenPhuongTien" value="" id="TenPhuongTienID" class="w-200" maxlength="100">
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">Cơ quan đăng ký</td>
			<td colspan="2"><input type="text" name="coQuanDangKy" value=""
				id="CoQuanDangKyID" class="w-200" maxlength="200"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Năm đóng</td>
			<td colspan="2"><input type="text" name="namDong" value=""
				id="NamDongID" class="w-200" maxlength="4"></td>
			<td style="text-align: right;">Nơi đóng</td>
			<td colspan="2"><input type="text" name="noiDong" value=""
				id="NoiDongID" class="w-200" maxlength="200"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Chiều dài Lmax</td>
			<td colspan="2"><input type="text" name="chieuDaiLmax" value=""
				id="ChieuDaiLmaxID" class="w-200" maxlength="15"></td>
			<td style="text-align: right;">Chiều rộng Bmax</td>
			<td colspan="2"><input type="text" name="chieuRongBmax" value=""
				id="ChieuRongBmaxID" class="w-200" maxlength="15"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Chiều cao D</td>
			<td colspan="2"><input type="text" name="chieuCaoD" value=""
				id="ChieuCaoDID" class="w-200" maxlength="15"></td>
			<td style="text-align: right;">Ltk</td>
			<td colspan="2"><input type="text" name="ltk" value=""
				id="LtkID" class="w-200" maxlength="15"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Kích thước Cabin</td>
			<td colspan="2"><input type="text" name="kichThuocCabin"
				value="" id="KichThuocCabinID" class="w-200" maxlength="50"></td>
			<td style="text-align: right;">Tổng dung tích TĐK</td>
			<td colspan="2"><input type="text" name="tongDungTichTDK"
				value="" id="TongDungTichTDKID" class="w-200" maxlength="50"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Vật liệu vỏ</td>
			<td colspan="2"><input type="text" name="vatLieuVo" value=""
				id="VatLieuVoID" class="w-200" maxlength="100"></td>
			<td style="text-align: right;">Ký hiệu máy</td>
			<td colspan="2"><input type="text" name="kyHieuMay" value=""
				id="KyHieuMayID" class="w-200" maxlength="50"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Số máy</td>
			<td colspan="2"><input type="text" name="soMay" value=""
				id="SoMayID" class="w-200" maxlength="50"></td>
			<td style="text-align: right;">Công suất (Mã lực)</td>
			<td colspan="2"><input type="text" name="congSuat" value=""
				id="CongSuatID" class="w-200" maxlength="50"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Được phép sử dụng</td>
			<td colspan="2"><input type="text" name="duocPhepSuDung"
				value="" id="DuocPhepSuDungID" class="w-200" maxlength="100"></td>
			<td style="text-align: right;">Giấy ĐK phương tiện nghề cá</td>
			<td colspan="2"><input type="text" name="giayDKPhuongTienNgheCa"
				value="" id="GiayDKPhuongTienNgheCaID" class="w-200" maxlength="50"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Ngày cấp GĐK phương tiện nghề cá</td>
			<td colspan="2"><input type="text"
				name="ngayCapGDKPhuongTienNgheCa" value=""
				id="NgayCapGDKPhuongTienNgheCaID" class="w-200" maxlength="10"></td>
			<td style="text-align: right;">Nơi cấp GĐK phương tiện nghề cá</td>
			<td colspan="2"><input type="text"
				name="noiCapGDKPhuongTienNgheCa" value=""
				id="NoiCapGDKPhuongTienNgheCaID" class="w-200" maxlength="200"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Số đăng ký cũ</td>
			<td colspan="2"><input type="text" name="soDangKyCu" value=""
				id="SoDangKyCuID" class="w-200" maxlength="50"></td>
			<td style="text-align: right;">Ghi chú về tài sản</td>
			<td colspan="2"><input type="text" name="ghiChuVeTaiSan"
				value="" id="GhiChuVeTaiSanID" class="w-200" maxlength="200"></td>
		</tr>
	</tbody>
</table>
</fieldset>
</form>