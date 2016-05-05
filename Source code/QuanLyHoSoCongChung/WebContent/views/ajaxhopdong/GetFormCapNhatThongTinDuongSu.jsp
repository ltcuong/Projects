<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<form id="ThongTinFormLoaiDuongSuID" method="get" action=""
	autocomplete="off">
	<fieldset>
		<table width="100%" cellspacing="5" cellpadding="0" border="0"
			class="form">
			<tbody>
				<tr>
					<td colspan="6">
						<p style="color: #e60200;">
							<strong>Thông tin đương sự</strong>
						</p>
					</td>
				</tr>
				<tr>
					<td style="text-align: right; width: 15%">Chọn loại đương sự</td>
					<td colspan="2" style="text-align: right; width: 30%"><select name="loaiDuongSu" id="LoaiDuongSuID" onchange="changeLoaiDuongSu()">
							<option value="1" <s:if test="duongSu.loaiDuongSuID == 1"> selected="selected" </s:if>>Cá nhân</option>
							<option value="2" <s:if test="duongSu.loaiDuongSuID == 2"> selected="selected" </s:if>>Tổ chức/ngân hàng</option>
					</select></td>
					<td style="text-align: right; width: 15%">&nbsp;</td>
					<td colspan="2" style="text-align: right; width: 30%">&nbsp;</td>
				</tr>
			</tbody>
		</table>
	</fieldset>
</form>
<form id="ThongTinFormDuongSuCaNhanID" method="get" action="" autocomplete="off">
	<fieldset>
		<table id="FormCaNhanID" width="100%" cellspacing="5" cellpadding="0" border="0" <s:if test="duongSu.loaiDuongSuID == 2"> class="DisplayNone" </s:if>>
			<tbody>
				<tr>
					<td style="text-align: right; color: blue; width: 15%">Tên đương sự</td>
					<td colspan="2" style="width: 30%"><input type="text"
						class="w-300" id="TenDuongSuID" name="tenDuongSu" value='<s:property value="duongSu.hoTen"/>'
						required maxlength="255"></td>
					<td style="text-align: right; width: 15%; color: blue;">Ngày
						sinh</td>
					<td colspan="2" style="width: 30%; text-align: left;"><input
						type="text" style="width: 230px;" class="w-300" id="NgaySinhID"
						name="ngaySinhCaNhan" value='<s:if test="duongSu.ngaySinh != null"><s:date name="duongSu.ngaySinh" format="dd/MM/yyyy"/></s:if><s:else><s:property value="duongSu.namSinh"/></s:else>' required maxlength="10"> (<input
						type="checkbox" id="CBNamSinhCaNhanID" onclick="chiHienNamSinhCaNhan()" <s:if test="duongSu.namSinh != null">checked="checked"</s:if>/> Năm sinh)</td>
				</tr>
				<tr>
					<td style="text-align: right; color: blue;">Loại giấy tờ</td>
					<td colspan="2"><select name="loaiGiayToCaNhan"
						id="LoaiGiayToCaNhanID">
							<option value="0">--- Chọn ---</option>
							<s:iterator value="listLoaiGiayTo" var="element">
								<option value='<s:property value="#element.loaiGiayToID"/>' <s:if test="duongSu.loaiGiayToID == #element.loaiGiayToID"> selected="selected" </s:if>>
									<s:property value="#element.loaiGiayToTen" />
								</option>
							</s:iterator>
					</select></td>
					<td style="text-align: right; color: blue;">Số giấy tờ</td>
					<td colspan="2"><input type="text" class="w-300"
						id="SoGiayToCaNhanID" name="soGiayToCaNhan" value='<s:property value="duongSu.soGiayTo"/>' required
						maxlength="20"></td>
				</tr>
				<tr>
					<td style="text-align: right; color: blue;">Ngày cấp</td>
					<td colspan="2"><input type="text" class="w-300"
						id="NgayCapCaNhanID" name="ngayCapCaNhan" value='<s:date name="duongSu.ngayCapGiayTo" format="dd/MM/yyyy" />' required
						maxlength="10"></td>
					<td style="text-align: right; color: blue;">Nơi cấp</td>
					<td colspan="2"><input type="text" class="w-300"
						id="NoiCapGiayToCaNhanID" name="noiCapGiayToCaNhan" value='<s:property value="duongSu.noiCapGiayTo"/>'
						required maxlength="200"></td>
				</tr>
				<tr>
					<td style="text-align: right; color: blue;">Tỉnh/thành thường
						trú</td>
					<td colspan="2"><select name="tinhThanhCaNhan"
						id="TinhThanhCaNhanID" onchange="getSelectHuyenByTinhID()">
							<option value="0">--- Chọn ---</option>
							<s:iterator value="listTinh" var="element">
								<option value='<s:property value="#element.tinhID"/>' <s:if test="duongSu.tinhThuongTruID == #element.tinhID"> selected="selected" </s:if>>
									<s:property value="#element.tinhTen" />
								</option>
							</s:iterator>
					</select></td>
					<td style="text-align: right; color: blue;">Quận/huyện thường trú</td>
					<td colspan="2"><select name="quanHuyenCaNhan"
						id="QuanHuyenCaNhanID" onchange="getSelectXaByHuyenID()">
							<option value="0">--- Chọn ---</option>
							<s:iterator value="listHuyenDuongSu" var="element">
								<option value='<s:property value="#element.huyenID"/>' <s:if test="duongSu.huyenThuongTruID == #element.huyenID"> selected="selected" </s:if>>
									<s:property value="#element.huyenTen" />
								</option>
							</s:iterator>
					</select></td>
				</tr>
				<tr>
					<td style="text-align: right; color: blue;">Phường/xã thường trú</td>
					<td colspan="2"><select name="phuongXaCaNhan"
						id="PhuongXaCaNhanID">
							<option value="0">--- Chọn ---</option>
							<s:iterator value="listXaDuongSu" var="element">
								<option value='<s:property value="#element.xaID"/>' <s:if test="duongSu.xaThuongTruID == #element.xaID"> selected="selected" </s:if>>
									<s:property value="#element.xaTen" />
								</option>
							</s:iterator>
					</select></td>
					<td style="text-align: right;">Số nhà/đường phố</td>
					<td colspan="2"><input type="text" class="w-300"
						id="SoNhaDuongPhoCaNhanID" name="soNhaDuongPhoCaNhan" value='<s:property value="duongSu.soNhaThuongTru"/>'
						maxlength="200"></td>
				</tr>
				<tr>
					<td style="text-align: right;">Địa chỉ liên hệ</td>
					<td colspan="4"><input type="text" class="w-700"
						id="DiaChiLienHeCaNhanID" name="diaChiLienHeCaNhan" value='<s:property value="duongSu.diaChiLienHe"/>'
						maxlength="255"></td>
				</tr>

			</tbody>
		</table>
	</fieldset>
