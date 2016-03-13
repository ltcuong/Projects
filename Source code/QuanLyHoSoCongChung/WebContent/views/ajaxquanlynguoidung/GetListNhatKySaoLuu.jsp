<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:iterator value="listSaoLuu" status="row" var="element">
<tr>
	<td align="center"><s:property value="#row.index + 1" /></td>
	<td align="left">
		<s:property value="#element.tenSaoLuu" />
	</td>
	<td align="center">
		<s:date name="#element.ngaySaoLuu" format="dd/MM/yyyy hh:mm:ss a"/>
	</td>
	<td align="center">
		<s:property value="#element.taiKhoanSaoLuu" />
	</td>
	<td style="text-decoration: underline;" align="center">
		<a href="../../LuuTruData/<s:property value="#element.duongDan" />" >Tải xuống</a> 
	</td>
	<td style="text-decoration: underline;" align="center">
		<a href="javascript:void(0);" onclick="xoaNhatKySaoLuuDuLieu(<s:property value="#element.saoLuuID" />)">Xoá</a> 
	</td>
</tr>
</s:iterator>
<s:if test="totalPage > 0">
	<tr>
		<td colspan="6"><table border="0" style="width: 100%">
				<tbody>
					<tr>
						<s:if test="page - 1 > 0">
						<td><a href="javascript:void(0)"  onclick="getListNhatKySaoLuu('1');">&laquo;</a></td>
							<td  align="center"><a href="javascript:void(0)"
								onclick="getListNhatKySaoLuu('<s:property value="page -1"/>');">&lt;</a></td>
						</s:if>
						<s:iterator begin="page" end="endPage" var="navi">
							<s:if test="#navi == page">
								<td  align="center"><s:property /></td>
							</s:if>
							<s:else>
								<td  align="center"><a href="javascript:void(0);"
									onclick="getListNhatKySaoLuu('<s:property/>');"
									title="<s:property/>"><s:property /></a></td>
							</s:else>
						</s:iterator>
						<s:if test="totalPage > endPage">
							<td  align="center"><a href="javascript:void(0)"
								onclick="getListNhatKySaoLuu('<s:property value="page + 1"/>');">&gt;</a></td>
								<td><a href="javascript:void(0)"  onclick="getListNhatKySaoLuu('<s:property value="endPage"/>');">&raquo;</a></td>
						</s:if>
					</tr>
				</tbody>
			</table></td>
	</tr>
</s:if>