<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<form id="FormTaiSanChuyenDoiNhaOID" method="get" action=""
	autocomplete="off">
	<fieldset>
		<table width="100%" cellspacing="5" cellpadding="5" border="0"
			class="form">
			<tbody>
				<tr>
					<td colspan="6" align="left">
						<p style="color: #e60200;">
							<strong>Thông tin tài sản nhà ở chuyển đổi</strong>
						</p>
					</td>
				</tr>
				<tr>
					<td style="text-align: right;">Tên phiếu tài sản</td>
					<td colspan="2"><input type="text"
						name="tenPhieuTaiSan" value="" id="TenPhieuTaiSanID" class="w-200"  maxlength="50">
					</td>
				</tr>
				<tr>
					<td style="text-align: right;">Ngày cấp GCNQSDĐ</td>
					<td colspan="2"><input type="text"
						name="ngayCapGiayCNQSDD" value=""
						id="NgayCapGiayCNQSDDID" class="w-200" maxlength="10"></td>
					<td style="text-align: right;">Nơi cấp GCNQSDĐ</td>
					<td colspan="2"><input type="text"
						name="noiCapGiayCNQSDD" value=""
						id="NoiCapGiayCNQSDDID" class="w-200" maxlength="200"></td>
				</tr>
				<tr>
					<td style="text-align: right; width: 15%;">Loại nhà</td>
					<td style="width: 30%" colspan="2"><input type="text"
						name="loaiCongTrinh" value="" id="LoaiCongTrinhID" class="w-200"
						maxlength="100"></td>
					<td style="text-align: right; width: 15%">Địa chỉ nhà ở</td>
					<td style="width: 30%" colspan="2"><input type="text"
						name="diaChiTaiSan" value="" id="DiaChiTaiSanID" class="w-200"
						maxlength="200"></td>
				</tr>
				<tr>
					<td style="text-align: right;">Tổng diện tích sàn</td>
					<td colspan="2"><input type="text" name="dienTichSan" value=""
						id="DienTichSanID" class="w-200" maxlength="15"></td>
					<td style="text-align: right;">Tổng diện tích sử dụng</td>
					<td colspan="2"><input type="text" name="dienTichSuDung" value=""
						id="DienTichSuDungID" class="w-200" maxlength="15"></td>
				</tr>
				<tr>
					<td style="text-align: right;">Diện tích sử dụng chung</td>
					<td colspan="2"><input type="text" name="dienTichSuDungChung"
						value="" id="DienTichSuDungChungID" class="w-200" maxlength="15"></td>
					<td style="text-align: right;">Diện tích sử dụng riêng</td>
					<td colspan="2"><input type="text" name="dienTichSuDungRieng"
						value="" id="DienTichSuDungRiengID" class="w-200" maxlength="15"></td>
				</tr>
				<tr>
					<td style="text-align: right;">Nguồn gốc sử dụng</td>
					<td colspan="2"><input type="text" name="nguonGocSuDung"
						value="" id="NguonGocSuDungID" class="w-200" maxlength="200"></td>
					<td style="text-align: right;">Hơp đồng thuê đất</td>
					<td colspan="2"><input type="text" name="hopDongThueDat"
						value="" id="HopDongThueDatID" class="w-200" maxlength="50"></td>
				</tr>
				<tr>
					<td style="text-align: right;">Thời hạn thuê đất từ ngày</td>
					<td colspan="2"><input type="text" name="thoiHanThueDatTuNgay"
						value="" id="ThoiHanThueDatTuNgayID" class="w-200" maxlength="10"></td>
					<td style="text-align: right;">Thời hạn thuê đất đến ngày</td>
					<td colspan="2"><input type="text" name="thoiHanThueDatDenNgay"
						value="" id="ThoiHanThueDatDenNgayID" class="w-200" maxlength="10"></td>
				</tr>
				<tr>
					<td style="text-align: right;">Trang thiết bị gắn liền</td>
					<td colspan="6"><input type="text" name="trangThietBiGanLien" value="" id="TrangThietBiGanLienID" class="w-200" maxlength="500"></td>
				</tr>
				<tr>
					<td style="text-align: right;">Trang thiết bị chủ yếu gắn liền</td>
					<td colspan="6"><input type="text" name="trangThietBiChuYeuGanLien" value="" id="TrangThietBiChuYeuGanLienID" class="w-200" maxlength="500"></td>
				</tr>
				
				<tr>
					<td style="text-align: right;">Hạn chế về QSDĐ</td>
					<td colspan="6"><input type="text"
						name="hanCheVeQuyenSuDungDat" value=""
						id="HanCheVeQuyenSuDungDatID" class="w-200" maxlength="200"></td>
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