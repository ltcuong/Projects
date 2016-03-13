<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<form id="thongTinHoSoFormPopup" method="get" action=""  autocomplete="off">
	<fieldset>
		<table class="form" border="0" cellpadding="0" cellspacing="5"
			width="100%">
			<tbody>
				<tr>
					<td style="text-align: right; color: Blue; width: 15%;">Tên đăng nhập</td>
					<td width="35%" align="left"><input id="TenDangNhapIDPopup" value='<s:property value="taiKhoan.tenDangNhap"/>'
						name="tenDangNhapPopup" class="w-200" type="text" maxlength="128" required disabled="disabled"/></td>
					<td style="text-align: right; width: 15%;">Email</td>
					<td width="35%" align="left"><input name="emailPopup" id="EmailIDPopup"  value='<s:property value="taiKhoan.email"/>'
						class="w-200" type="text" maxlength="100" /></td>
				</tr>
				<tr>
					<td style="text-align: right; color: Blue">Mật khẩu</td>
					<td align="left"><input name="matKhauPopup" id="MatKhauIDPopup" class="w-200"
						type="password" maxlength="128" required value="******" disabled="disabled"/></td>
					<td style="text-align: right">Số điện thoại</td>
					<td align="left"><input name="soDienThoaiPopup" id="SoDienThoaiIDPopup"  value='<s:property value="taiKhoan.soDienThoai"/>'
						class="w-200" type="text" maxlength="20" /></td>
				</tr>
				<tr>
					<td style="text-align: right; color: Blue">Lặp lại mật khẩu</td>
					<td align="left"><input id="MatKhauConfirmIDPopup" name="matKhauConfirmPopup"
						class="w-200" type="password" maxlength="128" required value="******" disabled="disabled"/></td>
					<td style="text-align: right">Địa chỉ liên lạc</td>
					<td align="left"><input name="diaChiPopup" id="DiaChiIDPopup"  value='<s:property value="taiKhoan.diaChi"/>' class="w-200"
						type="text" maxlength="500" /></td>
				</tr>
				<tr>
					<td style="text-align: right; color: Blue">Họ tên</td>
					<td align="left"><input name="hoTenPopup" id="HoTenIDPopup"  value='<s:property value="taiKhoan.hoTen"/>' class="w-200"
						type="text" required /></td>
					<td style="text-align: right; color: Blue;">Nhóm tài khoản</td>
					<td align="left"><select id="NhomIDPopup" class="w-200" name="nhomIDPopup">
							<option value="0">--Chọn nhóm--</option>
							<s:iterator value="listNhomTaiKhoan" var="element">
								<option value='<s:property value="#element.nhomID"/>'<s:if test="taiKhoan.nhomID == #element.nhomID"> selected="selected"</s:if>>
									<s:property value="nhomTen" />
								</option>
							</s:iterator>
					</select></td>
				</tr>
				<tr>
					<td style="text-align: right;">Chức vụ</td>
					<td align="left"><input id="ChucVuIDPopup"  value='<s:property value="taiKhoan.chucVu"/>' name="chucVuPopup" class="w-200"
						type="text" maxlength="100" /></td>
					<td style="text-align: right">Đơn vị công tác</td>
					<td align="left"><input name="donViCongTacPopup" id="DonViCongTacIDPopup"  value='<s:property value="taiKhoan.donViCongTac"/>'
						class="w-200" type="text" maxlength="200" /></td>
				</tr>
				<tr>
					<td style="text-align: right;"><input  type="checkbox" id="CBDoiMatKhauID" onclick="changeMatKhauTaiKhoan()"></td>
					<td align="left"><strong>Đổi mật khẩu</strong></td>
				</tr>
				<tr>
					<td style="text-align: center;" colspan="4"><input name=""
						value="Cập nhật" id="BtnEdit" class="btn_over" type="submit" /> 
						<input name="" value="Đóng" id="" class="btn_over" type="button" onclick="closePopup();" /> 
						<input value='<s:property value="tenDangNhap"/>' type="hidden" id="TaiKhoanHiddenID" /></td>
				</tr>

			</tbody>
		</table>
	</fieldset>
</form>