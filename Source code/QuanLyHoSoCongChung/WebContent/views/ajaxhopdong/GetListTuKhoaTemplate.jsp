<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<table width="100%" cellspacing="5" cellpadding="5" border="0"
	class="form">
	<tbody>
		<tr>
			<td>
				<p style="color: #e60200;">
					<strong>Danh sách từ khoá</strong>
				</p>
			</td>
		</tr>
		<tr>
			<td>
			<s:iterator value="listTuKhoa" var="element">
				<span style="margin-right: 20px;"><a href="javascript:void(0);" onclick="insertAtCaret('noiDungEditor','<s:property value="#element.tenTuKhoa"/>');return false;"><s:property value="#element.tenHienThi"/></a></span>
			</s:iterator>	
			</td>
		</tr>
	</tbody>
</table>
