<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<script type="text/javascript" src="../js/quanlynguoidung/phanquyenchucnang.js"></script>
<div class="col_right">
	<div class="achor_link"><img src="../images/Home.png" height="16px;" width="16px;"/> Quản lý người dùng <img src="../images/Next.png"/> Phân quyền
		chức năng</div>
	<div class="box-content">
		<div id="dvMain">
			<div id="">
				<div>
					<table class="form" border="0" cellpadding="0" cellspacing="5"
						width="100%">
						<tbody>
							<tr>
								<td style="width: 15%; text-align: right; color: Blue">
									Chọn nhóm chức năng</td>
								<td width="25%"><select id="NhomChucNangID" class="w-200">
										<option value="users">Quản lý người dùng</option>
										<option value="chitieu">Quản lý chỉ tiêu</option>
										<option value="baocao">Quản lý báo cáo</option>
										<option value="danhmuc">Quản lý danh mục</option>
								</select></td>
								<td style="width: 15%; text-align: right"></td>
								<td width="25%"></td>
							</tr>
							<tr>
								<td style="width: 15%; text-align: right; color: Blue">
									Chọn nhóm tài khoản</td>
								<td width="25%"><select id="NhomTaiKhoanID" class="w-200">
										<s:iterator value="listNhomTaiKhoan">
											<option value='<s:property value="nhomID"/>'>
												<s:property value="nhomTen" />
											</option>
										</s:iterator>
								</select></td>
								<td style="width: 15%; text-align: right"></td>
								<td width="25%"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<br>
				<div style="width: 100%">
					<div id="DanhSachPhanQuyenID"></div>
				</div>

			</div>
		</div>
		<div style="text-align: center">
			<table style="width: 100%; float: left">
				<tbody>
					<tr>
						<td style="width: 45%"></td>
						<td style="text-align: center"><s:if test="isEdit == 1">
								<input value="Cập nhật" onclick="updateStatusPhanQuyen();"
									class="btn_over" type="button">
							</s:if></td>
						<td style="width: 45%"></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
<input type="hidden" value='<s:text name="info.text3"/>' id="InfoText1ID"/>
<input type="hidden" value='<s:text name="info.text5"/>' id="InfoText2ID"/>