<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<table rules="all" id="" style="border-collapse: collapse;width: 100%" border="1"
	cellspacing="0">
	<tbody>
		<tr style="background-color: White;">
			<th scope="col" style="color: White; background-color: Green;">STT</th>
			<th scope="col" style="color: White; background-color: Green;">Tên chức năng</th>
			<th scope="col" style="color: White; background-color: Green;" align="center">Xem <input checked="checked" id="CheckAllViewID" onclick="checkAllView('CheckAllViewID');" type="checkbox"/></th>
			<th scope="col" style="color: White; background-color: Green;" align="center">Thêm <input checked="checked" id="CheckAllAddID" onclick="checkAllAdd('CheckAllAddID');" type="checkbox"/></th>
			<th scope="col" style="color: White; background-color: Green;" align="center">Xóa <input checked="checked" id="CheckAllDeleteID" onclick="checkAllDelete('CheckAllDeleteID');" type="checkbox"/></th>
			<th scope="col" style="color: White; background-color: Green;" align="center">Chỉnh sửa <input checked="checked" id="CheckAllEditID" onclick="checkAllEdit('CheckAllEditID');" type="checkbox"/></th>
		</tr>
		<s:iterator value="listGroupRole" status="row" var="element">
		<tr>
			<td style="width: 55px;" align="center"><s:property value="#row.index + 1" /></td>
			<td>
				<div style="text-align: left"><s:property value="#element.functions.funcTen" /></div>
			</td>
			<td style="width: 100px;" align="center"><input id="View_<s:property value="#row.index"/>" class="groupView" value="View_<s:property value="#row.index"/>" onclick="changeStatusPhanQuyen('View_<s:property value="#row.index"/>');" type="checkbox" <s:if test="#element.isView == 1">checked="checked"</s:if> /></td>
			<td style="width: 100px;" align="center"><input id="Add_<s:property value="#row.index"/>" class="groupAdd" value="Add_<s:property value="#row.index"/>" onclick="changeStatusPhanQuyen('Add_<s:property value="#row.index"/>');" type="checkbox" <s:if test="#element.isAdd == 1">checked="checked"</s:if> /></td>
			<td style="width: 100px;" align="center"><input id="Delete_<s:property value="#row.index"/>" class="groupDelete"  value="Delete_<s:property value="#row.index"/>" onclick="changeStatusPhanQuyen('Delete_<s:property value="#row.index"/>');" type="checkbox" <s:if test="#element.isDelete == 1">checked="checked"</s:if> /></td>
			<td style="width: 100px;" align="center"><input id="Edit_<s:property value="#row.index"/>" class="groupEdit" value="Edit_<s:property value="#row.index"/>" onclick="changeStatusPhanQuyen('Edit_<s:property value="#row.index"/>');" type="checkbox" <s:if test="#element.isEdit == 1">checked="checked"</s:if> /></td>
		</tr>
		</s:iterator>		
	</tbody>
</table>