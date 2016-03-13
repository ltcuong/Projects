<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:iterator value="listNhomTaiKhoan" status="row" var="element">
	<tr>
		<td align="center"><s:property value="#row.index + 1" /></td>
		<td align="left"><s:property value="#element.nhomMa" /></td>
		<td align="left"><s:property value="#element.nhomTen" /></td>
		<td align="center"><s:property value="#element.nhomCha.nhomTen" /></td>
		<td align="center"><s:if test="#element.locked == 0">Đang hoạt động</s:if>
			<s:elseif test="#element.locked == 1">Đã khoá</s:elseif></td>
		<td style="text-decoration: underline; width: 60px;" align="center">
			<s:if test="isEdit == 1">
			<a href="javascript:void(0);" onclick="chinhSuaNhomTaiKhoan(<s:property value="#element.nhomID" />)">Chỉnh sửa</a> 
			| <s:if test="#element.locked == 0"><a href="javascript:void(0);" onclick="changeStatusNhom(<s:property value="#element.nhomID" />)">Khoá</a> </s:if>
			<s:elseif test="#element.locked == 1"><a href="javascript:void(0);" onclick="changeStatusNhom(<s:property value="#element.nhomID" />)">Mở khoá</a></s:elseif>
			| </s:if><s:if test="isDelete == 1"><a href="javascript:void(0);" onclick="deleteNhomTaiKhoan(<s:property value="#element.nhomID" />)">Xoá</a></s:if>
		</td>
	</tr>
</s:iterator>
<tr>
<td align="left" colspan="6"><strong>Tổng số nhóm: <s:property value="listNhomTaiKhoan.size()"/> </strong></td>
</tr>