</form>
<form id="ThongTinFormDuongSuToChucID" method="get" action="" autocomplete="off">
	<fieldset>
		<table id="FormToChucID" width="100%" cellspacing="5" cellpadding="0" border="0"  <s:if test="duongSu == null || duongSu.loaiDuongSuID == 1"> class="DisplayNone" </s:if>>
			<tbody>
				<tr>
					<td style="text-align: right; color: blue; width: 15%;">Tên tổ chức</td>
					<td colspan="2" style="width: 30%"><input type="text"
						class="w-300" id="TenToChucID" name="tenToChuc" value='<s:property value="duongSu.tenToChuc"/>' required
						maxlength="200" /></td>
					<td style="text-align: right; color: blue; width: 15%;">&nbsp;</td>
					<td colspan="2" style="width: 30%">&nbsp;</td>
				</tr>

				<tr>
					<td style="text-align: right; color: blue;">Địa chỉ (Tỉnh/thành)</td>
					<td colspan="2"><select name="tinhThanhToChuc" id="TinhThanhToChucID" onchange="getSelectHuyenByTinhToChucID()">
							<option value="0">--- Chọn ---</option>
							<s:iterator value="listTinh" var="element">
								<option value='<s:property value="#element.tinhID"/>'  <s:if test="duongSu.tinhThuongTruID == #element.tinhID"> selected="selected" </s:if>>
								<s:property value="#element.tinhTen" />
								</option>
							</s:iterator>
					</select></td>
					<td style="text-align: right; color: blue;">Quận/huyện</td>
					<td colspan="2"><select name="quanHuyenToChuc"
						id="QuanHuyenToChucID" onchange="getSelectXaByHuyenToChucID()">
							<option value="0">--- Chọn ---</option>
							<s:iterator value="listHuyenDuongSu" var="element">
								<option value='<s:property value="#element.huyenID"/>' <s:if test="duongSu.huyenThuongTruID == #element.huyenID"> selected="selected" </s:if>>
									<s:property value="#element.huyenTen" />
								</option>
							</s:iterator>
					</select></td>
				</tr>
				<tr>
					<td style="text-align: right; color: blue;">Phường/xã</td>
					<td colspan="2"><select name="phuongXaToChuc"
						id="PhuongXaToChucID">
							<option value="0">--- Chọn ---</option>
							<s:iterator value="listXaDuongSu" var="element">
								<option value='<s:property value="#element.xaID"/>' <s:if test="duongSu.xaThuongTruID == #element.xaID"> selected="selected" </s:if>>
									<s:property value="#element.xaTen" />
								</option>
							</s:iterator>
					</select></td>
					<td style="text-align: right;">Số nhà/đường phố</td>
					<td colspan="2"><input type="text" class="w-300"
						id="SoNhaDuongPhoToChucID" name="soNhaDuongPhoToChuc" value='<s:property value="duongSu.soNhaThuongTru"/>'
						maxlength="200"></td>
				</tr>
				<tr>
					<td style="text-align: right; color: blue;">Giấy phép ĐKKD số</td>
					<td colspan="2"><input type="text" class="w-300"
						id="GiayPhepDKKDID" name="giayPhepDKKD" value='<s:property value="duongSu.giayDangKyKinhDoanhSo"/>' required
						maxlength="50" /></td>
					<td style="text-align: right; color: blue;">Ngày cấp giấy phép
						ĐKKD</td>
					<td colspan="2"><input type="text" class="w-300"
						id="NgayGiayDKKDID" name="ngayGiayDKKD" value='<s:date name="duongSu.ngayCapGiayDangKyKinhDoanh" format="dd/MM/yyyy"/>' required
						maxlength="10"></td>
				</tr>
				<tr>
					<td style="text-align: right; color: blue;">Nơi cấp giấy phép
						ĐKKD</td>
					<td colspan="2"><input type="text" class="w-300"
						id="NoiCapGiayDKKD" name="noiCapGiayDKKD" value='<s:property value="duongSu.noiCapGiayDangKyKinhDoanh"/>' required
						maxlength="200" /></td>
					<td style="text-align: right;">Số điện thoại</td>
					<td colspan="2"><input type="text" class="w-300"
						id="SoDienThoaiToChucID" name="soDienThoaiToChuc" value='<s:property value="duongSu.soDienThoai"/>'
						maxlength="20" /></td>
				</tr>
				<tr>
					<td style="text-align: right; color: blue;">Họ tên người đại
						diện</td>
					<td colspan="2"><input type="text" class="w-300"
						id="NguoiDaiDienToChucID" name="nguoiDaiDienToChuc" value='<s:property value="duongSu.hoTen"/>'
						required maxlength="255" /></td>
					<td style="text-align: right; color: blue;">Ngày sinh người đại diện</td>
					<td colspan="2" align="left"><input type="text" class="w-300"
						style="width: 230px;" maxlength="10"
						id="NgaySinhNguoiDaiDienToChucID"
						name="ngaySinhNguoiDaiDienToChuc" value='<s:if test="duongSu.ngaySinh != null"><s:date name="duongSu.ngaySinh" format="dd/MM/yyyy"/></s:if><s:else><s:property value="duongSu.namSinh"/></s:else>' required /> (<input
						type="checkbox" id="CBNamSinhToChucID" onclick="chiHienNamSinhToChuc()" <s:if test="duongSu.namSinh != null">checked="checked"</s:if> /> Năm sinh)</td>
				</tr>
				<tr>
					<td style="text-align: right; color: blue;">Loại giấy tờ người
						đại diện</td>
					<td colspan="2"><select name="loaiGiayToToChuc"
						id="LoaiGiayToNguoiDaiDienToChucID">
							<option value="0">--- Chọn ---</option>
							<s:iterator value="listLoaiGiayTo" var="element">
								<option value='<s:property value="#element.loaiGiayToID"/>' <s:if test="duongSu.loaiGiayToID == #element.loaiGiayToID"> selected="selected" </s:if>>
									<s:property value="#element.loaiGiayToTen" />
								</option>
							</s:iterator>
					</select></td>
					<td style="text-align: right; color: blue;">Số giấy tờ người
						đại diện</td>
					<td colspan="2"><input type="text" class="w-300"
						id="SoGiayToNguoiDaiDienToChucID"
						name="soGiayToNguoiDaiDienToChuc" value='<s:property value="duongSu.soGiayTo"/>' required maxlength="20" />
					</td>
				</tr>
				<tr>
					<td style="text-align: right; color: blue;">Chức vụ người đại
						diện</td>
					<td colspan="2"><input type="text" class="w-300"
						id="ChucVuNguoiDaiDienToChucID" name="chucVuNguoiDaiDienToChuc"
						value='<s:property value="duongSu.chucVuNguoiDaiDien"/>' required maxlength="200" /></td>
				</tr>
				<tr>
					<td style="text-align: right; color: blue;">Theo giấy uỷ quyền
						số</td>
					<td colspan="2"><input type="text" class="w-300"
						id="GiayUyQuyenID" name="giayUyQuyen" value='<s:property value="duongSu.giayUyQuyenSo"/>' required
						maxlength="200" /></td>
					<td style="text-align: right; color: blue;">Ngày cấp giấy uỷ
						quyền</td>
					<td colspan="2"><input type="text" class="w-300"
						id="NgayCapGiayUyQuyenID" name="ngayCapGiayUyQuyen" value='<s:date name="duongSu.ngayCapGiayUyQuyen" format="dd/MM/yyyy"/>'
						required maxlength="10" /></td>
				</tr>
			</tbody>
		</table>
	</fieldset>
