<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<script type="text/javascript" src="../js/quanlynguoidung/danhsachtaikhoan.js"></script>
<div class="col_right">
	<div class="achor_link">
		<img src="../images/Home.png" height="16px;" width="16px;" /> Quản lý người dùng <img src="../images/Next.png" /> Danh sách tài khoản
	</div>
	<div class="box-content">

		<div>
			<div id="dvMain" style="width: 100%">
				<table class="form" border="0" cellpadding="0" cellspacing="5" width="100%">
							<tbody>
								<tr>
									<td style="text-align: right; width: 15%;">Tên đăng nhập</td>
									<td width="35%"><input id="TenDangNhapID" value='' name="tenDangNhap" class="w-200" type="text" maxlength="128" /></td>
								</tr>
								<tr>
									<td style="text-align: right;width: 15%;">Email</td>
									<td width="35%"><input name="email" id="EmailID" value='' class="w-200" type="text" maxlength="100" /></td>
									<td style="text-align: right">Số điện thoại</td>
									<td><input name="soDienThoai" id="SoDienThoaiID" value='' class="w-200" type="text" maxlength="20"/></td>
								</tr>
								<tr>
									<td style="text-align: right">Địa chỉ liên lạc</td>
									<td><input name="diaChi" id="DiaChiID" value='' class="w-200" type="text" maxlength="500"/></td>
									<td style="text-align: right;;">Tình trạng</td>
									<td><select id="LockedID" class="w-200" name="locked">
											<option value="-1">--Chọn--</option>
											<option value="0">Đang hoạt động</option>
											<option value="1">Đã khoá</option>
									</select></td>
								</tr>
								<tr>
									<td style="text-align: right; ">Họ tên</td>
									<td><input name="hoTen" id="HoTenID" value='' class="w-200" type="text"  /></td>
									<td style="text-align: right;;">Nhóm tài khoản</td>
									<td><select id="NhomID" class="w-200" name="nhomID">
											<option value="0">--Chọn nhóm--</option>
											<s:iterator value="listNhomTaiKhoan" var="element">
												<option value='<s:property value="#element.nhomID"/>'>
													<s:property value="nhomTen" />
												</option>
											</s:iterator>
									</select></td>
								</tr>
								<tr>
									<td style="text-align: right;">Chức vụ</td>
									<td><input id="ChucVuID" value='' name="chucVu" class="w-200" type="text" maxlength="100"/></td>
									<td style="text-align: right">Đơn vị công tác</td>
									<td><input name="donViCongTac" id="DonViCongTacID" value='' class="w-200" type="text" maxlength="200" />
									</td>
								</tr>
								<tr>
									<td style="text-align: center;" colspan="4">
										<input name="" value="Tìm kiếm" id="BtnEdit" class="btn_over" type="button" onclick="getListDanhSachTaiKhoan(1)"/>
										<input name="" value="Nhập lại" onclick="nhapLaiThongTinTaiKhoan();" class="btn_over" type="button">
										
									</td>
								</tr>

							</tbody>
						</table>
			</div>
		</div>
	</div>
	<div id="DanhSachTaiKhoanID">
	<table rules="all" class="table01" id="#" style="border-collapse: collapse; margin-top: 10px;" border="0" cellspacing="0">
	<tr>
			<td style="color: White; background-color: Green;" colspan="7"><label><strong>Danh sách tài khoản</strong></label></td>
	</tr>
	<tbody>
		<tr style="background-color: White;">
			<th scope="col" style="color: White; background-color: Green; width: 50px;">STT</th>
			<th scope="col" style="color: White; background-color: Green; width: 200px;">Tài khoản đăng nhập</th>
			<th scope="col" style="color: White; background-color: Green; width: 200px;">Họ tên</th>
			<th scope="col" style="color: White; background-color: Green; width: 180px;">Nhóm tài khoản</th>
			<th scope="col" style="color: White; background-color: Green; width: 100px;">Tình trạng</th>
			<th scope="col" style="color: White; background-color: Green; width: 150px;">Thời gian tạo</th>
			<th scope="col" style="color: White; background-color: Green;">&nbsp;</th>
		</tr>
		<s:iterator value="listTaiKhoan" status="row" var="element">
		<tr>
			<td align="center"><s:property value="#row.index + ((page - 1) * rowinpage) + 1"/> </td>
			<td><s:property value="tenDangNhap" /></td>
			<td><s:property value="hoTen" /></td>
			<td><s:property value="nhomTaiKhoan.nhomTen" /></td>
			<td><s:if test="locked == 0">Đang hoạt động</s:if><s:elseif test="locked == 1">Đã khoá</s:elseif></td>
			<td><s:date name="ngayCapNhat" format="dd/MM/yyyy hh:mm:ss"/></td>
			<td align="center">
			<s:if test="tenDangNhap != 'admin'">
			<s:if test="isEdit == 1">
			<a href="../quanlynguoidung/ChinhSuaTaiKhoan?tenDangNhap=<s:property value="tenDangNhap"/>" style="color:blue;text-decoration: underline;">Chỉnh sửa</a>
			| <a href="javascript:void(0);" onclick="thayDoiTinhTrangTaiKhoan('<s:property value="tenDangNhap"/>')" style="color:blue;text-decoration: underline;"><s:if test="locked == 0">Khoá</s:if><s:elseif test="locked == 1">Mở khoá</s:elseif></a>
			|&nbsp; </s:if><s:if test="isDelete == 1"><a href="javascript:void(0);" onclick="xoaThongTinTaiKhoan('<s:property value="tenDangNhap"/>')" style="color:blue;text-decoration: underline;">Xoá</a></s:if>
				</s:if>
			</td>
		</tr>
		</s:iterator>
		<tr>
		<td colspan="7" style="text-align: left;"><strong >Tổng số tài khoản: <s:property value="totalRecord"/> </strong></td>
		</tr>
		<s:if test="totalPage > 0">
			<tr>
				<td colspan="7"><table border="0" style="width: 100%">
						<tbody>
							<tr>
								<s:if test="page - 1 > 0">
									<td><a href="javascript:void(0)" 
										onclick="getListDanhSachTaiKhoan('1');">&laquo;</a></td>
									<td><a href="javascript:void(0)" 
										onclick="getListDanhSachTaiKhoan('<s:property value="page -1"/>');">&lt;</a></td>
								</s:if>
								<s:iterator begin="page" end="endPage" var="navi">
									<s:if test="#navi == page">
										<td><s:property /></td>
									</s:if>
									<s:else>
										<td><a href="javascript:void(0);"
											onclick="getListDanhSachTaiKhoan('<s:property/>');"
											title="<s:property/>"><s:property /></a></td>
									</s:else>
								</s:iterator>
								<s:if test="totalPage > endPage">
									<td><a href="javascript:void(0)"
										onclick="getListDanhSachTaiKhoan('<s:property value="page + 1"/>');">&gt;</a></td>
										<td><a href="javascript:void(0)" 
										onclick="getListDanhSachTaiKhoan('<s:property value="endPage"/>');">&raquo;</a></td>
								</s:if>
								
							</tr>
						</tbody>
					</table></td>
			</tr>
		</s:if>			
	</tbody>
</table>
	</div>
<div class="Hidden">
<div id="PopupThongTinTaiKhoanID" class="StatusPopup01">
	<div class="col_right" style="border-style: none; width: 100%; border-color: white;">
		<h4 style="margin-bottom: 0px;">Thông tin tài khoản</h4>
		<div id="FormTaiKhoanID">
		
		</div>
	</div>
</div>
</div>
</div>
<s:hidden id="HiddenPageID" value="1" />
	<input type="hidden" value="Tên tài khoản đã tồn tại. Xin vui lòng chọn tên khác." id="TaiKhoanTonTaiError01"/>
<input type="hidden" value="Xin vui lòng nhập email đúng định dạng" id="TextID02"/>