<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<table rules="all" style="border-collapse: collapse; width: 100%" border="1" cellspacing="0">
	<tbody>
		<tr style="background-color: White;">
			<th scope="col" style="color: White; background-color: Green;">STT</th>
			<th scope="col" style="color: White; background-color: Green;">Tên</th>
			<th scope="col" style="color: White; background-color: Green;">Giá
				trị</th>
			<th scope="col" style="color: White; background-color: Green;">&nbsp;</th>
		</tr>
		<s:iterator value="listConfig" var="element" status="row">
			<tr>
				<td style="width: 25px;" align="center"><s:property
						value="#row.index + 1" /></td>
				<td style="width: 150px;">
					<div style="text-align: left">
						<s:property value="paramTen" />
					</div>
				</td>
				<td style="width: 150px;">
					<div style="text-align: left">
						<s:if test="#element.paramMa == 'smtp_auth_pwd'">*********</s:if><s:else>						
						<s:property value="paramValue" />
						</s:else>
					</div>
				</td>
				<td style="width: 40px;" align="center"><input
					id="editPram_<s:property value="paramMa" />"
					src="../images/themedefault/editIcon.gif"
					onclick="editPramValue('<s:property value="paramMa" />')"
					style="height: 18px; width: 18px; border-width: 0px;" type="image" /></td>
			</tr>
		</s:iterator>
	</tbody>
</table>