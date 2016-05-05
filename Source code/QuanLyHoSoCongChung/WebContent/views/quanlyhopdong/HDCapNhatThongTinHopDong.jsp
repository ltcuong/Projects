<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<script type="text/javascript" src="../js/quanlyhopdong/capnhatthongtinduongsu.js"></script>
<script type="text/javascript" src="../js/quanlyhopdong/capnhatthongtintaisan.js"></script>
<script type="text/javascript" src="../js/quanlyhopdong/capnhatthongtinhopdongchitiet.js"></script>
<script type="text/javascript" src="../js/quanlyhopdong/capnhatthongtinhopdong.js"></script>

<div class="col_right">
	<div class="achor_link">
		<img src="../images/Home.png" height="16px;" width="16px;" /> Quản lý hợp đồng công chứng <img src="../images/Next.png" /> Cập nhật thông tin hợp đồng công chứng
	</div>
	<div class="box-content">
		<div id="dvMain" style="width: 100%">
			<form id="ThongTinFormLoaiHopDongID" method="get" action="" autocomplete="off">
			<fieldset>
			<table width="100%" cellspacing="5" cellpadding="5" border="0"
				class="form">
				<tbody>
					<tr>
						<td>
							<p style="color: #e60200;">
								<strong>Thông tin hợp đồng</strong>
							</p>
						</td>
					</tr>
					<tr>
						<td style="text-align: right; width: 15%; color: blue;">Loại hợp đồng</td>
						<td style="width: 30%;"><select name="loaiHopDong" id="LoaiHopDongID" onchange="getLoaiHopDongChiTiet()">
							<option value="0">--- Chọn ---</option>
							<s:iterator value="listLoaiHopDong" var="element">
							<option value='<s:property value="#element.loaiHopDongID"/>'><s:property value="#element.loaiHopDongTen"/></option>
							</s:iterator>
						</select></td>
						<td style="text-align: right; width: 15%; color: blue;">&nbsp;</td>
						<td style="width: 30%">&nbsp;</td>
					</tr>
					<tr>
						<td style="text-align: right; width: 15%; color: blue;">Chi tiết loại hợp đồng</td>
						<td style="width: 30%" colspan="3"><select id="ChiTietLoaiHopDongID" name="chiTietLoaiHopDong" onchange="getLoaiTaiSanByLoaiHopDongChiTietID()">
								<option value="0">--- Chọn ---</option>
						</select></td>
					</tr>
					<tr>
						<td style="text-align: right;">Là hợp đồng soạn sẵn</td>
						<td colspan="3"><input type="checkbox" id="CBHopDongSoanSanID" /></td>
					</tr>
				</tbody>
			</table>
			</fieldset>
			</form>
			
			<div id="FormThongTinHopDongID">
			<form id="ThongTinFormLoaiDuongSuID" method="get" action="" autocomplete="off">
			<fieldset>
			<table width="100%" cellspacing="5" cellpadding="0" border="0"
					class="form">
					<tbody>
						<tr>
							<td colspan="6">
								<p style="color: #e60200;">
									<strong>Thông tin bên A</strong>
								</p>
							</td>
						</tr>
						<tr>
							<td style="text-align: right; width: 15%">Chọn loại đương sự</td>
							<td colspan="2" style="text-align: right; width: 30%">
							<select name="loaiDuongSu" id="LoaiDuongSuID" onchange="changeLoaiDuongSu()">
									<option value="1">Cá nhân</option>
									<option value="2">Tổ chức/ngân hàng</option>
							</select></td>
							<td style="text-align: right; width: 15%">&nbsp;</td>
							<td colspan="2" style="text-align: right; width: 30%">&nbsp;</td>
						</tr>
					</tbody>
				</table>
				</fieldset>
				</form>
				<form id="ThongTinFormDuongSuCaNhanID" method="get" action="" autocomplete="off">
				<fieldset>
				<table id="FormCaNhanID" width="100%" cellspacing="5" cellpadding="0" border="0" class="form">
					<tbody>
						<tr>
							<td style="text-align: right; color: blue; width: 15%">Tên đương sự</td>
							<td colspan="2" style="width: 30%"><input type="text"
								class="w-300" id="TenDuongSuID" name="tenDuongSu" value="Nguyen Van A" required maxlength="255"></td>
							<td style="text-align: right; width: 15% ;color: blue; ">Ngày sinh</td>
							<td colspan="2" style="width: 30%; text-align: left;">
							<input type="text" style="width: 230px;" class="w-300" id="NgaySinhID" name="ngaySinhCaNhan" value="1/1/1989" required maxlength="10"> 
							(<input type="checkbox" id="CBNamSinhCaNhanID" onclick="chiHienNamSinhCaNhan()"/> Năm sinh)</td>
						</tr>
						<tr>
							<td style="text-align: right; color: blue;">Loại giấy tờ</td>
							<td colspan="2"><select name="loaiGiayToCaNhan" id="LoaiGiayToCaNhanID">
									<option value="0">--- Chọn ---</option>
									<s:iterator value="listLoaiGiayTo" var="element">
									<option value='<s:property value="#element.loaiGiayToID"/>'><s:property value="#element.loaiGiayToTen"/></option>
									</s:iterator>
							</select></td>
							<td style="text-align: right; color: blue;">Số giấy tờ</td>
							<td colspan="2"><input type="text" class="w-300" id="SoGiayToCaNhanID" name="soGiayToCaNhan" value="123123123" required maxlength="20"></td>
						</tr>
						<tr>
							<td style="text-align: right; color: blue;">Ngày cấp</td>
							<td colspan="2"><input type="text" class="w-300" id="NgayCapCaNhanID" name="ngayCapCaNhan" value="1/1/1989" required maxlength="10"></td>
							<td style="text-align: right; color: blue;">Nơi cấp</td>
							<td colspan="2"><input type="text" class="w-300" id="NoiCapGiayToCaNhanID" name="noiCapGiayToCaNhan" value="Ho Chi Minh" required maxlength="200"></td>
						</tr>
						<tr>
							<td style="text-align: right; color: blue;">Tỉnh/thành thường trú</td>
							<td colspan="2"><select name="tinhThanhCaNhan" id="TinhThanhCaNhanID" onchange="getSelectHuyenByTinhID()">
									<option value="0">--- Chọn ---</option>
									<s:iterator value="listTinh" var="element">
									<option value='<s:property value="#element.tinhID"/>'><s:property value="#element.tinhTen"/></option>
									</s:iterator>
							</select></td>
							<td style="text-align: right; color: blue;">Quận/huyện thường trú</td>
							<td colspan="2"><select name="quanHuyenCaNhan" id="QuanHuyenCaNhanID" onchange="getSelectXaByHuyenID()">
									<option value="0">--- Chọn ---</option>
							</select></td>
						</tr>
						<tr>
							<td style="text-align: right; color: blue;">Phường/xã thường trú</td>
							<td colspan="2"><select name="phuongXaCaNhan" id="PhuongXaCaNhanID">
									<option value="0">--- Chọn ---</option>
							</select></td>
							<td style="text-align: right;">Số nhà/đường phố</td>
							<td colspan="2"><input type="text" class="w-300"
								id="SoNhaDuongPhoCaNhanID" name="soNhaDuongPhoCaNhan" value="39 Nguyen Thai Hoc" maxlength="200"></td>
						</tr>
						<tr>
							<td style="text-align: right;">Địa chỉ liên hệ</td>
							<td colspan="4"><input type="text" class="w-700"
								id="DiaChiLienHeCaNhanID" name="diaChiLienHeCaNhan" value="To 3 Phuong Quang Trung Quy Nhon" maxlength="255"></td>
						</tr>

					</tbody>
				</table>
				</fieldset>
				</form>
				<form id="ThongTinFormDuongSuToChucID" method="get" action="" autocomplete="off">
				<fieldset>
				<table  id="FormToChucID"  width="100%" cellspacing="5" cellpadding="0" border="0" class="DisplayNone">
					<tbody>
						<tr>
							<td style="text-align: right; color: blue; width: 15%;">Tên tổ chức</td>
							<td colspan="2" style="width: 30%"><input type="text" class="w-300" id="TenToChucID" name="tenToChuc" value="" required maxlength="200"/>
							</td>
							<td style="text-align: right; color: blue; width: 15%;">&nbsp;</td>
							<td colspan="2"  style="width: 30%">&nbsp;</td>
						</tr>

						<tr>
							<td style="text-align: right; color: blue;">Địa chỉ (Tỉnh/thành)</td>
							<td colspan="2"><select name="tinhThanhToChuc" id="TinhThanhToChucID" onchange="getSelectHuyenByTinhToChucID()">
									<option value="0">--- Chọn ---</option>
									<s:iterator value="listTinh" var="element">
									<option value='<s:property value="#element.tinhID"/>'><s:property value="#element.tinhTen"/></option>
									</s:iterator>
							</select></td>
							<td  style="text-align: right; color: blue;">Quận/huyện</td>
							<td colspan="2"><select name="quanHuyenToChuc" id="QuanHuyenToChucID" onchange="getSelectXaByHuyenToChucID()">
									<option value="0">--- Chọn ---</option>
							</select></td>
						</tr>
						<tr>
							<td style="text-align: right; color: blue;">Phường/xã</td>
							<td colspan="2"><select name="phuongXaToChuc" id="PhuongXaToChucID">
									<option value="0">--- Chọn ---</option>
							</select></td>
							<td style="text-align: right;">Số nhà/đường phố</td>
							<td colspan="2"><input type="text"
								class="w-300" id="SoNhaDuongPhoToChucID" name="soNhaDuongPhoToChuc"
								value="" maxlength="200"></td>
						</tr>
						<tr>
							<td style="text-align: right; color: blue;">Giấy phép ĐKKD số</td>
							<td colspan="2"><input type="text" class="w-300" id="GiayPhepDKKDID" name="giayPhepDKKD" value="" required maxlength="50"/></td>
							<td style="text-align: right; color: blue;">Ngày cấp giấy phép ĐKKD</td>
							<td colspan="2"><input type="text" class="w-300"
								id="NgayGiayDKKDID" name="ngayGiayDKKD" value="" required maxlength="10"></td>
						</tr>
						<tr>
							<td style="text-align: right; color: blue;">Nơi cấp giấy phép ĐKKD</td>
							<td colspan="2"><input type="text" class="w-300"
								id="NoiCapGiayDKKD" name="noiCapGiayDKKD" value="" required maxlength="200"/></td>
							<td style="text-align: right;">Số điện thoại</td>
							<td colspan="2"><input type="text" class="w-300" id="SoDienThoaiToChucID" name="soDienThoaiToChuc" value="" maxlength="20"/></td>
						</tr>
						<tr>
							<td style="text-align: right; color: blue;">Họ tên người đại diện</td>
							<td colspan="2"><input type="text" class="w-300"
								id="NguoiDaiDienToChucID" name="nguoiDaiDienToChuc" value="" required maxlength="255" /></td>
							<td  style="text-align: right; color: blue;">Ngày sinh người đại diện</td>
							<td colspan="2" align="left"><input type="text" class="w-300" style="width: 230px;" maxlength="10" id="NgaySinhNguoiDaiDienToChucID" name="ngaySinhNguoiDaiDienToChuc" value="" required />
							(<input type="checkbox" id="CBNamSinhToChucID" onclick="chiHienNamSinhToChuc()"/> Năm sinh)</td>
						</tr>
						<tr>
							<td  style="text-align: right; color: blue;">Loại giấy tờ người đại diện</td>
							<td colspan="2"><select name="loaiGiayToToChuc" id="LoaiGiayToNguoiDaiDienToChucID">
									<option value="0">--- Chọn ---</option>
									<s:iterator value="listLoaiGiayTo" var="element">
									<option value='<s:property value="#element.loaiGiayToID"/>'><s:property value="#element.loaiGiayToTen"/></option>
									</s:iterator>
							</select></td>
							<td  style="text-align: right; color: blue;">Số giấy tờ người đại diện</td>
							<td colspan="2"><input type="text" class="w-300"
								id="SoGiayToNguoiDaiDienToChucID" name="soGiayToNguoiDaiDienToChuc" value="" required maxlength="20" />
							</td>
						</tr>
						<tr>
							<td style="text-align: right; color: blue;">Chức vụ người đại diện</td>
							<td colspan="2"><input type="text" class="w-300"
								id="ChucVuNguoiDaiDienToChucID" name="chucVuNguoiDaiDienToChuc" value="" required maxlength="200"/></td>
						</tr>
						<tr>
							<td  style="text-align: right; color: blue;">Theo giấy uỷ quyền số</td>
							<td colspan="2"><input type="text" class="w-300" id="GiayUyQuyenID" name="giayUyQuyen" value="" required maxlength="200"/></td>
							<td style="text-align: right; color: blue;">Ngày cấp giấy uỷ quyền</td>
							<td colspan="2"><input type="text" class="w-300"
								id="NgayCapGiayUyQuyenID" name="ngayCapGiayUyQuyen" value="" required maxlength="10"/>
							</td>
						</tr>
					</tbody>
				</table>
				</fieldset>
				</form>
				<div>
					<a href="#" onclick="showPopUpDivWithSize('Popup02ID', 795, 600); ">&nbsp; <img src="../images/themedefault/user.ico" style=" width: 30px;"/><strong>Tìm đương sự đã tồn tại</strong></a>
				</div>
				<p style="margin: 10px 0;">&nbsp;&nbsp;<input type="checkbox" id="CBNguoiDiCongChungLaUyQuyenID" onclick="showFormNguoiDiCongChungLaUyQuyen()"/>&nbsp;&nbsp;&nbsp; <strong>Người đi công chứng là người uỷ quyền</strong></p>
				<div id="WarpThongTinNguoiUyQuyenID" class="DisplayNone">
				<form id="ThongTinFormNguoiUyQuyenID" method="get" action="" autocomplete="off">
				<fieldset>
				<table width="100%" cellspacing="5" cellpadding="0" border="0" class="form">
					<tbody>
						<tr>
							<td colspan="4">
								<p style="color: #e60200;">
									<strong>Thông tin người uỷ quyền bên A</strong>
								</p>
							</td>
						</tr>
						<tr>
							<td style="text-align: right; color: blue; width: 15%">Họ và tên</td>
							<td colspan="2" style="width: 30%"><input type="text"
								class="w-300" id="TenNguoiUyQuyenID" name="tenNguoiUyQuyen" value="" required maxlength="255"></td>
							<td style="text-align: right; width: 15% ;color: blue; ">Ngày sinh</td>
							<td colspan="2" style="width: 30%; text-align: left;"><input type="text" style="width: 230px;" class="w-300" id="NgaySinhNguoiUyQuyenID" name="ngaySinhNguoiUyQuyen" value="" required maxlength="10"> 
							(<input type="checkbox" id="CBNamSinhNguoiUyQuyenID" onclick="chiHienNamSinhNguoiUyQuyen()"/> Năm sinh)</td>
						</tr>
						<tr>
							<td style="text-align: right; color: blue;">Loại giấy tờ</td>
							<td colspan="2"><select name="loaiGiayToNguoiUyQuyen" id="LoaiGiayToNguoiUyQuyenID">
									<option value="0">--- Chọn ---</option>
									<s:iterator value="listLoaiGiayTo" var="element">
									<option value='<s:property value="#element.loaiGiayToID"/>'><s:property value="#element.loaiGiayToTen"/></option>
									</s:iterator>
							</select></td>
							<td style="text-align: right; color: blue;">Số giấy tờ</td>
							<td colspan="2"><input type="text" class="w-300" id="SoGiayToNguoiUyQuyenID" name="soGiayToNguoiUyQuyen" value="" required maxlength="20"></td>
						</tr>
						<tr>
							<td style="text-align: right; color: blue;">Ngày cấp</td>
							<td colspan="2"><input type="text" class="w-300" id="NgayCapNguoiUyQuyenID" name="ngayCapNguoiUyQuyen" value="" required maxlength="10"></td>
							<td style="text-align: right; color: blue;">Nơi cấp</td>
							<td colspan="2"><input type="text" class="w-300" id="NoiCapGiayToNguoiUyQuyenID" name="noiCapGiayToNguoiUyQuyen" value="" required maxlength="200"></td>
						</tr>
						<tr>
							<td style="text-align: right; color: blue;">Tỉnh/thành thường trú</td>
							<td colspan="2"><select name="tinhThanhNguoiUyQuyen" id="TinhThanhNguoiUyQuyenID" onchange="getSelectHuyenByTinhNguoiUyQuyenID()">
									<option value="0">--- Chọn ---</option>
									<s:iterator value="listTinh" var="element">
									<option value='<s:property value="#element.tinhID"/>'><s:property value="#element.tinhTen"/></option>
									</s:iterator>
							</select></td>
							<td style="text-align: right; color: blue;">Quận/huyện thường trú</td>
							<td colspan="2"><select name="quanHuyenNguoiUyQuyen" id="QuanHuyenNguoiUyQuyenID" onchange="getSelectXaByHuyenNguoiUyQuyenID()">
									<option value="0">--- Chọn ---</option>
							</select></td>
						</tr>
						<tr>
							<td style="text-align: right; color: blue;">Phường/xã thường trú</td>
							<td colspan="2"><select name="phuongXaNguoiUyQuyen" id="PhuongXaNguoiUyQuyenID">
									<option value="0">--- Chọn ---</option>
							</select></td>
							<td style="text-align: right;">Số nhà/đường phố</td>
							<td colspan="2"><input type="text" class="w-300"
								id="SoNhaDuongPhoNguoiUyQuyenID" name="soNhaDuongPhoNguoiUyQuyen" value="" maxlength="200"></td>
						</tr>
						<tr>
							<td style="text-align: right;">Địa chỉ liên hệ</td>
							<td colspan="4"><input type="text" class="w-700"
								id="DiaChiLienHeNguoiUyQuyenID" name="diaChiLienHeNguoiUyQuyen" value="" maxlength="255"></td>
						</tr>
					</tbody>
				</table>
				</fieldset>
				</form>
				<div>
					<a href="#" onclick="showPopUpDivWithSize('Popup02ID', 795, 600); ">&nbsp; <img src="../images/themedefault/user.ico" style=" width: 30px;
					"/><strong>Tìm đương sự đã tồn tại</strong></a>
				</div>
				</div>
			</div>
			<div id="ThongTinBuoc2ID" class="DisplayNone">
			<div id="FormThongTinTaiSanID" >
				<table width="100%" cellspacing="5" cellpadding="5" border="0" class="form">
					<tbody>
						<tr>
							<td>
								<p style="color: #e60200;">
									<strong>Thông tin tài sản</strong>
								</p>
							</td>
						</tr>
						<tr>
							<td style="text-align: right; color: blue;">&nbsp;</td>
							<td><a onclick="showPopUpDivWithSize('Popup03ID', 795, 600); " href="javascript:void(0);">Tìm tài sản đã tồn tại</a>
							<a onclick="showPopupThemMoiTaiSanDuongSu(); " href="javascript:void(0);">Thêm mới tài sản</a></td>
						</tr>
					</tbody>
				</table>
				<div id="ListTaiSanTamID">
				
				</div>
			</div>
			</div>
			
			<div id="FormThongTinDongSoHuuTaiSanID" class="DisplayNone">
				<table width="100%" cellspacing="5" cellpadding="5" border="0" class="form">
					<tbody>
						<tr>
							<td>
								<p style="color: #e60200;">
									<strong>Thông tin đồng sở hữu tài sản</strong>
								</p>
							</td>
						</tr>
						<tr>
							<td style="text-align: right; color: blue;">&nbsp;</td>
							<td><a onclick="showPopUpDivWithSize('Popup03ID', 795, 600); " href="javascript:void(0);">Tìm đương sự đã tồn tại</a>
							<a onclick="showPopupThemMoiDongSoHuuTaiSan(); " href="javascript:void(0);">Thêm mới đồng sở hữu</a></td>
						</tr>
					</tbody>
				</table>
				<div id="ListDongSoHuuTaiSanTamID">
				
				</div>
			</div>
			<div id="ThongTinChiTietHopDongID" class="DisplayNone">
			
			</div>
			<div id="ThongTinPreviewHopDongID"  class="DisplayNone">
			
			</div>
			<div style="text-align: center;">
				<input type="button" class="btn_over DisplayNone" id="BtnQuayLaiID" value="Quay lại">
				<input type="button" class="btn_over" id="BtnBuocTiepID" value="Bước tiếp">
				<input type="button" class="btn_over" id="BtnHoanTatID" value="Hoàn tất">
			</div>
		</div>
	</div>
