<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<script type="text/javascript" src="../js/danhmuc/danhmuchuyen.js"></script>
<!--right !-->
<div class="col_right">
	<div class="box-content">
		<div class="col_right">
			<div class="achor_link"><img src="../images/themedefault/Home.png" height="16px;" width="16px;"/> Quản lý danh mục <img src="../images/themedefault/Next.png"/> 
			Danh mục đơn vị trực thuộc tỉnh</div>
			<div class="box-content">
				<div id="dvMain">
					<div id="form">
					<form id=ThongTinDanhMucForm method="get" action=""  autocomplete="off">
						<fieldset>
						<table class="form" border="0" cellpadding="0" cellspacing="5"
							width="100%">
							<tbody>
								<tr>
									<td style="width: 10%; text-align: right; color: blue;">Tỉnh</td>
									<td width="20%"><select id="TinhID" name="tinh" class="w-200" type="text" disabled="disabled">
										<s:iterator value="listTinh">
										<option value='<s:property value="tinhID"/>' <s:if test="tinhID == 38"> selected="selected"</s:if>><s:property value="tinhTen"/></option>
										</s:iterator>
										
									</select></td>
									<td width="10%">&nbsp;</td>
									<td width="10%">&nbsp;</td>
									<td width="25%">&nbsp;</td>
								</tr>
								<tr>
									<td style="width: 10%; text-align: right; color: blue;">Mã</td>
									<td width="20%"><input id="MaDanhMucID" name="maHuyen" class="w-200" type="text" maxlength="27" required="required"/></td>
									<td width="10%">&nbsp;</td>
									<td width="10%">&nbsp;</td>
									<td width="25%">&nbsp;</td>
								</tr>
								<tr>
									<td style="width: 10%; text-align: right; color: blue;">Tên</td>
									<td width="20%"><input  id="DanhMucTen" name="tenHuyen" class="w-200" type="text" maxlength="100" required="required"/></td>
									<td width="10%">&nbsp;</td>
									<td width="10%">&nbsp;</td>
									<td width="25%">&nbsp;</td>
								</tr>
								<tr>
									<td style="width: 10%; text-align: right">Mã báo cáo</td>
									<td width="20%"><input  id="MaBaocaoID" name="maBaoCao" class="w-200" type="text" maxlength="100"/></td>
									<td width="10%">&nbsp;</td>
									<td width="10%">&nbsp;</td>
									<td width="25%">&nbsp;</td>
								</tr>
								<tr>
									<td style="width: 10%"></td>
									<td style="width: 40%; text-align: left">
									<s:if test="isAdd == 1">
									<input value="Cập nhật" id="btnCapNhat" class="btn_over" type="submit"/> 
									<input value="Nhập lại" id="btnNhapMoi" onclick="clearDataDanhMuc()" class="btn_over" type="submit"/>
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
					<div id="ListDanhMuc"></div>
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


<input type="hidden" value="" id="masodanhmuchiddenID" />
<input type="hidden" value="1" id="LaBenhVienHiddenID" />
<!--end right !-->