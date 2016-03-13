<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:iterator value="listXa" var="element">
<tr>
	<td align="left"><s:property value="#element.xaTen"/></td>
	<td align="center"><s:property value="#element.huyen.huyenTen"/></td>
	<td align="left"><span style="color: White; float: left"> <input
			type="checkbox" value='<s:property value="#element.xaID"/>' onclick="chooseXa(this.id)" name="cbXa"
			id="cbXa_<s:property value="#element.xaID"/>">
	</span></td>
</tr>
</s:iterator>
<s:if test="totalPage > 0">
	<tr>
		<td colspan="3"><table border="0" style="width: 100%">
				<tbody>
					<tr>
						<s:if test="page - 1 > 0">
							<td  align="center"><a href="javascript:void(0)"
								onclick="getListXaThemMoiTaiKhoan('<s:property value="page -1"/>');">&#171;</a></td>
						</s:if>
						<s:iterator begin="page" end="endPage" var="navi">
							<s:if test="#navi == page">
								<td  align="center"><s:property /></td>
							</s:if>
							<s:else>
								<td  align="center"><a href="javascript:void(0);"
									onclick="getListXaThemMoiTaiKhoan('<s:property/>');"
									title="<s:property/>"><s:property /></a></td>
							</s:else>
						</s:iterator>
						<s:if test="totalPage > endPage">
							<td  align="center"><a href="javascript:void(0)"
								onclick="getListXaThemMoiTaiKhoan('<s:property value="page + 1"/>');">&#187;</a></td>
						</s:if>
					</tr>
				</tbody>
			</table></td>
	</tr>
</s:if>	

