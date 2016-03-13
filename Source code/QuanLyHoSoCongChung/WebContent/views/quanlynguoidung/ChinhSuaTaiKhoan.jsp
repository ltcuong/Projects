<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<script type="text/javascript"
	src="../js/quanlynguoidung/chinhsuataikhoan.js"></script>
<div class="col_right">
	<div class="achor_link">
		<img src="../images/Home.png" height="16px;" width="16px;" /> Quản lý
		người dùng <img src="../images/Next.png" /> Chinh sửa tài khoản
	</div>
	<div class="box-content">

		<div>
			<div id="dvMain" style="width: 100%">
				<form id="thongTinHoSoForm" method="get" action="" autocomplete="off">
					<fieldset>
						<table class="form" border="0" cellpadding="0" cellspacing="5"
							width="100%">
							<tbody>
								<tr>
									<td style="text-align: right; color: Blue; width: 15%;">Tên
										đăng nhập</td>
									<td width="35%"><input id="TenDangNhapID" value='<s:property value="taiKhoan.tenDangNhap"/>'
										name="tenDangNhap" class="w-200" type="text" maxlength="128"
										required  disabled="disabled"/></td>
									<td style="text-align: right; width: 15%;">Email</td>
									<td width="35%"><input name="email" id="EmailID" value='<s:property value="taiKhoan.email"/>'
										class="w-200" type="text" maxlength="100" /></td>
								</tr>
								<tr>
									<td style="text-align: right; color: Blue">Mật khẩu</td>
									<td><input name="matKhau" id="MatKhauID" class="w-200" value='******'
										type="password" maxlength="128" required disabled="disabled"/></td>
									<td style="text-align: right">Số điện thoại</td>
									<td><input name="soDienThoai" id="SoDienThoaiID" value=''
										class="w-200" type="text" maxlength="20" /></td>
								</tr>
								<tr>
									<td style="text-align: right; color: Blue">Lặp lại mật
										khẩu</td>
									<td><input id="MatKhauConfirmID" name="matKhauConfirm"  value='******'
										class="w-200" type="password" maxlength="128" required  disabled="disabled"/></td>
									<td style="text-align: right">Địa chỉ liên lạc</td>
									<td><input name="diaChi" id="DiaChiID" value='<s:property value="taiKhoan.diaChi"/>'
										class="w-200" type="text" maxlength="500" /></td>
								</tr>
								<tr>
									<td style="text-align: right; color: Blue">Họ tên</td>
									<td><input name="hoTen" id="HoTenID" value='<s:property value="taiKhoan.hoTen"/>'
										class="w-200" type="text" required /></td>
									<td style="text-align: right; color: Blue;">Nhóm tài khoản</td>
									<td><select id="NhomID" class="w-200" name="nhomID">
											<option value="0">--Chọn nhóm--</option>
											<s:iterator value="listNhomTaiKhoan" var="element">
												<option value='<s:property value="#element.nhomID"/>' <s:if test="#element.nhomID == taiKhoan.nhomID"> selected="selected"</s:if>>
													<s:property value="nhomTen" />
												</option>
											</s:iterator>
									</select></td>
								</tr>
								<tr>
									<td style="text-align: right;">Chức vụ</td>
									<td><input id="ChucVuID" value='<s:property value="taiKhoan.chucVu"/>' name="chucVu"
										class="w-200" type="text" maxlength="100" /></td>
									<td style="text-align: right">Đơn vị công tác</td>
									<td><input name="donViCongTac" id="DonViCongTacID"
										value='<s:property value="taiKhoan.donViCongTac"/>' class="w-200" type="text" maxlength="200" /></td>
								</tr>
								<tr>
									<td style="text-align: right;"><input  type="checkbox" id="CBDoiMatKhauID" onclick="changeMatKhauTaiKhoan()"></td>
									<td align="left"><strong>Đổi mật khẩu</strong></td>
								</tr>
							</tbody>
						</table>
					</fieldset>
				</form>
				<p>
					<strong>Chọn danh sách địa bàn quản lý</strong>
				</p>
				<table style="width: 100%">
					<tbody>
						<tr>
							<td width="40%" valign="top">
								<table rules="all" id="" style="border-collapse: collapse; width: 100%" border="1" cellspacing="0" >
											<thead>
												<tr style="background-color: White;">
													<th style="color: White; background-color: Green;" scope="col" width="80%">Tên huyện</th>
													<th style="color: White; background-color: Green;" scope="col" width="20%">Chọn</th>
												</tr>
											</thead>
											<tbody id="ListHuyenID">
												<s:iterator value="listHuyen" var="element">
												<tr>
													<td align="left">
														<s:property value="#element.huyenTen"/>
													</td>
													<td align="center"><span style="color: White"> 
													<input type="checkbox" value='<s:property value="#element.huyenID"/>' name="cbHuyen"
													 class="CBHuyenChoose" id="cbHuyen_<s:property value="#element.huyenID"/>">
													</span></td>
												</tr>
												</s:iterator>
											</tbody>
										</table>
							</td>
							<td  width="60%" valign="top">
								<table style="border-collapse: collapse; width: 100%" border="0" cellspacing="0">
											<thead>
												<tr style="background-color: White;">
													<th style="color: White; background-color: Green;" scope="col" width="200px">Tên xã</th>
													<th style="color: White; background-color: Green;" scope="col" width="200px">Tên huyện</th>
													<th align="left" style="color: White; background-color: Green;" scope="col" width="70px">
														<input type="checkbox" onclick="checkAllXa();" name="" id="CheckAllID"> <label for="">Tất cả</label>
													</th>
												</tr>
											</thead>
											<tbody id="ListXaID">

											</tbody>
										</table>
							</td>
						</tr>
					</tbody>
				</table>

				<div align="center" style="margin-top: 20px;">
					<s:if test="isAdd == 1">
					<input name="" value="Cập nhật" id="BtnCapNhatTaiKhoanID" class="btn_over" type="button" />
						</s:if>
				</div>
			</div>
		</div>
	</div>
</div>
<s:hidden id="HiddenPageID" value="1" />
<input type="hidden" value="Tên tài khoản đã tồn tại. Xin vui lòng chọn tên khác." id="TaiKhoanTonTaiError01" />
<input type="hidden" value="Xin vui lòng chọn ít nhất một xã quản lý." id="TextID01" />
<input type="hidden" value="Xin vui lòng nhập email đúng định dạng" id="TextID02"/>
<input type="hidden" value="Tài khoản đã được sử dụng trong hệ thống. Không thể xoá." id="TextID03"/>

<input type="hidden" id="ListHuyenChooseID" value="<s:property value='listHuyenQuanLy'/>"/>
<input type="hidden" id="ListXaChooseID" value="<s:property value='listXaQuanLy'/>"/>
<input type="hidden" id="AllXaHiddenID" value="<s:property value='allXa'/>"/>
