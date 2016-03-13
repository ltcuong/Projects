<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div style="width: 100%; margin-top: 10px;">
	<fieldset>
		<p><strong> Chi tiết chỉnh sửa </strong></p>
		<div>
			<table border="1" cellspacing="0" style="border-collapse: collapse; width: 100%" rules="all">
				<tbody>
					<tr style="background-color: White;">
						<th style="color: White; background-color: Green;" scope="col" width="20px;">STT</th>
						<th style="color: White; background-color: Green;" scope="col" width="100px;">Tên dữ liệu</th>
						<th style="color: White; background-color: Green;" scope="col" width="200px;">Nội dung cũ</th>
						<th style="color: White; background-color: Green;" scope="col" width="200px;">Nội dung mới</th>
					</tr>
					<s:if test="listLogDetail.size() > 0">
					<s:iterator value="listLogDetail" status="row" var="element">
					<tr>
						<td align="center"><s:property value="#row.index + 1"/></td>
						<td >
							<div style="text-align: left"><s:property value="logName"/></div>
						</td>
						<td >
							<div style="text-align: left"><s:property value="noiDungCu"/></div>
						</td>
						<td >
							<div style="text-align: left"><s:property value="noiDungMoi"/></div>
						</td>
					</tr>
					</s:iterator>
					</s:if><s:else>
					<tr>
						<td align="center" colspan="4">Không có dữ liệu nào được thay đổi.</td>						
					</tr>
					</s:else>
				</tbody>
			</table>
		</div>

	</fieldset>
</div>