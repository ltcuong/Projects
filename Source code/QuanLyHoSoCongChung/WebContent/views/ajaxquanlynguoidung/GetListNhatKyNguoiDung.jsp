<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<table rules="all" style="border-collapse: collapse; width: 100%" border="1" cellspacing="0">
	<tbody>
		<tr style="background-color: White;">
			<th scope="col" style="color: White; background-color: Green;">STT</th>
			<th scope="col" style="color: White; background-color: Green;">Người dùng</th>
			<th scope="col" style="color: White; background-color: Green;">Trang làm việc</th>
			<th scope="col" style="color: White; background-color: Green;">Thao tác</th>
			<th scope="col" style="color: White; background-color: Green;">Ngày thực hiện</th>
			<th scope="col" style="color: White; background-color: Green;">Nội dung</th>
			<th scope="col" style="color: White; background-color: Green;">&nbsp;</th>
		</tr>
		<s:iterator value="listLogHeThong" status ="row" var ="element">
		<tr>
			<td style="width: 25px;" align="center"><s:property value="#row.index+((page-1)* 10) + 1" /></td>
			<td style="width: 60px;">
				<div style="text-align: left"><s:property value="tenDangNhap"/></div>
			</td>
			<td style="width: 100px;">
				<div style="text-align: left"><s:property value="formLamViecTen"/></div>
			</td>
			<td style="width: 50px;">
				<div style="text-align: center"><s:if test="actionName == 'View'">Xem</s:if><s:if test="actionName == 'Add'">Thêm</s:if><s:if test="actionName == 'Edit'">Chỉnh sửa</s:if><s:if test="actionName == 'Delete'">Xoá</s:if><s:if test="actionName == 'Update'">Cập nhật</s:if></div>
			</td>
			<td style="width: 110px;">
				<div style="text-align: left"><s:date name="actionTime" format="dd-MM-yyyy hh:mm:ss a"/></div>
			</td>
			<td style="width: 150px;">
				<div style="text-align: left"><s:property value="actionContent"/></div>
			</td>
			<td style="width: 60px;"><a style="color: blue; text-decoration: underline;" id="logid_<s:property value="logID"/>" href="javascript:void(0);" onclick="xemChiTietNhatKy(<s:property value="logID"/>)">Xem chi tiết</a></td>
		</tr>
		</s:iterator>
		<s:if test="totalPage > 0">
			<tr>
				<td colspan="7"><table border="0" style="width: 100%; text-align: center;">
						<tbody>
							<tr>
								<s:if test="page - 1 > 0">
									<td><a href="javascript:void(0)"
										onclick="loadListDanhSachLog('<s:property value="page -1"/>');">&#171;</a></td>
								</s:if>
								<s:iterator begin="page" end="endPage" var="navi">
									<s:if test="#navi == page">
										<td><s:property /></td>
									</s:if>
									<s:else>
										<td><a href="javascript:void(0);"
											onclick="loadListDanhSachLog('<s:property/>');"
											title="<s:property/>"><s:property /></a></td>
									</s:else>
								</s:iterator>
								<s:if test="totalPage > endPage">
									<td><a href="javascript:void(0)"
										onclick="loadListDanhSachLog('<s:property value="page + 1"/>');">&#187;</a></td>
								</s:if>
							</tr>
						</tbody>
					</table></td>
			</tr>
		</s:if>
	</tbody>
</table>