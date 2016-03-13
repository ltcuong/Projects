<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
		<s:if test="totalRecord == 0">
		<tr>
		<td colspan="7" style="text-align: left;"><strong >Không tìm ra kết quả trùng với thông tin tìm kiếm!</strong></td>
		</tr>
		</s:if><s:else>
		<s:iterator value="listTaiKhoan" status="row" var="element">
		<tr>
			<td align="center"><s:property value="#row.index + ((page - 1) * rowinpage) + 1"/> </td>
			<td><s:property value="tenDangNhap" /></td>
			<td><s:property value="hoTen" /></td>
			<td><s:property value="nhomTaiKhoan.nhomTen" /></td>
			<td><s:if test="#element.locked == 0">Đang hoạt động</s:if><s:elseif test="#element.locked == 1">Đã khoá</s:elseif></td>
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
		</s:else>
	</tbody>
</table>