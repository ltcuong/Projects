<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<form id="FormTaiSanTauBienID" method="get" action="" autocomplete="off">
<fieldset>
<table width="100%" cellspacing="5" cellpadding="5" border="0"
	class="form">
	<tbody>
		<tr>
			<td style="text-align: right; width: 15%;">Tên phiếu tài sản</td>
			<td style="width: 30%" colspan="2"><input type="text"
				name="tenPhieuTaiSan" value="" id="TenPhieuTaiSanID" class="w-200" maxlength="50">
			</td>
			<td style="text-align: right; width: 15%">Tên tàu</td>
			<td style="width: 30%" colspan="2"><input type="text"
				name="tenPhuongTien" value="" id="TenPhuongTienID" class="w-200" maxlength="200">
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">Loại tàu</td>
			<td colspan="2"><input type="text" name="loaiTau" value=""
				id="LoaiTauID" class="w-200" maxlength="100"></td>
			<td style="text-align: right;">Năm đóng</td>
			<td colspan="2"><input type="text" name="namDong" value=""
				id="NamDongID" class="w-200" maxlength="4"></td>
		</tr>
		<tr>
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
			<td style="text-align: right;">Chiều cao mạn</td>
			<td colspan="2"><input type="text" name="chieuCaoMan" value=""
				id="ChieuCaoManID" class="w-200" maxlength="15"></td>
			<td style="text-align: right;">Mức nước tối đa</td>
			<td colspan="2"><input type="text" name="mucNuocToiDaID"
				value="" id="MucNuocToiDaID" class="w-200" maxlength="50"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Dung tích toàn thân</td>
			<td colspan="2"><input type="text" name="dungTichToanThan"
				value="" id="DungTichToanThanID" class="w-200" maxlength="50"></td>
			<td style="text-align: right;">Dung tích thực dụng</td>
			<td colspan="2"><input type="text" name="dungTichThucDung"
				value="" id="DungTichThucDungID" class="w-200" maxlength="50"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Trọng tải</td>
			<td colspan="2"><input type="text" name="trongTaiID" value=""
				id="TrongTaiID" class="w-200" maxlength="50"></td>
			<td style="text-align: right;">Công suất máy chính</td>
			<td colspan="2"><input type="text" name="congSuatMayChinh"
				value="" id="CongSuatMayChinhID" class="w-200" maxlength="50"></td>
		</tr>
		<tr>

			<td style="text-align: right;">Cảng đăng ký</td>
			<td colspan="2"><input type="text" name="cangDangKy" value=""
				id="CangDangKyID" class="w-200" maxlength="200"></td>
			<td style="text-align: right;">Ngày đăng ký</td>
			<td colspan="2"><input type="text" name="ngayDangKyID" value=""
				id="NgayDangKyID" class="w-200" maxlength="10"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Cơ quan đăng kiểm</td>
			<td colspan="2"><input type="text" name="coQuanDangKiem"
				value="" id="CoQuanDangKiemID" class="w-200" maxlength="200"></td>
			<td style="text-align: right;">GCN ĐK tàu biển số</td>
			<td colspan="2"><input type="text" name="gCNDKTauBienSo"
				value="" id="GCNDKTauBienSoID" class="w-200" maxlength="100"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Ngày cấp GCN ĐK tàu biển</td>
			<td colspan="2"><input type="text" name="ngayCapGCNDKTauBien"
				value="" id="NgayCapGCNDKTauBienID" class="w-200" maxlength="10"></td>
			<td style="text-align: right;">Nơi cấp GCN ĐK tàu biển</td>
			<td colspan="2"><input type="text" name="noiCapGCNDKTauBien"
				value="" id="NoiCapGCNDKTauBienID" class="w-200" maxlength="200"></td>
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