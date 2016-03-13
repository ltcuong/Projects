<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<script type="text/javascript" src="../js/danhmuc/danhmucdonvitinh.js"></script>
<!--right !-->
<div class="col_right">
	<div class="box-content">
		<div class="col_right">
			<div class="achor_link"><img src="../images/themedefault/Home.png" height="16px;" width="16px;"/> Quản lý danh mục <img src="../images/themedefault/Next.png"/> Danh mục huyện</div>
			<div class="box-content">
				<div id="dvMain">
					<div id="form">
					<form id=ThongTinDanhMucForm method="get" action=""  autocomplete="off">
						<fieldset>
						<table class="form" border="0" cellpadding="0" cellspacing="5"
							width="100%">
							<tbody>
								<tr>
									<td style="width: 10%; text-align: right; color: blue;">Tên đơn vị tính</td>
									<td width="20%"><input  id="TenDonViID" name="tenDonViTinh" class="w-200" type="text" maxlength="100" required="required"/></td>
									<td width="10%">&nbsp;</td>
									<td width="10%">&nbsp;</td>
									<td width="25%">&nbsp;</td>
								</tr>
								<tr>
									<td style="width: 10%"></td>
									<td style="width: 40%; text-align: left">
									<s:if test="isAdd == 1">
									<input value="Cập nhật" id="btnCapNhat" class="btn_over" type="submit"/> 
									<input value="Nhập lại" id="btnNhapMoi" onclick="clearDataDanhMuc()" class="btn_over" type="button"/>
									</s:if>
									</td>
									<td style="width: 10%; text-align: right"></td>
									<td width="20%"></td>
									<td width="5%">&nbsp;</td>
								</tr>
							</tbody>
						</table>
						</fieldset>
						</form>
					</div>
					<div>
						<table style="border-collapse: collapse;  border-color: #dddddd; width: 100%" border="1" cellspacing="0">
							<tr style="background-color: White;">
								<th scope="col" style="color: White; background-color: Green;">STT</th>
								<th scope="col" style="color: White; background-color: Green;">Tên đơn vị tính</th>
								<th scope="col" style="color: White; background-color: Green;">&nbsp;</th>
							</tr>
						<tbody id="ListDanhMucID">
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
						</tbody>
					</table>
					
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<input type="hidden" value="1" id="pageHiddenID" />
<input type="hidden" value="<s:text name="danhmuc.delete"/>" id="danhmucdeleteID" />
<input type="hidden" value="<s:text name="danhmuc.deletesuccess"/>" id="danhmucdeletesuccessID" />
<input type="hidden" value="<s:text name="danhmuc.deleteunsucess"/>" id="danhmucdeleteunsucessID" />
<input type="hidden" value="<s:text name="danhmuc.updatesuccess"/>" id="danhmucupdatesuccessID" />
<input type="hidden" value="<s:text name="danhmuc.updateunsuccess"/>" id="danhmucupdateunsuccessID" />

<input type="hidden" value="<s:text name="danhmuc.maduocsudung"/>" id="danhmucmaduocsudungID" />
<input type="hidden" value="<s:text name="danhmuc.tenduocsudung"/>" id="danhmuctenduocsudungID" />
<input type="hidden" value="<s:text name="danhmuc.makhongtrong"/>" id="danhmucmakhongtrongID" />
<input type="hidden" value="<s:text name="danhmuc.tenkhongtrong"/>" id="danhmuctenkhongtrongID" />


<input type="hidden" value="" id="DonViTinhIDHidden" />
<!--end right !-->