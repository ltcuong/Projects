<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>

<script type="text/javascript" src="../js/quanlyhopdong/capnhatthongtinmauhopdong.js"></script>

<div class="col_right">
	<div class="achor_link">
		<img src="../images/Home.png" height="16px;" width="16px;" /> Quản lý hợp đồng công chứng <img src="../images/Next.png" /> Cập nhật thông tin mẫu hợp đồng công chứng
	</div>
	<div class="box-content">
		<div id="dvMain" style="width: 100%">
			<form id="ThongTinFormMauHopDongID" method="get" action="" autocomplete="off">
			<fieldset>
			<table width="100%" cellspacing="5" cellpadding="5" border="0"
				class="form">
				<tbody>
					<tr>
						<td colspan="2">
							<p style="color: #e60200;">
								<strong>Thông tin hợp đồng</strong>
							</p>
						</td>
					</tr>
					<tr>
						<td style="text-align: right; width: 15%; color: blue;">Tên template</td>
						<td><select name="tenTemplate" id="TenTemplateID">
							<option value="0">--- Chọn ---</option>
							<s:iterator value="listTemplateHopDong" var="element">
							<option value='<s:property value="#element.templateID"/>'><s:property value="#element.tenTemplate"/></option>
							</s:iterator>
						</select></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td colspan="4"><div id="HopDongTabID">
						<FCK:editor instanceName="noiDungEditor" inputName="hopDongContent" height="500">
						</FCK:editor>
						</div></td>
					</tr>
				</tbody>
			</table>
			</fieldset>
			</form>
			<div id="FormTuKhoaID">
			
			</div>
			<div style="text-align: center;">
				<input type="button" class="btn_over" id="BtnCapNhatID" value="Cập nhật">
			</div>
		</div>
	</div>
</div>


<input type="hidden" id="CheckValidateID" value="false">
<input type="hidden" id="StepHiddenID" value="1">