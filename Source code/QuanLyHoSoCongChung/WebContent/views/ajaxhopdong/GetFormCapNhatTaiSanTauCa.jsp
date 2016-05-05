<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<form id="FormTaiSanTauCaID" method="get" action="" autocomplete="off">
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
				name="tenTau" value="" id="TenTauID" class="w-200" maxlength="200"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Số hiệu</td>
			<td colspan="2"><input type="text" name="soHieu" value=""
				id="SoHieuID" class="w-200" maxlength="50"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Cơ quan đăng ký</td>
			<td colspan="2"><input type="text" name="coQuanDangKy" value=""
				id="CoQuanDangKyID" class="w-200" maxlength="200"></td>
			<td style="text-align: right;">Loại tàu</td>
			<td colspan="2"><input type="text" name="loaiTau" value=""
				id="LoaiTauID" class="w-200" maxlength="100"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Công dụng</td>
			<td colspan="2"><input type="text" name="congDung" value=""
				id="CongDungID" class="w-200" maxlength="100"></td>
			<td style="text-align: right;">Nơi đóng</td>
			<td colspan="2"><input type="text" name="noiDong" value=""
				id="NoiDongID" class="w-200" maxlength="200"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Năm đóng</td>
			<td colspan="2"><input type="text" name="namDong" value=""
				id="NamDongID" class="w-200" maxlength="4"></td>
			<td style="text-align: right;">Mẩu thiết kế</td>
			<td colspan="2"><input type="text" name="mauThietKe" value=""
				id="MauThietKeID" class="w-200" maxlength="100"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Cơ quan thiết kế</td>
			<td colspan="2"><input type="text" name="coQuanThietKe" value=""
				id="CoQuanThietKeID" class="w-200" maxlength="200"></td>
			<td style="text-align: right;">Chiều dài Lmax, m</td>
			<td colspan="2"><input type="text" name="chieuDaiLmax" value=""
				id="ChieuDaiLmaxID" class="w-200" maxlength="15"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Ltk, m</td>
			<td colspan="2"><input type="text" name="ltk" value=""
				id="LtkID" class="w-200" maxlength="15"></td>
			<td style="text-align: right;">Chiều rộng Bmax, m</td>
			<td colspan="2"><input type="text" name="chieuRongBmax" value=""
				id="ChieuRongBmaxID" class="w-200" maxlength="15"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Btk, m</td>
			<td colspan="2"><input type="text" name="btk" value=""
				id="BtkID" class="w-200" maxlength="15"></td>
			<td style="text-align: right;">Chiều cao Dmax, m</td>
			<td colspan="2"><input type="text" name="chieuCaoDmax" value=""
				id="ChieuCaoDmaxID" class="w-200" maxlength="15"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Chiều chìm d</td>
			<td colspan="2"><input type="text" name="chieuChimD" value=""
				id="ChieuChimDID" class="w-200" maxlength="15"></td>
			<td style="text-align: right;">Mạn khô f</td>
			<td colspan="2"><input type="text" name="manKhoF" value=""
				id="ManKhoFID" class="w-200" maxlength="50"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Vật liệu vỏ</td>
			<td colspan="2"><input type="text" name="vatLieuVo" value=""
				id="VatLieuVoID" class="w-200" maxlength="100"></td>
			<td style="text-align: right;">Tổng dung tích</td>
			<td colspan="2"><input type="text" name="tongDungTichTDK"
				value="" id="TongDungTichTDKID" class="w-200" maxlength="50"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Sức chở tối đa (tấn)</td>
			<td colspan="2"><input type="text" name="sucChoToiDa" value=""
				id="SucChoToiDaID" class="w-200" maxlength="50"></td>
			<td style="text-align: right;">Tốc độ tự do (hải lý/h)</td>
			<td colspan="2"><input type="text" name="tocDoTuDo" value=""
				id="TocDoTuDoID" class="w-200" maxlength="50"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Ký hiệu máy</td>
			<td colspan="2"><input type="text" name="kyHieuMay" value=""
				id="KyHieuMayID" class="w-200" maxlength="100"></td>
			<td style="text-align: right;">Số máy</td>
			<td colspan="2"><input type="text" name="soMay" value=""
				id="SoMayID" class="w-200" maxlength="100"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Công suất (Mã lực)</td>
			<td colspan="2"><input type="text" name="congSuat" value=""
				id="CongSuatID" class="w-200" maxlength="15"></td>
			<td style="text-align: right;">Nơi chế tạo</td>
			<td colspan="2"><input type="text" name="noiCheTao" value=""
				id="NoiCheTaoID" class="w-200" maxlength="200"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Cảng đăng ký</td>
			<td colspan="2"><input type="text" name="cangDangKy" value=""
				id="CangDangKyID" class="w-200" maxlength="200"></td>
			<td style="text-align: right;">Cơ quan đăng kiểm</td>
			<td colspan="2"><input type="text" name="coQuanDangKiem"
				value="" id="CoQuanDangKiemID" class="w-200" maxlength="200"></td>
		</tr>
		<tr>
			<td style="text-align: right;">GCN ĐK tàu số</td>
			<td colspan="2"><input type="text" name="gCNDKTauSo" value=""
				id="GCNDKTauSoID" class="w-200" maxlength="50"></td>
			<td style="text-align: right;">Ngày cấp GCN ĐK tàu</td>
			<td colspan="2"><input type="text" name="ngayCapGCNDKTau"
				value="" id="NgayCapGCNDKTauID" class="w-200" maxlength="10"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Nơi cấp GCN ĐK tàu</td>
			<td colspan="2"><input type="text" name="noiCapGCNDKTau"
				value="" id="NoiCapGCNDKTauID" class="w-200" maxlength="20"></td>
			<td style="text-align: right;">Ghi chú về tài sản</td>
			<td colspan="2"><input type="text" name="ghiChuVeTaiSan"
				value="" id="GhiChuVeTaiSanID" class="w-200" maxlength="200"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Số đăng ký cũ</td>
			<td colspan="2"><input type="text" name="soDangKyCu" value=""
				id="SoDangKyCuID" class="w-200" maxlength="50"></td>

		</tr>
	</tbody>
</table>
</fieldset>
</form>