<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<script type="text/javascript" src="../js/quanlynguoidung/nhatkynguoidung.js"></script>

<div class="col_right">
	<div class="box-content">
		<div class="col_right">
				<div class="achor_link"><img src="../images/Home.png" height="16px;" width="16px;"/> Quản lý người dùng <img src="../images/Next.png"/> Nhật ký
					người dùng</div>
				<div class="box-content">
					<div id="dvMain">
						<div id="main">
							<div id="form">
								<table class="form" border="0" cellpadding="0" cellspacing="5"
									width="100%">
									<tbody>
										<tr>
											<td style="width: 15%; text-align: right;">Từ ngày</td>
											<td width="25%"><input id="dtTuNgayID" class="w-200" type="text" value=''/></td>
											<td style="width: 15%; text-align: right;">Đến ngày</td>
											<td width="25%"><input id="dtDenNgayID" class="w-200" type="text" value=''/></td>
										</tr>
										<tr>
											<td style="width: 15%; text-align: right;">Nhóm người dùng</td>
											<td width="25%"><select id="nhomNguoiDungID" class="w-200" onchange="getSelectTaiKhoan()">
													<option value="0">--Chọn nhóm--</option>
													<s:iterator value="listNhomTaiKhoan">
													<option value='<s:property value="nhomID"/>'><s:property value="nhomTen"/></option>
													</s:iterator>
																										
											</select></td>
											<td style="width: 15%; text-align: right;">Chọn người dùng</td>
											<td width="25%">
											<select id ="nguoiDungID" class="w-200">
													<option value="">--Chọn --</option>																									
											</select></td>
										</tr>
										<tr>
											<td style="width: 15%; text-align: right;">Trang làm việc</td>
											<td width="25%"><select id="formChucNangID" class="w-200">
													<option value="">--Chọn--</option>
													<s:iterator value="listFunctionPhanQuyen">
													<option value='<s:property value="funcID"/>'><s:property value="funcTen"/></option>
													</s:iterator>
																										
											</select></td>
											<td style="width: 15%; text-align: right;">Nội dung</td>
											<td width="25%"><select id="noiDungID" class="w-200">
													<option value="">--Chọn--</option>
													<option value='View'>Xem</option>
													<option value='Add'>Thêm</option>
													<option value='Edit'>Chỉnh sửa</option>
													<option value='Update'>Cập nhật</option>
													<option value='Delete'>Xoá</option>
											</select></td>
										</tr>
										<tr>
											<td style="width: 10%"></td>
											<td style="text-align: left"><input value="Tìm kiếm" id="btnSearch" class="btn_over" type="submit"/> 
											<input value="Nhập lại" id="btnNhapMoi" class="btn_over" type="submit" /></td>
											<td style="text-align: left"></td>
											<td style="width: 25%"></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div id="tblNhatKyID"></div>
						</div>
					</div>
					<div id="listChinhSuaNguoiDungID"></div>
				</div>
			</div>
	</div>
</div>