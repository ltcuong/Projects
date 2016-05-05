<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<form id="FormTaiSanCongTrinhKienTrucID" method="get" action="" autocomplete="off">
<fieldset>
<table width="100%" cellspacing="5" cellpadding="5" border="0"
	class="form">
	<tbody>
		<tr>
			<td style="text-align: right; width: 15%;">Tên phiếu tài sản</td>
			<td style="width: 30%" colspan="2"><input type="text"
				name="tenPhieuTaiSan" value="" id="TenPhieuTaiSanID" class="w-200" maxlength="50">
			</td>
			<td style="text-align: right; width: 15%">Địa chỉ tài sản</td>
			<td style="width: 30%" colspan="2"><input type="text"
				name="diaChiTaiSan" value="" id="DiaChiTaiSanID" class="w-200" maxlength="200">
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">Thửa đất số</td>
			<td colspan="2"><input type="text" name="thuaDatSo" value=""
				id="ThuaDatSoID" class="w-200" maxlength="50"></td>
			<td style="text-align: right;">Tờ bản đồ số</td>
			<td colspan="2"><input type="text" name="toBanDoSo" value=""
				id="ToBanDoSoID" class="w-200" maxlength="50"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Diện tích</td>
			<td colspan="2"><input type="text" name="dienTich" value=""
				id="DienTichID" class="w-200" maxlength="15"></td>
			<td style="text-align: right;">Hình thức sử dụng chung</td>
			<td colspan="2"><input type="text" name="hinhThucSuDungChung"
				value="" id="HinhThucSuDungChungID" class="w-200" maxlength="15"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Hình thức sử dụng riêng</td>
			<td colspan="2"><input type="text" name="hinhThucSuDungRieng"
				value="" id="HinhThucSuDungRiengID" class="w-200" maxlength="15"></td>
			<td style="text-align: right;">Mục đích sử dụng</td>
			<td colspan="2"><input type="text" name="mucDichSuDung" value=""
				id="MucDichSuDungID" class="w-200" maxlength="200"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Thời hạn sử dụng đất</td>
			<td colspan="2"><input type="text" name="thoiHanSuDungDat"
				value="" id="ThoiHanSuDungDatID" class="w-200" maxlength="50"></td>
			<td style="text-align: right;">Nguồn gốc sử dụng</td>
			<td colspan="2"><input type="text" name="nguonGocSuDung"
				value="" id="NguonGocSuDungID" class="w-200" maxlength="200"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Tổng diện tích sử dụng</td>
			<td colspan="2"><input type="text" name="tongDienTichSuDung"
				value="" id="TongDienTichSuDungID" class="w-200" maxlength="50"></td>
			<td style="text-align: right;">Diện tích đất xây dựng</td>
			<td colspan="2"><input type="text" name="dienTichDatXayDung"
				value="" id="DienTichDatXayDungID" class="w-200" maxlength="50"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Kết cấu</td>
			<td colspan="2"><input type="text" name="ketCau" value=""
				id="KetCauID" class="w-200" maxlength="50"></td>
			<td style="text-align: right;">Số tầng</td>
			<td colspan="2"><input type="text" name="soTang" value=""
				id="SoTangID" class="w-200" maxlength="5"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Loại công trình</td>
			<td colspan="2"><input type="text" name="loaiCongTrinh" value=""
				id="LoaiCongTrinhID" class="w-200" maxlength="200"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Ngày cấp GCNQSDĐ</td>
			<td colspan="2"><input type="text"
				name="ngayCapGiayChungNhanQSDD" value=""
				id="NgayCapGiayChungNhanQSDDID" class="w-200" maxlength="10"></td>
			<td style="text-align: right;">Nơi cấp GCNQSDĐ</td>
			<td colspan="2"><input type="text"
				name="noiCapGiayChungNhanQSDD" value=""
				id="NoiCapGiayChungNhanQSDDID" class="w-200" maxlength="200"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Vào sổ cấp GCN số</td>
			<td colspan="2"><input type="text"
				name="vaoSoCapGiayChungNhanQSDD" value=""
				id="VaoSoCapGiayChungNhanQSDDID" class="w-200" maxlength="50"></td>
			<td style="text-align: right;">Giấy chứng nhận QSHTS số</td>
			<td colspan="2"><input type="text"
				name="giayChungNhanQSHTaiSanSo" value=""
				id="GiayChungNhanQSHTaiSanSoID" class="w-200" maxlength="50"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Ngày cấp GCNQSHTS</td>
			<td colspan="2"><input type="text"
				name="ngayCapGiayChungNhanQSHTS" value=""
				id="NgayCapGiayChungNhanQSHTSID" class="w-200" maxlength="10"></td>
			<td style="text-align: right;">Nơi cấp GCNQSHTS</td>
			<td colspan="2"><input type="text"
				name="noiCapGiayChungNhanQSHTS" value=""
				id="NoiCapGiayChungNhanQSHTSID" class="w-200" maxlength="200"></td>
		</tr>
		<tr>
			<td style="text-align: right;">Hạn chế về QSDĐ</td>
			<td colspan="2"><input type="text" name="hanCheVeQuyenSuDungDat"
				value="" id="HanCheVeQuyenSuDungDatID" class="w-200" maxlength="200"></td>
			<td style="text-align: right;">Ghi chú về tài sản</td>
			<td colspan="2"><input type="text" name="ghiChuVeTaiSan"
				value="" id="GhiChuVeTaiSanID" class="w-200" maxlength="200"></td>
		</tr>
		<s:if test="coGiaoDichMotPhan == 1">
		<tr>
			<td colspan="6" align="left"><strong>Thông tin giao dịch một phần (nếu có)</strong> <input type="checkbox" id="CBGiaoDichMotPhanID" onclick="checkCoGiaoDichMotPhan()"/></td>
		</tr>
		<tr id="FieldGiaoDich1PhanID" class="DisplayNone">
			<td style="text-align: right;">Diện tích giao dịch</td>
			<td colspan="2"><input type="text"
				name="dienTichGiaoDichMotPhan" value="" id="DienTichGiaoDichMotPhanID" class="w-200"  maxlength="15">
			</td>
		</tr>
		</s:if>
	</tbody>
</table>
</fieldset>
</form>