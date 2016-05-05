<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>

<s:if test="laHopDongSoanSan == 0">
<form id="FormHopDongDiChucID" method="get" action="" autocomplete="off">
<fieldset>
<table width="100%" cellspacing="5" cellpadding="5" border="0"
	class="form">
	<tbody>
		<tr>
			<td colspan="6">
				<p style="color: #e60200;">
					<strong>Thông tin hợp đồng di chúc</strong>
				</p>
			</td>
		</tr>
		<tr>
			<td style="text-align: right; width: 15%; color: blue;">Nội dung di chúc</td>
			<td colspan="2"><div id="DiChucTabID">
			<FCK:editor instanceName="diChucEditor" inputName="diChucContent" height="600" >
			</FCK:editor>
			</div></td>
		</tr>

	</tbody>
</table>
</fieldset>
</form>
</s:if><s:else>
<form id="FormHopDongSoanSanID" method="get" action="" autocomplete="off">
<fieldset>
<table width="100%" cellspacing="5" cellpadding="5" border="0" class="form">
	<tbody>
		<tr>
			<td colspan="6">
				<p style="color: #e60200;">
					<strong>Thông tin hợp đồng di chúc</strong>
				</p>
			</td>
		</tr>
		<tr>
			<td style="text-align: right; width: 15%; color: blue;">Nội dung soạn sẵn</td>
			<td style="width: 30%"><div id="NoiDungSoanSanTabID">
			<FCK:editor instanceName="noiDungSoanSanEditor" inputName="noiDungSoanSanContent" height="500">
			</FCK:editor>
			</div>
			</td>
		</tr>
	</tbody>
</table>
</fieldset>
</form>
</s:else>