</div>

<div class="Hidden">
		<div id="PopupThemMoiTaiSanID" class="StatusPopup">
			<div class="col_right" style="border-style: none; width: 100%; border-color: white;">
				<h4 style="margin-bottom: 0px;">Thông tin tài sản</h4>
				<table width="100%" cellspacing="5" cellpadding="5" border="0"
				class="form">
				<tbody>
					<tr>
						<td style="text-align: right; width: 15%; color: blue;">Loại tài sản</td>
						<td style="width: 30%;"><select name="loaiTaiSan" id="LoaiTaiSanID" onchange="changeLoaiTaiSan()">
							<option value="0">--- Chọn ---</option>
						</select>
						<label id="LoaiTaiSanID-error" class="error DisplayNone" for="LoaiTaiSanID">Xin vui lòng chọn giá trị</label></td>
						<td style="text-align: right; width: 15%; color: blue;">Key tài sản</td>
						<td style="width: 30%"><input type="text" class="w-300" id="KhoaTaiSanID" name="khoaTaiSan" value="" required maxlength="50">
						<label id="KhoaTaiSanID-error" class="error DisplayNone" for="KhoaTaiSanID">Xin vui lòng nhập giá trị</label></td>
					</tr>
				</tbody>
			</table>
				<div id="FormThongTinThemTaiSanID">
				
				</div>
				<div style="text-align: center;">
				<input type="button" class="btn_over" id="BtnCapNhatTaiSanPopupID" value="Cập nhật">
				</div>
				
			</div>
		</div>
</div>

<div class="Hidden">
		<div id="PopupThemMoiDongSuHuuTaiSanID" class="StatusPopup">
			<div class="col_right" style="border-style: none; width: 100%; border-color: white;">
				<h4 style="margin-bottom: 0px;">Thông tin đồng sở hữu tài sản</h4>
				<div id="ThongTinDongSoHuuID">
				
				</div>
			</div>
		</div>
</div>


<input type="hidden" id="CheckValidateID" value="false">
<input type="hidden" id="CheckValidateHopDongID" value="false">
<input type="hidden" id="StepHiddenID" value="1">