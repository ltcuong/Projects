<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<script type="text/javascript" src="../js/quanlynguoidung/hosocanhan.js"></script>
<div class="col_right">
	<div class="achor_link"><img src="../images/Home.png" height="16px;" width="16px;"/>  Quản lý người dùng <img src="../images/Next.png"/> Hồ sơ cá
		nhân</div>	
	<div class="box-content">
		<div>
			<div style="width: 100%" id="dvMain">
				<form id="thongTinCoBanForm" method="post" action=""  autocomplete="off">
				<fieldset>
				<table width="100%" cellspacing="5" cellpadding="0" border="0"
					class="form">
					<tbody>
						<tr>
							<td style="width: 15%; text-align: right; color: Blue">Tên đăng nhập</td>
							<td width="25%"><input type="text" value='<s:property value="taikhoan.tenDangNhap"/>' name="tenDangNhap" disabled="disabled" class="w-200" maxlength="128" required/></td>
							<td width="25%">&nbsp;</td>
							<td width="25%">&nbsp;</td>
						</tr>
						<tr>
							<td style="width: 15%; text-align: right; color: Blue">Họ tên</td>
							<td width="25%"><input type="text" value='<s:property value="taikhoan.hoTen"/>' name="hoTen" class="w-200" id="taikhoan_hotenID" maxlength="255" maxlength="4" required/></td>
							<td width="25%">&nbsp;</td>
							<td width="25%">&nbsp;</td>
						</tr>
						<tr>
							<td style="width: 15%; text-align: right; color: Blue">Chức vụ</td>
							<td width="25%"><input type="text" value='<s:property value="taikhoan.chucVu"/>' name="chucVu" class="w-200" id="taikhoan_chucvuID" maxlength="100" required/></td>
							<td width="25%">&nbsp;</td>
							<td width="25%">&nbsp;</td>
						</tr>
						<tr>
							<td style="width: 15%; text-align: right; color: Blue">Đơn vị</td>
							<td width="25%"><input type="text" value='<s:property value="taikhoan.donViCongTac"/>' name="donViCongTac" class="w-200" id="taikhoan_donviID" maxlength="200" required/></td>
							<td width="25%">&nbsp;</td>
							<td width="25%">&nbsp;</td>
						</tr>
						
						<tr>
							<td style="width: 15%; text-align: right">Số điện thoại</td>
							<td width="25%"><input type="text" value='<s:property value="taikhoan.soDienThoai"/>' name="soDienThoai" class="w-200"
								id="taikhoan_sdtID" maxlength="20"/></td>
							<td width="25%">&nbsp;</td>
							<td width="25%">&nbsp;</td>
						</tr>
						<tr>
							<td style="width: 15%; text-align: right">Email</td>
							<td width="25%"><input type="text" value='<s:property value="taikhoan.email"/>' class="w-200" name="email" id="taikhoan_emailID" maxlength="100"/></td>
							<td width="25%">&nbsp;</td>
							<td width="25%">&nbsp;</td>
						</tr>
						<tr>
							<td style="width: 15%; text-align: right">Địa chỉ liên lạc</td>
							<td width="25%"><input type="text" value='<s:property value="taikhoan.diaChi"/>' class="w-200" name="diaChi" id="taikhoan_diachiID" maxlength="500"/></td>
							<td width="25%">&nbsp;</td>
							<td width="25%">&nbsp;</td>
						</tr>
						<tr>
							<td style="width: 15%; text-align: right">Đổi mật khẩu</td>
							<td style="text-align: left; float: left"><input type="checkbox"  id="cbDoiMatKhauID"></td>
							<td width="25%">&nbsp;</td>
							<td width="25%">&nbsp;</td>
						</tr>
						<tr id="mk1" class="DisplayNone">
							<td style="width: 15%; text-align: right; color: Blue">Mật khẩu cũ</td>
							<td width="25%"><input type="password" class="w-200" id="taikhoan_matkhaucuID" name="matKhauCu" maxlength="128"/>
							</td>
							<td width="25%">&nbsp;</td>
							<td width="25%">&nbsp;</td>
						</tr>

						<tr id="mk2" class="DisplayNone">
							<td style="width: 15%; text-align: right; color: Blue">Mật khẩu mới</td>
							<td width="25%"><input type="password" class="w-200" id="taikhoan_matkhaumoiID" name="matKhauMoi"  maxlength="128"/>
							</td>
							<td width="25%">&nbsp;</td>
							<td width="25%">&nbsp;</td>
						</tr>

						<tr id="mk3" class="DisplayNone">
							<td style="width: 15%; text-align: right; color: Blue">Lặp lại mật khẩu</td>
							<td width="25%"><input type="password" class="w-200" id="taikhoan_laplaimkID" name="lapLaiMatKhau"  maxlength="128"/>
							</td>
							<td width="25%">&nbsp;</td>
							<td width="25%">&nbsp;</td>
						</tr>

						<tr>
							<td></td>
							<td style="text-align: justify" colspan="3"><s:if
									test="isEdit == 1">
									<input type="submit" class="btn_over" id="btnCapNhatID" value="Cập nhật"/>
								</s:if></td>
						</tr>
					</tbody>
				</table>
				</fieldset>
				</form>
			</div>

		</div>
	</div>
</div>

<input type="hidden" value="Mật khẩu cũ không đúng. Xin vui lòng nhập lại" id="TextID01"/>
<input type="hidden" value="Xin vui lòng nhập email đúng định dạng" id="TextID02"/>
<input type="hidden" value="Xác nhận mật khẩu không trùng khớp." id="TextID03"/>
<input type="hidden" value="Mật khẩu có ít nhất 6 ký tự." id="TextID04"/>