</form>
<div>
	<a href="#" onclick="showPopUpDivWithSize('Popup02ID', 795, 600); ">&nbsp;
		<img src="../images/themedefault/user.ico" style="width: 30px;" /><strong>Tìm
			đương sự đã tồn tại</strong>
	</a>
</div>
<p style="margin: 10px 0;">
	&nbsp;&nbsp;<input type="checkbox" onclick="showFormNguoiDiCongChungLaUyQuyen()" id="CBNguoiDiCongChungLaUyQuyenID" <s:if test="coUyQuyen == 1">  checked="checked" </s:if>/>&nbsp;&nbsp;&nbsp; <strong>Người đi công chứng là người uỷ quyền</strong>
</p>
<div id="WarpThongTinNguoiUyQuyenID"  <s:if test="coUyQuyen == 0"> class="DisplayNone" </s:if>>
	<form id="ThongTinFormNguoiUyQuyenID" method="get" action=""
		autocomplete="off">
		<fieldset>
			<table width="100%" cellspacing="5" cellpadding="0" border="0"
				class="form">
				<tbody>
					<tr>
						<td colspan="4">
							<p style="color: #e60200;">
								<strong>Thông tin người uỷ quyền</strong>
							</p>
						</td>
					</tr>
					<tr>
						<td style="text-align: right; color: blue; width: 15%">Họ và tên</td>
						<td colspan="2" style="width: 30%"><input type="text"
							class="w-300" id="TenNguoiUyQuyenID" name="tenNguoiUyQuyen"
							value='<s:property value="nguoiUyQuyen.hoTen"/>' required maxlength="255"></td>
						<td style="text-align: right; width: 15%; color: blue;">Ngày sinh</td>
						<td colspan="2" style="width: 30%; text-align: left;"><input
							type="text" style="width: 230px;" class="w-300"
							id="NgaySinhNguoiUyQuyenID" name="ngaySinhNguoiUyQuyen" value='<s:if test="nguoiUyQuyen.ngaySinh != null"><s:date name="nguoiUyQuyen.ngaySinh" format="dd/MM/yyyy"/></s:if><s:else><s:property value="nguoiUyQuyen.namSinh"/></s:else>'
							required maxlength="10"> (<input type="checkbox"
							id="CBNamSinhNguoiUyQuyenID" onclick="chiHienNamSinhNguoiUyQuyen()" <s:if test="nguoiUyQuyen.namSinh != null">checked="checked"</s:if>/> Năm sinh)</td>
					</tr>
					<tr>
						<td style="text-align: right; color: blue;">Loại giấy tờ</td>
						<td colspan="2"><select name="loaiGiayToNguoiUyQuyen"
							id="LoaiGiayToNguoiUyQuyenID">
								<option value="0">--- Chọn ---</option>
								<s:iterator value="listLoaiGiayTo" var="element">
									<option value='<s:property value="#element.loaiGiayToID"/>' <s:if test="nguoiUyQuyen.loaiGiayToID == #element.loaiGiayToID"> selected="selected" </s:if>>
										<s:property value="#element.loaiGiayToTen" />
									</option>
								</s:iterator>
						</select></td>
						<td style="text-align: right; color: blue;">Số giấy tờ</td>
						<td colspan="2"><input type="text" class="w-300"
							id="SoGiayToNguoiUyQuyenID" name="soGiayToNguoiUyQuyen" value='<s:property value="nguoiUyQuyen.soGiayTo"/>'
							required maxlength="20"></td>
					</tr>
					<tr>
						<td style="text-align: right; color: blue;">Ngày cấp</td>
						<td colspan="2"><input type="text" class="w-300"
							id="NgayCapNguoiUyQuyenID" name="ngayCapNguoiUyQuyen" value='<s:date name="nguoiUyQuyen.ngayCapGiayTo" format="dd/MM/yyyy" />'
							required maxlength="10"></td>
						<td style="text-align: right; color: blue;">Nơi cấp</td>
						<td colspan="2"><input type="text" class="w-300"
							id="NoiCapGiayToNguoiUyQuyenID" name="noiCapGiayToNguoiUyQuyen"
							value='<s:property value="nguoiUyQuyen.noiCapGiayTo"/>' required maxlength="200"></td>
					</tr>
					<tr>
						<td style="text-align: right; color: blue;">Tỉnh/thành thường
							trú</td>
						<td colspan="2"><select name="tinhThanhNguoiUyQuyen"
							id="TinhThanhNguoiUyQuyenID"
							onchange="getSelectHuyenByTinhNguoiUyQuyenID()">
								<option value="0">--- Chọn ---</option>
								<s:iterator value="listTinh" var="element">
									<option value='<s:property value="#element.tinhID"/>' <s:if test="nguoiUyQuyen.tinhThuongTruID == #element.tinhID"> selected="selected" </s:if>>
										<s:property value="#element.tinhTen" />
									</option>
								</s:iterator>
						</select></td>
						<td style="text-align: right; color: blue;">Quận/huyện thường
							trú</td>
						<td colspan="2"><select name="quanHuyenNguoiUyQuyen"
							id="QuanHuyenNguoiUyQuyenID"
							onchange="getSelectXaByHuyenNguoiUyQuyenID()">
								<option value="0">--- Chọn ---</option>
								<s:iterator value="listHuyenNguoiUyQuyen" var="element">
								<option value='<s:property value="#element.huyenID"/>' <s:if test="nguoiUyQuyen.huyenThuongTruID == #element.huyenID"> selected="selected" </s:if>>
									<s:property value="#element.huyenTen" />
								</option>
							</s:iterator>
						</select></td>
					</tr>
					<tr>
						<td style="text-align: right; color: blue;">Phường/xã thường
							trú</td>
						<td colspan="2"><select name="phuongXaNguoiUyQuyen"
							id="PhuongXaNguoiUyQuyenID">
								<option value="0">--- Chọn ---</option>
								<s:iterator value="listXaNguoiUyQuyen" var="element">
								<option value='<s:property value="#element.xaID"/>' <s:if test="nguoiUyQuyen.xaThuongTruID == #element.xaID"> selected="selected" </s:if>>
									<s:property value="#element.xaTen" />
								</option>
								</s:iterator>
						</select></td>
						<td style="text-align: right;">Số nhà/đường phố</td>
						<td colspan="2"><input type="text" class="w-300"
							id="SoNhaDuongPhoNguoiUyQuyenID" name="soNhaDuongPhoNguoiUyQuyen"
							value='<s:property value="nguoiUyQuyen.soNhaThuongTru"/>' maxlength="200"></td>
					</tr>
					<tr>
						<td style="text-align: right;">Địa chỉ liên hệ</td>
						<td colspan="4"><input type="text" class="w-700"
							id="DiaChiLienHeNguoiUyQuyenID" name="diaChiLienHeNguoiUyQuyen"
							value='<s:property value="nguoiUyQuyen.diaChiLienHe"/>' maxlength="255"></td>
					</tr>
				</tbody>
			</table>
		</fieldset>
	</form>
	<div>
		<a href="#" onclick="showPopUpDivWithSize('Popup02ID', 795, 600); ">&nbsp;
			<img src="../images/themedefault/user.ico" style="width: 30px;" /><strong>Tìm
				đương sự đã tồn tại</strong>
		</a>
	</div>
</div>
