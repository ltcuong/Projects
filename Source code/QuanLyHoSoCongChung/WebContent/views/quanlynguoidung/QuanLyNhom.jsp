<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<script type="text/javascript" src="../js/quanlynguoidung/quanlynhom.js"></script>
<div class="col_right">
	<div class="box-content">
		<div>
			<div class="col_right">
				<div class="achor_link">
				<img src="../images/Home.png" height="16px;" width="16px;"/> Quản lý người dùng <img src="../images/Next.png"/> Quản lý nhóm
				</div>		
				<div id="dvMain" style="width: 100%">
					<form id="thongTinCoBanForm" method="get" action=""  autocomplete="off">
						<fieldset>
							<table class="form" border="0" cellpadding="0" cellspacing="5"
								width="100%">
								<tbody>
									<tr>
										<td style="width: 15%; text-align: right;">
											Nhóm cha</td>
										<td width="25%">
											<select name="nhomCha" id="NhomTaiKhoanID">
												<option value="0">--- Chọn ---</option>
												<s:iterator value="listNhomTaiKhoan" var="element">
												<option value='<s:property value="#element.nhomID"/>' ><s:property value="#element.nhomTen"/></option>
												</s:iterator>
											</select>
										</td>
										<td width="25%">&nbsp;</td>
										<td width="25%">&nbsp;</td>
									</tr>
									<tr>
										<td style="width: 15%; text-align: right; color: Blue">
											Mã nhóm</td>
										<td width="25%">
											<input name="maNhom" id="MaNhomID" class="w-200" type="text" required maxlength="128"/></td>
										<td width="25%">&nbsp;</td>
										<td width="25%">&nbsp;</td>
									</tr>
									<tr>
										<td style="width: 15%; text-align: right; color: Blue">Tên nhóm</td>
										<td width="25%">
											<input name="tenNhom" id="TenNhomID" class="w-200" type="text" required maxlength="200"/></td>
										<td width="25%">&nbsp;</td>
										<td width="25%">&nbsp;</td>
									</tr>
									<tr>
										<td colspan="4" align="center">
											<s:if test="isAdd == 1">
											<input value="Cập nhật" id="BtnCapNhat" class="btn_over" type="submit"/> 
											<input value="Nhập lại" id="BtnNhapMoi" class="btn_over" type="button"/>
											</s:if>
										</td>
									</tr>
								</tbody>
							</table>
							</fieldset>
							</form>
						</div>
						<div id="">
						<table rules="all" id="" style="width: 100%; border-collapse: collapse;" border="1" cellspacing="0">
							<thead>
							<tr style="background-color: White;">
									<th scope="col" style="color: White; background-color: Green; width: 30px;">STT</th>
									<th scope="col" style="color: White; background-color: Green; width: 100px;">Mã nhóm</th>
									<th scope="col" style="color: White; background-color: Green; width: 100px;">Tên nhóm</th>
									<th scope="col" style="color: White; background-color: Green; width: 100px;">Nhóm cha</th>
									<th scope="col" style="color: White; background-color: Green; width: 50px;">Tình trạng</th>
									<th scope="col" style="color: White; background-color: Green;">Thao tác</th>
								</tr>
							</thead>
							<tbody id="DanhSachNhomID">
								<s:iterator value="listNhomTaiKhoan" status="row" var="element">
								<tr>
									<td align="center"><s:property value="#row.index + 1" /></td>
									<td align="left">
										<s:property value="#element.nhomMa" />
									</td>
									<td align="left">
										<s:property value="#element.nhomTen" />
									</td>
									<td align="center">
										<s:property value="#element.nhomCha.nhomTen" />
									</td>
									<td align="center">
										<s:if test="#element.locked == 0">Đang hoạt động</s:if>
										<s:elseif test="#element.locked == 1">Đã khoá</s:elseif>
									</td>
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
							</tbody>
							
						</table>
						</div>		
			</div>

		</div>
	</div>
	
	<div class="Hidden">
		<div id="PopupThongTinNhomTaiKhoanID" class="StatusPopup01">
			<div class="col_right" style="border-style: none; width: 100%; border-color: white;">
				<h4 style="margin-bottom: 0px;">Thông tin nhóm tài khoản</h4>
				<div id="FormNhomTaiKhoanID">
				
				</div>
			</div>
		</div>
</div>
</div>

<input type="hidden" value="Mã nhóm tài khoản đã tồn tại. Xin vui lòng chọn mã khác." id="ErrorMaNhomTonTaiID"/>
<input type="hidden" value="Tên nhóm tài khoản đã tồn tại. Xin vui lòng chọn tên khác." id="ErrorTenNhomTonTaiID"/>
<input type="hidden" value="Nhóm tài khoản đang được sử dụng. Không thể xoá." id="ErrorNhomDangSuDungID"/>