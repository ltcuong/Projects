<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:iterator value="listDonViTinh" var="element" status="row">
							<tr>
								<td style="width: 100px;" align="center"><s:property value="#row.index+((page-1)* rowinpage) + 1" /></td>
								<td style="">
									<div style="text-align: center"><s:property value="donViTinhTen"/></div>
								</td>
								<td style="width: 100px;" align="center">
									<s:if test="isEdit == 1">
									<input id="editDanhMuc_<s:property value="donViTinhID" />" src="../images/themedefault/editIcon.gif" onclick="editDanhMuc(<s:property value="donViTinhID" />)" style="height: 18px; width: 18px; border-width: 0px;" type="image"/>
									</s:if>
									<s:if test="isDelete == 1">
									<input id="deleteDanhMuc_<s:property value="donViTinhID" />" src="../images/themedefault/deleteIcon.gif" onclick="deleteDanhMuc(<s:property value="donViTinhID" />)" style="height: 18px; width: 18px; border-width: 0px;" type="image"/>
									</s:if>
									</td>
							</tr>
							</s:iterator>		
							<tr>
							<td colspan="6" style="text-align: left;"><strong >Tổng số: <s:property value="totalRecord"/> </strong></td>
							</tr>
							<s:if test="totalPage > 0">
								<tr>
									<td colspan="3"><table border="0"  style="width: 100%">
											<tbody>
												<tr>
													<s:if test="page - 1 > 0">
														<td align="center"><a href="javascript:void(0)" 
															onclick="loadListDanhMucDonViTinh('1');">&laquo;</a></td>
														<td align="center"><a href="javascript:void(0)"
															onclick="loadListDanhMucDonViTinh('<s:property value="page -1"/>');">&lt;</a></td>
													</s:if>
													<s:iterator begin="page" end="endPage" var="navi">
														<s:if test="#navi == page">
															<td align="center"><s:property /></td>
														</s:if>
														<s:else>
															<td align="center"><a href="javascript:void(0);"
																onclick="loadListDanhMucDonViTinh('<s:property/>');"
																title="<s:property/>"><s:property /></a></td>
														</s:else>
													</s:iterator>
													<s:if test="totalPage > endPage">
														<td align="center"><a href="javascript:void(0)"
															onclick="loadListDanhMucDonViTinh('<s:property value="page + 1"/>');">&gt;</a></td>
															<td align="center"><a href="javascript:void(0)" 
															onclick="loadListDanhMucDonViTinh('<s:property value="endPage"/>');">&raquo;</a></td>
													</s:if>
												</tr>
											</tbody>
										</table></td>
								</tr>
							</s:if>