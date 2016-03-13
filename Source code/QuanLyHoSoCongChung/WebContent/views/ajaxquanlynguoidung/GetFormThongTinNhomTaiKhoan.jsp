<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<form id="thongTinCoBanFormPopup" method="get" action=""  autocomplete="off">
	<fieldset>
		<table class="form" border="0" cellpadding="0" cellspacing="5"
			width="100%">
			<tbody>
				<tr>
					<td style="width: 15%; text-align: right;">
						Nhóm cha</td>
					<td width="25%">
						<select name="nhomChaPopup" id="NhomTaiKhoanPopupID">
							<option value="0">--- Chọn ---</option>
							<s:iterator value="listNhomTaiKhoan" var="element">
							<option value='<s:property value="#element.nhomID"/>' <s:if test="#element.nhomID == nhomTaiKhoan.nhomChaID"> selected="selected"</s:if>><s:property value="#element.nhomTen"/></option>
							</s:iterator>
						</select>
					</td>
					<td width="25%">&nbsp;</td>
					<td width="25%">&nbsp;</td>
				</tr>
				<tr>
					<td style="width: 15%; text-align: right; color: Blue">Mã nhóm</td>
					<td width="25%" align="left"><input name="maNhomPopup" id="MaNhomIDPopup"
						class="w-200" value='<s:property value="nhomTaiKhoan.nhomMa"/>' type="text" required maxlength="128" /></td>
					<td style="width: 15%; text-align: right; color: Blue">Tên
						nhóm</td>
					<td width="25%" align="left"><input name="tenNhomPopup" id="TenNhomIDPopup"
						class="w-200" value='<s:property value="nhomTaiKhoan.nhomTen"/>' type="text" required maxlength="200" /></td>
				</tr>
				<tr>
					<td colspan="4" align="center">
					<input value="Cập nhật" class="btn_over" type="submit" />
					<input value="Đóng" class="btn_over" type="button" onclick="closePopup();"/>
					<input value='<s:property value="nhomID"/>' id="NhomIDHidden" type="hidden" />
					</td>
				</tr>
			</tbody>
		</table>
	</fieldset>
</form>