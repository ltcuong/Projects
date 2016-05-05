<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<form id="FormTaiSanKhongCoBDSGanVoiDatID" method="get" action="" autocomplete="off">
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
				value="" id="ThoiHanSuDungDatID" class="w-200" maxlength="100"></td>
			<td style="text-align: right;">Nguồn gốc sử dụng</td>
			<td colspan="2"><input type="text" name="nguonGocSuDung"
				value="" id="NguonGocSuDungID" class="w-200" maxlength="200"></td>
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
				<td style="text-align: right;">Hạn chế về QSDĐ</td>
			<td colspan="2"><input type="text" name="hanCheVeQuyenSuDungDat"
				value="" id="HanCheVeQuyenSuDungDatID" class="w-200" maxlength="200"></td>
		</tr>
		<tr>
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
		<s:if test="coTaiSanGanLien == 1">
		<tr>
			<td colspan="6" align="left"><strong>Thông tin tài sản gắn liền</strong></td>
		</tr>
		<tr>
			<td style="text-align: right;">Loại tài sản gắn liền</td>
			<td colspan="2">
			<select name="loaiTaiSanGanLien" id="LoaiTaiSanGanLienID" class="w-200" onchange="changeTaiSanGanLien()">
					<option value="1">Nhà</option>
					<option value="2">Công trình xây dựng</option>
			</select>
			</td>
		</tr>
		<tr>
			<td style="text-align: right; color: blue;">Giấy chứng nhận số</td>
			<td colspan="2"><input type="text" name="giayChungNhanGanLien" value="" id="GiayChungNhanGanLienID" class="w-200"  maxlength="50"></td>
			<td style="text-align: right; color: blue;">Ngày cấp giấy chứng nhận</td>
			<td colspan="2"><input type="text" name="ngayCapGiayChungNhanGanLien" value="" id="NgayCapGiayChungNhanGanLienID" class="w-200"  maxlength="10"></td>
		</tr>
		<tr>
			<td style="text-align: right; color: blue;">Nơi cấp giấy chứng nhận</td>
			<td colspan="5"><input type="text" name="noiCapGiayChungNhanGanLien" value="" id="NoiCapGiayChungNhanGanLienID" class="w-200"  maxlength="200"></td>
		</tr>
		<tr id="WarpTaiSanNhaID">
			<td colspan="6">
				<table width="100%" cellspacing="5" cellpadding="5" border="0" class="form">
					<tbody>
						<tr>
							<td style="text-align: right; width: 15%; color: blue;">Loại nhà</td>
							<td style="width: 30%"  colspan="2"><input type="text" name="loaiNhaGanLien" value="" id="LoaiNhaGanLienID" class="w-200"  maxlength="100"></td>
							<td style="text-align: right; width: 15%; color: blue;">Tổng diện tích sử dụng</td>
							<td style="width: 30%"  colspan="2"><input type="text" name="tongDienTichSuDungNhaGanLien" value="" id="TongDienTichSuDungNhaGanLienID" class="w-200"  maxlength="15"></td>
						</tr>
						<tr>
							<td style="text-align: right; color: blue;">Diện tích xây dựng</td>
							<td colspan="2"><input type="text" name="dienTichXayDungNhaGanLien" value="" id="DienTichXayDungNhaGanLienID" class="w-200"  maxlength="15"></td>
							<td style="text-align: right; color: blue;">Kết cấu</td>
							<td colspan="2"><input type="text" name="ketCauNhaGanLien" value="" id="KetCauNhaGanLienID" class="w-200"  maxlength="100"></td>
						</tr>
						<tr>
							<td style="text-align: right; color: blue;">Số tầng</td>
							<td colspan="2"><input type="text" name="soTangNhaGanLien" value="" id="SoTangNhaGanLienID" class="w-200"  maxlength="5"></td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr class="DisplayNone" id="WarpTaiSanCongTrinhID">
			<td colspan="6">
				<table width="100%" cellspacing="5" cellpadding="5" border="0" class="form">
					<tbody>
						<tr>
							<td style="text-align: right; width: 15%; color: blue;">Loại công trình</td>
							<td style="width: 30%" colspan="2"><input type="text" name="loaiCongTrinhGanLien" value="" id="LoaiCongTrinhGanLienID" class="w-200"  maxlength="200"></td>
							<td style="text-align: right; width: 15%; color: blue;">Diện tích xây dựng</td>
							<td style="width: 30%" colspan="2"><input type="text" name="dienTichXayDungCongTrinhGanLien" value="" id="DienTichXayDungCongTrinhGanLienID" class="w-200"  maxlength="15"></td>
						</tr>
						<tr>
							<td style="text-align: right; color: blue;">Kết cấu</td>
							<td colspan="2" colspan="2"><input type="text" name="ketCauCongTrinhGanLien" value="" id="KetCauCongTrinhGanLienID" class="w-200"  maxlength="100"></td>
							<td style="text-align: right; color: blue;">Số tầng</td>
							<td colspan="2" colspan="2"><input type="text" name="soTangCongTrinhGanLien" value="" id="SoTangCongTrinhGanLienID" class="w-200"  maxlength="5"></td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		</s:if>
	</tbody>
</table>
</fieldset>
</form>