<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<table style="border-collapse: collapse; width:100%;  border-color: #dddddd;" border="1" cellspacing="0">
	<tbody>
		<tr style="background-color: White;">
			<th scope="col" style="color: White; background-color: Green;">STT</th>
			<th scope="col" style="color: White; background-color: Green;">Mã</th>
			<th scope="col" style="color: White; background-color: Green;">Tên</th>
			<th scope="col" style="color: White; background-color: Green;">Tên huyện</th>
			<th scope="col" style="color: White; background-color: Green;">Tên tỉnh</th>
			<th scope="col" style="color: White; background-color: Green;">Mã báo cáo</th>
			<th scope="col" style="color: White; background-color: Green;">&nbsp;</th>
		</tr>
		<s:iterator value="listXa" var="element" status="row">
		<tr>
			<td style="width: 100px;" align="center"><s:property value="#row.index+((page-1)* rowinpage) + 1" /></td>
			<td style="width: 100px;">
				<div style="text-align: center"><s:property value="xaMa"/></div>
			</td>
			<td style="width: 250px;">
				<div style="text-align: left"><s:property value="xaTen"/></div>
			</td>
			<td style="width: 250px;">
				<div style="text-align: left"><s:property value="#element.huyen.huyenTen"/></div>
			</td>
			<td style="width: 200px;">
				<div style="text-align: left"><s:property value="#element.huyen.tinh.tinhTen"/></div>
			</td>
			<td style="width: 150px;">
				<div style="text-align: left"><s:property value="maBaoCao"/></div>
			</td>
			<td style="width: 100px;" align="center">
				<s:if test="isEdit == 1">
				<s:if test="locked == 1">
				<input src="../images/themedefault/lockIcon.gif" onclick="changeStatusDanhMuc(<s:property value="xaID" />)" style="height: 20px; width: 20px; border-width: 0px;" type="image" />
				</s:if><s:else>
				<input src="../images/themedefault/unlockIcon.gif" onclick="changeStatusDanhMuc(<s:property value="xaID" />)" style="height: 20px; width: 20px; border-width: 0px;" type="image" />
				</s:else>
				<input id="editDanhMuc_<s:property value="xaID" />" src="../images/themedefault/editIcon.gif" onclick="editDanhMuc(<s:property value="xaID" />)" style="height: 18px; width: 18px; border-width: 0px;" type="image"/>
				</s:if>
				<s:if test="isDelete == 1">
				<input id="deleteDanhMuc_<s:property value="xaID" />" src="../images/themedefault/deleteIcon.gif" onclick="deleteDanhMuc(<s:property value="xaID" />)" style="height: 18px; width: 18px; border-width: 0px;" type="image"/>
				</s:if>
				</td>
		</tr>
		</s:iterator>		
		<tr>
		<td colspan="7" style="text-align: left;"><strong >Tổng số: <s:property value="totalRecord"/> </strong></td>
		</tr>
		<s:if test="totalPage > 0">
			<tr>
				<td colspan="7" ><table border="0"  style="width: 100%">
						<tbody>
							<tr>
								<s:if test="page - 1 > 0">
									<td align="center"><a href="javascript:void(0)" 
										onclick="loadListDanhMuc('1');">&laquo;</a></td>
									<td align="center"><a href="javascript:void(0)"
										onclick="loadListDanhMuc('<s:property value="page -1"/>');">&lt;</a></td>
								</s:if>
								<s:iterator begin="page" end="endPage" var="navi">
									<s:if test="#navi == page">
										<td align="center"><s:property /></td>
									</s:if>
									<s:else>
										<td align="center"><a href="javascript:void(0);"
											onclick="loadListDanhMuc('<s:property/>');"
											title="<s:property/>"><s:property /></a></td>
									</s:else>
								</s:iterator>
								<s:if test="totalPage > endPage">
									<td align="center"><a href="javascript:void(0)"
										onclick="loadListDanhMuc('<s:property value="page + 1"/>');">&gt;</a></td>
										<td align="center"><a href="javascript:void(0)" 
										onclick="loadListDanhMuc('<s:property value="endPage"/>');">&raquo;</a></td>
								</s:if>
							</tr>
						</tbody>
					</table></td>
			</tr>
		</s:if>
	</tbody>
</table>
