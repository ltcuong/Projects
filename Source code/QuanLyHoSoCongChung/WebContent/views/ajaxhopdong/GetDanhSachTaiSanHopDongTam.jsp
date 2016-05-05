<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div id="accordion">
	<s:iterator value="listTaiSanHopDong" var="element">
		<h3>Khoá tài sản: <s:property value="#element.tenKhoaTaiSan"/> - Loại tài sản: <s:property value="#element.loaiTaiSan.loaiTaiSanTen"/></h3>
	  	<div>
	    <s:if test="#element.loaiTaiSanID == 1">
	    <!-- Bất động sản không có tài sản gắn liền với đất -->
	    <table width="100%" cellspacing="5" cellpadding="5" border="0" class="form">
		<tbody>
			<tr>
				<td style="text-align: right; width: 18%;">Tên phiếu tài sản: </td>
				<td style="width: 27%" colspan="2"><s:property value="#element.tenPhieuTaiSan"/>
				</td>
				<td style="text-align: right; width: 18%">Địa chỉ tài sản: </td>
				<td style="width: 27%" colspan="2"><s:property value="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.diaChiTaiSan"/>
				</td>
			</tr>
			<tr>
				<td style="text-align: right;">Thửa đất số: </td>
				<td colspan="2"><s:property value="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.thuaDatSo"/></td>
				<td style="text-align: right;">Tờ bản đồ số: </td>
				<td colspan="2"><s:property value="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.toBanDoSo"/></td>
			</tr>
			<tr>
				<td style="text-align: right;">Diện tích: </td>
				<td colspan="2"><s:property value="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.dienTich"/></td>
				<td style="text-align: right;">Hình thức sử dụng chung: </td>
				<td colspan="2"><s:property value="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.hinhThucSuDungChung"/></td>
			</tr>
			<tr>
				<td style="text-align: right;">Hình thức sử dụng riêng: </td>
				<td colspan="2"><s:property value="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.hinhThucSuDungRieng"/></td>
				<td style="text-align: right;">Mục đích sử dụng: </td>
				<td colspan="2"><s:property value="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.mucDichSuDung"/></td>
			</tr>
			<tr>
				<td style="text-align: right;">Thời hạn sử dụng đất: </td>
				<td colspan="2"><s:property value="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.thoiHanSuDung"/></td>
				<td style="text-align: right;">Nguồn gốc sử dụng: </td>
				<td colspan="2"><s:property value="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.nguonGocSuDung"/></td>
			</tr>
			<tr>
				<td style="text-align: right;">Ngày cấp GCNQSDĐ: </td>
				<td colspan="2"><s:date name="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.ngayCapGiayCNQuyenSuDungDat" format="dd/MM/yyyy"/></td>
					<td style="text-align: right;">Nơi cấp GCNQSDĐ: </td>
				<td colspan="2"><s:property value="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.noiCapGiayCNQuyenSuDungDat"/></td>
			</tr>
			<tr>
				<td style="text-align: right;">Vào sổ cấp GCN số: </td>
				<td colspan="2"><s:property value="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.vaoSoCapGiayCNQuyenSuDungDatSo"/></td>
					<td style="text-align: right;">Hạn chế về QSDĐ: </td>
				<td colspan="2"><s:property value="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.hanCheQuyenSuDungDat"/></td>
			</tr>
			<tr>
				<td style="text-align: right;">Ghi chú về tài sản: </td>
				<td colspan="2"><s:property value="#element.ghiChu"/></td>
			</tr>
			<s:if test="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.coGiaoDichMotPhan == 1">
			<tr>
			<td style="text-align: right;">Diện tích giao dịch một phần:</td>
			<td colspan="2"><s:property value="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.dienTichGiaoDichMotPhan"/></td>
			</tr>
			</s:if>
			<s:if test="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.coTaiSanGanLien == 1">
			<tr>
				<td colspan="6" align="left"><strong>Thông tin tài sản gắn liền</strong></td>
			</tr>
			<tr>
				<td style="text-align: right;">Loại tài sản gắn liền:</td>
				<td colspan="2"><s:if test="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.loaiTaiSanGanLienID == 1">Nhà</s:if>
				<s:elseif test="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.loaiTaiSanGanLienID == 2">Công trình xây dựng</s:elseif>
				</td>
			</tr>
			<s:if test="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.loaiTaiSanGanLienID == 1">
			<tr>
				<td style="text-align: right;">Giấy chứng nhận số:</td>
				<td colspan="2"><s:property value="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.taiSanNhaGanLien.giayCNQuyenSoHuuTaiSanSo"/></td>
				<td style="text-align: right;">Ngày cấp giấy chứng nhận:</td>
				<td colspan="2"><s:date name="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.taiSanNhaGanLien.ngayCapGiayCNQuyenSoHuuTaiSan" format="dd/MM/yyyy"/></td>
			</tr>
			<tr>
				<td style="text-align: right;">Nơi cấp giấy chứng nhận:</td>
				<td colspan="5"><s:property value="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.taiSanNhaGanLien.noiCapGiayCNQuyenSoHuuTaiSan"/></td>
			</tr>
			<tr>
				<td style="text-align: right;">Loại nhà</td>
				<td colspan="2"><s:property value="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.taiSanNhaGanLien.loaiCongTrinh"/></td>
				<td style="text-align: right;">Tổng diện tích sử dụng</td>
				<td colspan="2"><s:property value="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.taiSanNhaGanLien.tongDienTich"/></td>
			</tr>
			<tr>
				<td style="text-align: right;">Diện tích xây dựng</td>
				<td colspan="2"><s:property value="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.taiSanNhaGanLien.dienTichXayDung"/></td>
				<td style="text-align: right;">Kết cấu</td>
				<td colspan="2"><s:property value="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.taiSanNhaGanLien.ketCau"/></td>
			</tr>
			<tr>
				<td style="text-align: right;">Số tầng</td>
				<td colspan="2"><s:property value="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.taiSanNhaGanLien.soTang"/></td>
			</tr>
			</s:if>
			<s:elseif test="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.loaiTaiSanGanLienID == 2">
			<tr>
				<td style="text-align: right;">Giấy chứng nhận số:</td>
				<td colspan="2"><s:property value="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.taiSanCongTrinhKienTrucGanLien.giayCNQuyenSoHuuTaiSanSo"/></td>
				<td style="text-align: right;">Ngày cấp giấy chứng nhận:</td>
				<td colspan="2"><s:date name="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.taiSanCongTrinhKienTrucGanLien.ngayCapGiayCNQuyenSoHuuTaiSan" format="dd/MM/yyyy"/></td>
			</tr>
			<tr>
				<td style="text-align: right;">Nơi cấp giấy chứng nhận:</td>
				<td colspan="5"><s:property value="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.taiSanCongTrinhKienTrucGanLien.noiCapGiayCNQuyenSoHuuTaiSan"/></td>
			</tr>
			<tr>
				<td style="text-align: right;">Loại công trình</td>
				<td colspan="2"><s:property value="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.taiSanCongTrinhKienTrucGanLien.loaiCongTrinh"/></td>
				<td style="text-align: right;">Diện tích xây dựng</td>
				<td colspan="2"><s:property value="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.taiSanCongTrinhKienTrucGanLien.dienTichXayDung"/></td>
			</tr>
			<tr>
				<td style="text-align: right; ">Kết cấu</td>
				<td colspan="2"><s:property value="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.taiSanCongTrinhKienTrucGanLien.ketCau"/></td>
				<td style="text-align: right;">Số tầng</td>
				<td colspan="2"><s:property value="#element.taiSanBatDongSanKhongCoTaiSanGanLienVoiDat.taiSanCongTrinhKienTrucGanLien.soTang"/></td>
			</tr>
			</s:elseif>
			</s:if>
		</tbody>
	</table>
	    </s:if><s:elseif test="#element.loaiTaiSanID == 2">
	    <!-- Bè cá -->
	    <table width="100%" cellspacing="5" cellpadding="5" border="0"
	class="form">
	<tbody>
		<tr>
			<td style="text-align: right; width: 18%;">Tên phiếu tài sản: </td>
			<td style="width: 27%" colspan="2"><s:property value="#element.tenPhieuTaiSan"/>
			</td>
			<td style="text-align: right; width: 18%">Tên phương tiện: </td>
			<td style="width: 27%" colspan="2"><s:property value="#element.taiSanBeCa.tenPhuongTien"/>
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">Cơ quan đăng ký: </td>
			<td colspan="2"><s:property value="#element.taiSanBeCa.coQuanDangKy"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Năm đóng: </td>
			<td colspan="2"><s:property value="#element.taiSanBeCa.namDong"/></td>
			<td style="text-align: right;">Nơi đóng: </td>
			<td colspan="2"><s:property value="#element.taiSanBeCa.noiDong"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Chiều dài Lmax: </td>
			<td colspan="2"><s:property value="#element.taiSanBeCa.chieuDaiLmax"/></td>
			<td style="text-align: right;">Chiều rộng Bmax: </td>
			<td colspan="2"><s:property value="#element.taiSanBeCa.chieuRongBmax"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Chiều cao D: </td>
			<td colspan="2"><s:property value="#element.taiSanBeCa.chieuCaoD"/></td>
			<td style="text-align: right;">Ltk</td>
			<td colspan="2"><s:property value="#element.taiSanBeCa.ltk"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Kích thước Cabin: </td>
			<td colspan="2"><s:property value="#element.taiSanBeCa.kichThuocCabin"/></td>
			<td style="text-align: right;">Tổng dung tích TĐK: </td>
			<td colspan="2"><s:property value="#element.taiSanBeCa.tongDungTich"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Vật liệu vỏ: </td>
			<td colspan="2"><s:property value="#element.taiSanBeCa.vatLieuVo"/></td>
			<td style="text-align: right;">Ký hiệu máy: </td>
			<td colspan="2"><s:property value="#element.taiSanBeCa.kyHieuMay"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Số máy: </td>
			<td colspan="2"><s:property value="#element.taiSanBeCa.soMay"/></td>
			<td style="text-align: right;">Công suất (Mã lực): </td>
			<td colspan="2"><s:property value="#element.taiSanBeCa.congSuat"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Được phép sử dụng: </td>
			<td colspan="2"><s:property value="#element.taiSanBeCa.duocPhepSuDung"/></td>
			<td style="text-align: right;">Giấy ĐK phương tiện nghề cá: </td>
			<td colspan="2"><s:property value="#element.taiSanBeCa.giayDKPhuongTienNgheCa"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Ngày cấp GĐK phương tiện nghề cá: </td>
			<td colspan="2"><s:date name="#element.taiSanBeCa.ngayCapGiayDKPhuongTienNgheCa" format="dd/MM/yyyy"/></td>
			<td style="text-align: right;">Nơi cấp GĐK phương tiện nghề cá: </td>
			<td colspan="2"><s:property value="#element.taiSanBeCa.noiCapGiayDKPhuongTienNgheCa"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Số đăng ký cũ: </td>
			<td colspan="2"><s:property value="#element.taiSanBeCa.soDangKyCu"/></td>
			<td style="text-align: right;">Ghi chú về tài sản: </td>
			<td colspan="2"><s:property value="#element.ghiChu"/></td>
		</tr>
	</tbody>
</table>
	    </s:elseif>
	    <s:elseif test="#element.loaiTaiSanID == 3">
	    <!--Căn hộ  -->
	   <table width="100%" cellspacing="5" cellpadding="5" border="0"
	class="form">
	<tbody>
		<tr>
			<td style="text-align: right; width: 18%;">Tên phiếu tài sản: </td>
			<td style="width: 27%" colspan="2"><s:property value="#element.tenPhieuTaiSan"/>
			</td>
			<td style="text-align: right; width: 18%">Địa chỉ tài sản: </td>
			<td style="width: 27%" colspan="2"><s:property value="#element.taiSanCanHo.diaChiTaiSan"/>
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">Thửa đất số: </td>
			<td colspan="2"><s:property value="#element.taiSanCanHo.thuaDatSo"/></td>
			<td style="text-align: right;">Tờ bản đồ số: </td>
			<td colspan="2"><s:property value="#element.taiSanCanHo.toBanDoSo"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Mô tả: </td>
			<td colspan="2"><s:property value="#element.taiSanCanHo.moTa"/></td>
			<td style="text-align: right;">Diện tích: </td>
			<td colspan="2"><s:property value="#element.taiSanCanHo.dienTich"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Hình thức sử dụng chung: </td>
			<td colspan="2"><s:property value="#element.taiSanCanHo.hinhThucSuDungChung"/></td>
			<td style="text-align: right;">Hình thức sử dụng riêng: </td>
			<td colspan="2"><s:property value="#element.taiSanCanHo.hinhThucSuDungRieng"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Mục đích sử dụng: </td>
			<td colspan="2"><s:property value="#element.taiSanCanHo.mucDichSuDung"/></td>
			<td style="text-align: right;">Thời hạn sử dụng đất: </td>
			<td colspan="2"><s:property value="#element.taiSanCanHo.thoiHanSuDung"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Nguồn gốc sử dụng: </td>
			<td colspan="2"><s:property value="#element.taiSanCanHo.nguonGocSuDung"/></td>
			<td style="text-align: right;">Tổng diện tích sử dụng: </td>
			<td colspan="2"><s:property value="#element.taiSanCanHo.tongDienTichSuDung"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Diện tích đất xây dựng: </td>
			<td colspan="2"><s:property value="#element.taiSanCanHo.dienTichXayDung"/></td>
			<td style="text-align: right;">Kết cấu: </td>
			<td colspan="2"><s:property value="#element.taiSanCanHo.ketCau"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Căn hộ số: </td>
			<td colspan="2"><s:property value="#element.taiSanCanHo.canHoSo"/></td>
			<td style="text-align: right;">Căn hộ thuộc tầng: </td>
			<td colspan="2"><s:property value="#element.taiSanCanHo.canHoThuocTang"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Số tầng nhà chung cư: </td>
			<td colspan="2"><s:property value="#element.taiSanCanHo.soTangNhaChungCu"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Ngày cấp GCNQSDĐ: </td>
			<td colspan="2"><s:date name="#element.taiSanCanHo.ngayCapGiayCNQuyenSuDung" format="dd/M/yyyy"/></td>
			<td style="text-align: right;">Nơi cấp GCNQSDĐ: </td>
			<td colspan="2"><s:property value="#element.taiSanCanHo.noiCapGiayCNQuyenSuDung"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Vào sổ cấp GCN số: </td>
			<td colspan="2"><s:property value="#element.taiSanCanHo.vaoSoCapGiayCNQuyenSuDungSo"/></td>
			<td style="text-align: right;">Giấy chứng nhận QSHTS số: </td>
			<td colspan="2"><s:property value="#element.taiSanCanHo.giayCNQuyenSoHuuTaiSanSo"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Ngày cấp GCNQSHTS: </td>
			<td colspan="2"><s:date name="#element.taiSanCanHo.ngayCapGiayCNQuyenSoHuuTaiSan" format="dd/MM/yyyy"/></td>
			<td style="text-align: right;">Nơi cấp GCNQSHTS: </td>
			<td colspan="2"><s:property value="#element.taiSanCanHo.noiCapGiayCNQuyenSoHuuTaiSan"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Hạn chế về QSDĐ: </td>
			<td colspan="2"><s:property value="#element.taiSanCanHo.noiCapGiayCNQuyenSoHuuTaiSan"/></td>
			<td style="text-align: right;">Ghi chú về tài sản: </td>
			<td colspan="2"><s:property value="#element.ghiChu"/></td>
		</tr>
		<s:if test="#element.taiSanCanHo.coGiaoDichMotPhan == 1">
		<tr>
		<td style="text-align: right;">Diện tích giao dịch một phần</td>
		<td colspan="2"><s:property value="#element.taiSanCanHo.dienTichGiaoDichMotPhan"/></td>
		</tr>
		</s:if>
	</tbody>
</table>
	    </s:elseif>
	    <s:elseif test="#element.loaiTaiSanID == 4">
	    <!--  Cố phiếu -->
	    <table width="100%" cellspacing="5" cellpadding="5" border="0"
	class="form">
	<tbody>
		<tr>
			<td style="text-align: right; width: 18%;">Tên phiếu tài sản: </td>
			<td style="width: 27%" colspan="2"><s:property value="#element.tenPhieuTaiSan"/>
			</td>
			<td style="text-align: right; width: 18%">Công ty phát hành: </td>
			<td style="width: 27%" colspan="2"><s:property value="#element.taiSanCoPhieu.ctyPhatHanhCoPhieu"/>
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">Địa chỉ công ty: </td>
			<td colspan="2"><s:property value="#element.taiSanCoPhieu.diaChiCongTy"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Mệnh giá: </td>
			<td colspan="2"><s:property value="#element.taiSanCoPhieu.menhGia"/></td>
			<td style="text-align: right;">Tổng mệnh giá: </td>
			<td colspan="2"><s:property value="#element.taiSanCoPhieu.tongMenhGia"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Số đăng ký: </td>
			<td colspan="2"><s:property value="#element.taiSanCoPhieu.soDangKy"/></td>
			<td style="text-align: right;">Ngày phát hành: </td>
			<td colspan="2"><s:property value="#element.taiSanCoPhieu.ngayPhatHanh"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Loại cổ phiếu: </td>
			<td colspan="2"><s:property value="#element.taiSanCoPhieu.loaiCoPhieu"/></td>
			<td style="text-align: right;">Tên cổ đông: </td>
			<td colspan="2"><s:property value="#element.taiSanCoPhieu.tenCoDong"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Địa chỉ cổ đông: </td>
			<td colspan="2"><s:property value="#element.taiSanCoPhieu.diaChiCoDong"/></td>
			<td style="text-align: right;">Loại giấy tờ tùy thân: </td>
			<td colspan="2"><s:property value="#element.taiSanCoPhieu.loaiGiayTo.loaiGiayToTen"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Số giấy tờ tùy thân: </td>
			<td colspan="2"><s:property value="#element.taiSanCoPhieu.soGiayTo"/></td>
			<td style="text-align: right;">Ngày cấp giấy tờ tùy thân: </td>
			<td colspan="2"><s:date name="#element.taiSanCoPhieu.ngayCapGiayTo" format="dd/MM/yyyy"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Nơi cấp giấy tờ tùy thân: </td>
			<td colspan="2"><s:property value="#element.taiSanCoPhieu.noiCapGiayTo"/></td>
			<td style="text-align: right;">Ghi chú về tài sản: </td>
			<td colspan="2"><s:property value="#element.ghiChu"/></td>
		</tr>
	</tbody>
</table>
	    </s:elseif>
	    <s:elseif test="#element.loaiTaiSanID == 5">
	    <!-- Công trình kiến trúc -->
	   <table width="100%" cellspacing="5" cellpadding="5" border="0"
			class="form">
			<tbody>
				<tr>
					<td style="text-align: right; width: 18%;">Tên phiếu tài sản: </td>
					<td style="width: 27%" colspan="2"><s:property value="#element.tenPhieuTaiSan"/>
					</td>
					<td style="text-align: right; width: 18%">Địa chỉ tài sản: </td>
					<td style="width: 27%" colspan="2"><s:property value="#element.taiSanCongTrinhKienTruc."/>
					</td>
				</tr>
				<tr>
					<td style="text-align: right;">Thửa đất số: </td>
					<td colspan="2"><s:property value="#element.taiSanCongTrinhKienTruc.thuaDatSo"/></td>
					<td style="text-align: right;">Tờ bản đồ số: </td>
					<td colspan="2"><s:property value="#element.taiSanCongTrinhKienTruc.toBanDoSo"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Diện tích: </td>
					<td colspan="2"><s:property value="#element.taiSanCongTrinhKienTruc.dienTich"/></td>
					<td style="text-align: right;">Hình thức sử dụng chung: </td>
					<td colspan="2"><s:property value="#element.taiSanCongTrinhKienTruc.hinhThucSuDungChung"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Hình thức sử dụng riêng: </td>
					<td colspan="2"><s:property value="#element.taiSanCongTrinhKienTruc.hinhThucSuDungRieng"/></td>
					<td style="text-align: right;">Mục đích sử dụng: </td>
					<td colspan="2"><s:property value="#element.taiSanCongTrinhKienTruc.mucDichSuDung"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Thời hạn sử dụng đất: </td>
					<td colspan="2"><s:property value="#element.taiSanCongTrinhKienTruc.thoiHanSuDung"/></td>
					<td style="text-align: right;">Nguồn gốc sử dụng: </td>
					<td colspan="2"><s:property value="#element.taiSanCongTrinhKienTruc.nguonGoc"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Tổng diện tích sử dụng: </td>
					<td colspan="2"><s:property value="#element.taiSanCongTrinhKienTruc.tongDienTich"/></td>
					<td style="text-align: right;">Diện tích đất xây dựng: </td>
					<td colspan="2"><s:property value="#element.taiSanCongTrinhKienTruc.dienTichXayDung"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Kết cấu: </td>
					<td colspan="2"><s:property value="#element.taiSanCongTrinhKienTruc.ketCau"/></td>
					<td style="text-align: right;">Số tầng: </td>
					<td colspan="2"><s:property value="#element.taiSanCongTrinhKienTruc.soTang"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Loại công trình: </td>
					<td colspan="2"><s:property value="#element.taiSanCongTrinhKienTruc.loaiCongTrinh"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Ngày cấp GCNQSDĐ: </td>
					<td colspan="2"><s:date name="#element.taiSanCongTrinhKienTruc.ngayCapGiayCNQuyenSuDungDat" format="dd/MM/yyyy"/></td>
					<td style="text-align: right;">Nơi cấp GCNQSDĐ: </td>
					<td colspan="2"><s:property value="#element.taiSanCongTrinhKienTruc.noiCapGiayCNQuyenSuDungDat"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Vào sổ cấp GCN số: </td>
					<td colspan="2"><s:property value="#element.taiSanCongTrinhKienTruc.vaoSoCNQuyenSuDungDatSo"/></td>
					<td style="text-align: right;">Giấy chứng nhận QSHTS số: </td>
					<td colspan="2"><s:property value="#element.taiSanCongTrinhKienTruc.giayCNQuyenSoHuuTaiSanSo"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Ngày cấp GCNQSHTS: </td>
					<td colspan="2"><s:date name="#element.taiSanCongTrinhKienTruc.ngayCapGiayCNQuyenSoHuuTaiSan" format="dd/MM/yyyy"/></td>
					<td style="text-align: right;">Nơi cấp GCNQSHTS: </td>
					<td colspan="2"><s:property value="#element.taiSanCongTrinhKienTruc.noiCapGiayCNQuyenSoHuuTaiSan"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Hạn chế về QSDĐ: </td>
					<td colspan="2"><s:property value="#element.taiSanCongTrinhKienTruc.hanCheQuyenSuDungDat"/></td>
					<td style="text-align: right;">Ghi chú về tài sản: </td>
					<td colspan="2"><s:property value="#element.ghiChu"/></td>
				</tr>
				<s:if test="#element.taiSanCongTrinhKienTruc.coGiaoDichMotPhan == 1">
				<tr>
				<td style="text-align: right;">Diện tích giao dịch một phần</td>
				<td colspan="2"><s:property value="#element.taiSanCongTrinhKienTruc.dienTichGiaoDichMotPhan"/></td>
				</tr>
				</s:if>
			</tbody>
		</table>
	    </s:elseif>
	    <s:elseif test="#element.loaiTaiSanID == 6">
	    <!-- Máy bay -->
	    <table width="100%" cellspacing="5" cellpadding="5" border="0" class="form">
	<tbody>
		<tr>
			<td style="text-align: right; width: 18%;">Tên phiếu tài sản: </td>
			<td style="width: 27%" colspan="2"><s:property value="#element.tenPhieuTaiSan"/>
			</td>
			<td style="text-align: right; width: 18%">Tên phương tiện: </td>
			<td style="width: 27%" colspan="2"><s:property value="#element.taiSanMayBay.tenPhuongTien"/>
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">Ngày cấp giấy đăng ký: </td>
			<td colspan="2"><s:date name="#element.taiSanMayBay.ngayCapGiayDangKy" format="dd/MM/yyyy"/></td>
				<td style="text-align: right;">Nơi cấp giấy đăng ký: </td>
			<td colspan="2"><s:property value="#element.taiSanMayBay.noiCapGiayDangKy"/></td>
		</tr>
		<tr>
			
			<td style="text-align: right;">Đặc điểm tài sản: </td>
			<td colspan="2"><s:property value="#element.taiSanMayBay.dacDiemTaiSan"/></td>
				<td style="text-align: right;">Ghi chú về tài sản: </td>
			<td colspan="2"><s:property value="#element.ghiChu"/></td>
		</tr>
	</tbody>
</table>
	    </s:elseif>
	    <s:elseif test="#element.loaiTaiSanID == 7">
	    <!-- Máy móc -->
	    <table width="100%" cellspacing="5" cellpadding="5" border="0"
	class="form">
	<tbody>
		<tr>
			<td style="text-align: right; width: 18%;">Tên phiếu tài sản: </td>
			<td style="width: 27%" colspan="2"><s:property value="#element.tenPhieuTaiSan"/>
			</td>
			<td style="text-align: right; width: 18%">Nhãn hiệu: </td>
			<td style="width: 27%" colspan="2"><s:property value="#element.taiSanMayMoc.nhanHieu"/> </td>
		</tr>
		<tr>
			<td style="text-align: right;">Công suất(Mã lực): </td>
			<td colspan="2"><s:property value="#element.taiSanMayMoc.congSuat"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Nơi chế tạo: </td>
			<td colspan="2"><s:property value="#element.taiSanMayMoc.noiCheTao"/></td>
			<td style="text-align: right;">Đặc điểm tài sản: </td>
			<td colspan="2"><s:property value="#element.taiSanMayMoc.dacDiemTaiSan"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Cơ quan đăng kiểm: </td>
			<td colspan="2"><s:property value="#element.taiSanMayMoc.coQuanDangKiem"/></td>
			<td style="text-align: right;">Ghi chú về tài sản: </td>
			<td colspan="2"><s:property value="#element.ghiChu"/></td>
		</tr>
	</tbody>
</table>
	    </s:elseif>
	    <s:elseif test="#element.loaiTaiSanID == 8">
	    <!-- Mô tô – xe máy -->
	    <table width="100%" cellspacing="5" cellpadding="5" border="0"
	class="form">
	<tbody>
		<tr>
			<td style="text-align: right; width: 18%;">Tên phiếu tài sản: </td>
			<td style="width: 27%" colspan="2"><s:property value="#element.tenPhieuTaiSan"/>
			</td>
			<td style="text-align: right; width: 18%; color: blue;">&nbsp;</td>
			<td style="width: 27%" colspan="2">&nbsp;
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">Nhãn hiệu: </td>
			<td colspan="2"><s:property value="#element.taiSanMoToXeMay.nhanHieu"/></td>
			<td style="text-align: right;">Loại xe: </td>
			<td colspan="2"><s:property value="#element.taiSanMoToXeMay.loaiXe"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Màu sơn: </td>
			<td colspan="2"><s:property value="#element.taiSanMoToXeMay.mauSon"/></td>
			<td style="text-align: right;">Năm sản xuất: </td>
			<td colspan="2"><s:property value="#element.taiSanMoToXeMay.namSanXuat"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Số khung: </td>
			<td colspan="2"><s:property value="#element.taiSanMoToXeMay.soKhung"/></td>
			<td style="text-align: right;">Số máy: </td>
			<td colspan="2"><s:property value="#element.taiSanMoToXeMay.soMay"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Giấy đăng ký số: </td>
			<td colspan="2"><s:property value="#element.taiSanMoToXeMay.giayDangKySo"/></td>
			<td style="text-align: right;">Ngày cấp giấy đăng ký: </td>
			<td colspan="2"><s:date name="#element.taiSanMoToXeMay.ngayCapGiayDangKy" format="dd/MM/yyyy"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Nơi cấp giấy đăng ký: </td>
			<td colspan="2"><s:property value="#element.taiSanMoToXeMay.noiCapGiayDangKy"/></td>
			<td style="text-align: right;">Ghi chú về tài sản: </td>
			<td colspan="2"><s:property value="#element.ghiChu"/></td>
		</tr>
	</tbody>
</table>
	    </s:elseif>
	    <s:elseif test="#element.loaiTaiSanID == 9">
	    <!-- Nhà -->
	    <s:if test="loaiHopDongChiTietID == 4"></s:if>
	    <table width="100%" cellspacing="5" cellpadding="5" border="0" class="form">
			<tbody>
				<tr>
					<td style="text-align: right;">Tên phiếu tài sản: </td>
					<td colspan="2"><s:property value="#element.tenPhieuTaiSan"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Ngày cấp GCNQSDĐ: </td>
					<td colspan="2"><s:date name="#element.taiSanNha.ngayCapGiayCNQSDD" format="dd/MM/yyyy"/>
					</td>
					<td style="text-align: right;">Nơi cấp GCNQSDĐ: </td>
					<td colspan="2"><s:property value="#element.taiSanNha.noiCapGiayCNQSDD"/></td>
				</tr>
				<tr>
					<td style="text-align: right; width: 18%;">Loại nhà: </td>
					<td style="width: 27%" colspan="2"><s:property value="#element.taiSanNha.loaiCongTrinh"/></td>
					<td style="text-align: right; width: 18%">Địa chỉ nhà ở: </td>
					<td style="width: 27%" colspan="2"><s:property value="#element.taiSanNha.diaChiTaiSan"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Tổng diện tích sàn: </td>
					<td colspan="2"><s:property value="#element.taiSanNha.dienTichSan"/></td>
					<td style="text-align: right;">Tổng diện tích sử dụng: </td>
					<td colspan="2"><s:property value="#element.taiSanNha.dienTichSuDung"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Diện tích sử dụng chung: </td>
					<td colspan="2"><s:property value="#element.taiSanNha.dienTichSuDungChung"/></td>
					<td style="text-align: right;">Diện tích sử dụng riêng: </td>
					<td colspan="2"><s:property value="#element.taiSanNha.dienTichSuDungRieng"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Nguồn gốc sử dụng: </td>
					<td colspan="2"><s:property value="#element.taiSanNha.nguonGocSuDung"/></td>
					<td style="text-align: right;">Hơp đồng thuê đất: </td>
					<td colspan="2"><s:property value="#element.taiSanNha.hopDongThueDat"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Thời hạn thuê đất từ ngày: </td>
					<td colspan="2"><s:date name="#element.taiSanNha.thoiHanThueDatTuNgay" format="dd/MM/yyyy"/></td>
					<td style="text-align: right;">Thời hạn thuê đất đến ngày: </td>
					<td colspan="2"><s:date name="#element.taiSanNha.thoiHanThueDatDenNgay" format="dd/MM/yyyy"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Trang thiết bị gắn liền: </td>
					<td colspan="6"><s:property value="#element.taiSanNha.trangThietBiGanLien"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Hạn chế về QSDĐ: </td>
					<td colspan="6"><s:property value="#element.taiSanNha.hanCheVeQuyenSuDungDat"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Ghi chú về tài sản: </td>
					<td colspan="2"><s:property value="#element.ghiChu"/></td>
				</tr>
			</tbody>
		</table>
	    
	    <s:else>
	    <table width="100%" cellspacing="5" cellpadding="5" border="0" class="form">
			<tbody>
				<tr>
					<td style="text-align: right; width: 18%;">Tên phiếu tài sản</td>
					<td style="width: 27%" colspan="2"><s:property value="#element.tenPhieuTaiSan"/></td>
					<td style="text-align: right; width: 18%">Địa chỉ tài sản</td>
					<td style="width: 27%" colspan="2"><s:property value="#element.taiSanNha.diaChiTaiSan"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Thửa đất số</td>
					<td colspan="2"><s:property value="#element.taiSanNha.thuaDatSo"/></td>
					<td style="text-align: right;">Tờ bản đồ số</td>
					<td colspan="2"><s:property value="#element.taiSanNha.toBanDoSo"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Diện tích sử dụng</td>
					<td colspan="2"><s:property value="#element.taiSanNha.dienTichSuDung"/></td>
					<td style="text-align: right;">Diện tích sử dụng chung</td>
					<td colspan="2"><s:property value="#element.taiSanNha.dienTichSuDungChung"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Diện tích sử dụng riêng</td>
					<td colspan="2"><s:property value="#element.taiSanNha.dienTichSuDungRieng"/></td>
					<td style="text-align: right;">Mục đích sử dụng</td>
					<td colspan="2"><s:property value="#element.taiSanNha.mucDichSuDung"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Thời hạn sử dụng đất</td>
					<td colspan="2"><s:property value="#element.taiSanNha.thoiHanSuDungDat"/></td>
					<td style="text-align: right;">Nguồn gốc sử dụng</td>
					<td colspan="2"><s:property value="#element.taiSanNha.nguonGocSuDung"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Diện tích đất xây dựng</td>
					<td colspan="2"><s:property value="#element.taiSanNha.dienTichDatXayDung"/></td>
					<td style="text-align: right;">Diện tích sàn</td>
					<td colspan="2"><s:property value="#element.taiSanNha.dienTichSan"/></td>	
				</tr>
				<tr>
					<td style="text-align: right;">Kết cấu</td>
					<td colspan="2"><s:property value="#element.taiSanNha.ketCau"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Số tầng</td>
					<td colspan="2"><s:property value="#element.taiSanNha.soTang"/></td>
					<td style="text-align: right;">Loại công trình</td>
					<td colspan="2"><s:property value="#element.taiSanNha.loaiCongTrinh"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Ngày cấp GCNQSDĐ</td>
					<td colspan="2"><s:date name="#element.taiSanNha.ngayCapGiayCNQSDD" format="dd/MM/yyyy"/></td>
						<td style="text-align: right;">Nơi cấp GCNQSDĐ</td>
					<td colspan="2"><s:property value="#element.taiSanNha.noiCapGiayCNQSDD"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Vào sổ cấp GCN số</td>
					<td colspan="2"><s:property value="#element.taiSanNha.vaoSoGiayCNQSDDSo"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Giấy chứng nhận QSHTS số</td>
					<td colspan="2"><s:property value="#element.taiSanNha.giayChungNhanQSHTaiSanSo"/></td>
					<td style="text-align: right;">Ngày cấp GCNQSHTS</td>
					<td colspan="2"><s:date name="#element.taiSanNha.ngayCapGiayChungNhanQSHTS" format="dd/MM/yyyy"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Nơi cấp GCNQSHTS</td>
					<td colspan="2"><s:property value="#element.taiSanNha.noiCapGiayChungNhanQSHTS"/></td>
					<td style="text-align: right;">Hạn chế về QSDĐ</td>
					<td colspan="2"><s:property value="#element.taiSanNha.hanCheVeQuyenSuDungDat"/></td>
				</tr>
				<tr>
					<td style="text-align: right;">Ghi chú về tài sản</td>
					<td colspan="2"><s:property value="#element.ghiChu"/></td>
				</tr>
				<s:if test="#element.taiSanNha.coGiaoDichMotPhan == 1">
				<tr>
				<td style="text-align: right;">Diện tích giao dịch một phần</td>
				<td colspan="2"><s:property value="#element.taiSanNha.dienTichGiaoDichMotPhan"/></td>
				</tr>
				</s:if>
			</tbody>
		</table>
	    </s:else>
	    </s:elseif>
	    <s:elseif test="#element.loaiTaiSanID == 10">
	    <!-- Ô tô -->
	    <table width="100%" cellspacing="5" cellpadding="5" border="0"
	class="form">
	<tbody>
		<tr>
			<td style="text-align: right; width: 18%;">Tên phiếu tài sản: </td>
			<td style="width: 27%" colspan="2"><s:property value="#element.tenPhieuTaiSan"/>
			</td>
			<td style="text-align: right; width: 18%; color: blue;">&nbsp;</td>
			<td style="width: 27%" colspan="2">&nbsp;
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">Nhãn hiệu: </td>
			<td colspan="2"><s:property value="#element.taiSanOTo.nhanHieu"/></td>
			<td style="text-align: right;">Loại xe: </td>
			<td colspan="2"><s:property value="#element.taiSanOTo.loaiXe"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Màu sơn: </td>
			<td colspan="2"><s:property value="#element.taiSanOTo.mauSon"/></td>
			<td style="text-align: right;">Số chỗ ngồi: </td>
			<td colspan="2"><s:property value="#element.taiSanOTo.soChoNgoi"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Năm sản xuất: </td>
			<td colspan="2"><s:property value="#element.taiSanOTo.namSanXuat"/></td>
			<td style="text-align: right;">Số khung: </td>
			<td colspan="2"><s:property value="#element.taiSanOTo.soKhung"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Số máy: </td>
			<td colspan="2"><s:property value="#element.taiSanOTo.soMay"/></td>
			<td style="text-align: right;">Tải trọng: </td>
			<td colspan="2"><s:property value="#element.taiSanOTo.taiTrong"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Tự trọng: </td>
			<td colspan="2"><s:property value="#element.taiSanOTo.tuTrong"/></td>
			<td style="text-align: right;">Giấy đăng ký số: </td>
			<td colspan="2"><s:property value="#element.taiSanOTo.giayDangKySo"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Ngày cấp giấy đăng ký: </td>
			<td colspan="2"><s:date name="#element.taiSanOTo.ngayCapGiayDangKy" format="dd/MM/yyyy"/></td>
			<td style="text-align: right;">Nơi cấp giấy đăng ký: </td>
			<td colspan="2"><s:property value="#element.taiSanOTo.noiCapGiayDangKy"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Ghi chú về tài sản: </td>
			<td colspan="2"><s:property value="#element.ghiChu"/></td>
		</tr>
	</tbody>
</table>
	    </s:elseif>
	    <s:elseif test="#element.loaiTaiSanID == 11">
	    <!-- Sổ tiết kiệm -->
	    <table width="100%" cellspacing="5" cellpadding="5" border="0"
	class="form">
	<tbody>
		<tr>
			<td style="text-align: right; width: 18%;">Tên phiếu tài sản: </td>
			<td style="width: 27%" colspan="2"><s:property value="#element.tenPhieuTaiSan"/>
			</td>
			<td style="text-align: right; width: 18%; color: blue;">&nbsp;</td>
			<td style="width: 27%" colspan="2">&nbsp;</td>
		</tr>

		<tr>
			<td style="text-align: right;">Ngày gửi: </td>
			<td colspan="2"><s:date name="#element.taiSanSoTietKiem.ngayGui" format="dd/MM/yyyy"/></td>
			<td style="text-align: right;">Số dư tiền gửi: </td>
			<td colspan="2"><s:property value="#element.taiSanSoTietKiem.soDuTienGui"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Kỳ hạn: </td>
			<td colspan="2"><s:property value="#element.taiSanSoTietKiem.kyHan"/></td>
			<td style="text-align: right;">Lãi suất: </td>
			<td colspan="2"><s:property value="#element.taiSanSoTietKiem.laiXuat"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Loại tiền: </td>
			<td colspan="2"><s:property value="#element.taiSanSoTietKiem.loaiTien"/></td>
			<td style="text-align: right;">Ngân hàng cấp: </td>
			<td colspan="2"><s:property value="#element.taiSanSoTietKiem.nganHangCap"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Họ tên chủ sổ: </td>
			<td colspan="2"><s:property value="#element.taiSanSoTietKiem.hoTenChuSo"/></td>
			<td style="text-align: right;">Địa chỉ: </td>
			<td colspan="2"><s:property value="#element.taiSanSoTietKiem.diaChi"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Loại giấy tờ tùy thân: </td>
			<td colspan="2"><s:property value="#element.taiSanSoTietKiem.loaiGiayTo.loaiGiayToTen"/></td>
			<td style="text-align: right;">Số giấy tờ tùy thân: </td>
			<td colspan="2"><s:property value="#element.taiSanSoTietKiem.soGiayTo"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Ngày cấp giấy tờ tùy thân: </td>
			<td colspan="2"><s:date name="#element.taiSanSoTietKiem.ngayCapGiayTo" format="dd/MM/yyyy"/></td>
			<td style="text-align: right;">Nơi cấp giấy tờ tùy thân: </td>
			<td colspan="2"><s:property value="#element.taiSanSoTietKiem.noiCapGiayTo"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Ghi chú về tài sản: </td>
			<td colspan="2"><s:property value="#element.ghiChu"/></td>
		</tr>
	</tbody>
</table>
	    </s:elseif>
	    <s:elseif test="#element.loaiTaiSanID == 12">
	    <!-- Tài sản là bất động sản khác -->
	    <table width="100%" cellspacing="5" cellpadding="5" border="0"
	class="form">
	<tbody>
		<tr>
			<td style="text-align: right; width: 18%">Đặc điểm về tài sản: </td>
			<td style="width: 27%" colspan="2"><s:property value="#element.taiSanLaDongSanKhac.dacDiemTaiSan"/>
			</td>
				<td style="text-align: right; width: 18%; color: blue;">&nbsp;</td>
			<td style="width: 27%" colspan="2">&nbsp;
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">Ghi chú về tài sản: </td>
			<td colspan="2"><s:property value="#element.ghiChu"/></td>
		</tr>
	</tbody>
</table>
	    </s:elseif>
	    <s:elseif test="#element.loaiTaiSanID == 13">
	    <!-- Tàu biển -->
	    <table width="100%" cellspacing="5" cellpadding="5" border="0"
	class="form">
	<tbody>
		<tr>
			<td style="text-align: right; width: 18%;">Tên phiếu tài sản: </td>
			<td style="width: 27%" colspan="2"><s:property value="#element.tenPhieuTaiSan"/>
			</td>
			<td style="text-align: right; width: 18%">Tên tàu: </td>
			<td style="width: 27%" colspan="2"><s:property value="#element.taiSanTauBien.tenTau"/>
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">Loại tàu: </td>
			<td colspan="2"><s:property value="#element.taiSanTauBien.loaiTau"/></td>
			<td style="text-align: right;">Năm đóng: </td>
			<td colspan="2"><s:property value="#element.taiSanTauBien.namDong"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Nơi đóng: </td>
			<td colspan="2"><s:property value="#element.taiSanTauBien.noiDong"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Chiều dài Lmax: </td>
			<td colspan="2"><s:property value="#element.taiSanTauBien.chieuDaiLonNhat"/></td>
			<td style="text-align: right;">Chiều rộng Bmax: </td>
			<td colspan="2"><s:property value="#element.taiSanTauBien.chieuRongLonNhat"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Chiều cao mạn: </td>
			<td colspan="2"><s:property value="#element.taiSanTauBien.chieuCaoMan"/></td>
			<td style="text-align: right;">Mức nước tối đa: </td>
			<td colspan="2"><s:property value="#element.taiSanTauBien.mucNuocToiDa"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Dung tích toàn thân: </td>
			<td colspan="2"><s:property value="#element.taiSanTauBien.dungTichToanThan"/></td>
			<td style="text-align: right;">Dung tích thực dụng: </td>
			<td colspan="2"><s:property value="#element.taiSanTauBien.dungTichThucDung"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Trọng tải: </td>
			<td colspan="2"><s:property value="#element.taiSanTauBien.trongTai"/></td>
			<td style="text-align: right;">Công suất máy chính: </td>
			<td colspan="2"><s:property value="#element.taiSanTauBien.congSuatMayChinh"/></td>
		</tr>
		<tr>

			<td style="text-align: right;">Cảng đăng ký: </td>
			<td colspan="2"><s:property value="#element.taiSanTauBien.cangDangKy"/></td>
			<td style="text-align: right;">Ngày đăng ký: </td>
			<td colspan="2"><s:date name="#element.taiSanTauBien.ngayDangKy" format="dd/MM/yyyy"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Cơ quan đăng kiểm: </td>
			<td colspan="2"><s:property value="#element.taiSanTauBien.coQuanDangKiem"/></td>
			<td style="text-align: right;">GCN ĐK tàu biển số: </td>
			<td colspan="2"><s:property value="#element.taiSanTauBien.giayChungNhanDangKyTauSo"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Ngày cấp GCN ĐK tàu biển: </td>
			<td colspan="2"><s:date name="#element.taiSanTauBien.ngayCapGiayChungNhanDangKyTauSo" format="dd/MM/yyyy"/></td>
			<td style="text-align: right;">Nơi cấp GCN ĐK tàu biển: </td>
			<td colspan="2"><s:property value="#element.taiSanTauBien.noiCapGiayChungNhanDangKyTauSo"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Ghi chú về tài sản: </td>
			<td colspan="2"><s:property value="#element.ghiChu"/></td>
		</tr>
	</tbody>
</table>
	    </s:elseif>
	    <s:elseif test="#element.loaiTaiSanID == 14">
	    <!-- Tàu cá -->
	    <table width="100%" cellspacing="5" cellpadding="5" border="0"
	class="form">
	<tbody>
		<tr>
			<td style="text-align: right; width: 18%;">Tên phiếu tài sản: </td>
			<td style="width: 27%" colspan="2"><s:property value="#element.tenPhieuTaiSan"/>
			</td>
			<td style="text-align: right; width: 18%">Tên tàu: </td>
			<td style="width: 27%" colspan="2"><s:property value="#element.taiSanTauCa.tenTau"/>
		</tr>
		<tr>
			<td style="text-align: right;">Số hiệu: </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.soHieu"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Cơ quan đăng ký: </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.coQuanDangKy"/></td>
			<td style="text-align: right;">Loại tàu: </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.loaiTau"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Công dụng: </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.congDung"/></td>
			<td style="text-align: right;">Nơi đóng: </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.noiDong"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Năm đóng: </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.namDong"/></td>
			<td style="text-align: right;">Mẩu thiết kế: </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.mauThietKe"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Cơ quan thiết kế: </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.coQuanThietKe"/></td>
			<td style="text-align: right;">Chiều dài Lmax, m: </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.chieuDaiLmax"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Ltk, m: </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.ltk"/></td>
			<td style="text-align: right;">Chiều rộng Bmax, m: </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.chieuRongBmax"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Btk, m: </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.btk"/></td>
			<td style="text-align: right;">Chiều cao Dmax, m: </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.chieuCaoD"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Chiều chìm d: </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.chieuChimD"/></td>
			<td style="text-align: right;">Mạn khô f: </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.manKhoF"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Vật liệu vỏ: </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.vatLieuVo"/></td>
			<td style="text-align: right;">Tổng dung tích: </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.tongDungTich"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Sức chở tối đa (tấn): </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.sucChoToiDa"/></td>
			<td style="text-align: right;">Tốc độ tự do (hải lý/h): </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.tocDoTuDo"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Ký hiệu máy: </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.kyHieuMay"/></td>
			<td style="text-align: right;">Số máy: </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.soMay"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Công suất (Mã lực): </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.congSuat"/></td>
			<td style="text-align: right;">Nơi chế tạo: </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.noiCheTao"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Cảng đăng ký: </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.cangDangKy"/></td>
			<td style="text-align: right;">Cơ quan đăng kiểm: </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.coQuanDangKiem"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">GCN ĐK tàu số: </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.giayCNDangKyTauSo"/></td>
			<td style="text-align: right;">Ngày cấp GCN ĐK tàu: </td>
			<td colspan="2"><s:date name="#element.taiSanTauCa.ngayCapGiayCNDangKy" format="dd/MM/yyyy"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Nơi cấp GCN ĐK tàu: </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.noiCapGiayCNDangKy"/></td>
			<td style="text-align: right;">Số đăng ký cũ: </td>
			<td colspan="2"><s:property value="#element.taiSanTauCa.soDangKyCu"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Ghi chú về tài sản: </td>
			<td colspan="2"><s:property value="#element.ghiChu"/></td>

		</tr>
	</tbody>
</table>
	    </s:elseif>
	    <s:elseif test="#element.loaiTaiSanID == 15">
	    <!-- Tàu kéo ghe thuyền -->
	    <table width="100%" cellspacing="5" cellpadding="5" border="0"
	class="form">
	<tbody>
		<tr>
			<td style="text-align: right; width: 18%;">Tên phiếu tài sản: </td>
			<td style="width: 27%" colspan="2"><s:property value="#element.tenPhieuTaiSan"/>
			</td>
			<td style="text-align: right; width: 18%">Tên tàu: </td>
			<td style="width: 27%" colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.tenTau"/>
		</tr>
		<tr>
			<td style="text-align: right;">Số hiệu: </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.soHieu"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Cơ quan đăng ký: </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.coQuanDangKy"/></td>
			<td style="text-align: right;">Loại tàu: </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.loaiTau"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Công dụng: </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.congDung"/></td>
			<td style="text-align: right;">Nơi đóng: </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.noiDong"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Năm đóng: </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.namDong"/></td>
			<td style="text-align: right;">Mẩu thiết kế: </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.mauThietKe"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Cơ quan thiết kế: </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.coQuanThietKe"/></td>
			<td style="text-align: right;">Chiều dài Lmax: </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.chieuDaiLmax"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Ltk: </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.ltk"/></td>
			<td style="text-align: right;">Chiều rộng B: </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.chieuRongBmax"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Btk: </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.btk"/></td>
			<td style="text-align: right;">Chiều cao D: </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.chieuCaoD"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Chiều chìm d: </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.chieuChimD"/></td>
			<td style="text-align: right;">Mạn khô f: </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.manKhoF"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Vật liệu vỏ: </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.vatLieuVo"/></td>
			<td style="text-align: right;">Tổng dung tích: </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.tongDungTich"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Sức chở tối đa (tấn): </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.sucChoToiDa"/></td>
			<td style="text-align: right;">Tốc độ tự do (hải lý/h): </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.tocDoTuDo"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Ký hiệu máy: </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.kyHieuMay"/></td>
			<td style="text-align: right;">Số máy: </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.soMay"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Công suất (Mã lực): </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.congSuat"/></td>
			<td style="text-align: right;">Nơi chế tạo: </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.noiCheTao"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Cảng đăng ký: </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.cangDangKy"/></td>
			<td style="text-align: right;">Cơ quan đăng kiểm: </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.coQuanDangKiem"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">GCN ĐK tàu số: </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.giayCNDangKyTauSo"/></td>
			<td style="text-align: right;">Ngày cấp GCN ĐK tàu: </td>
			<td colspan="2"><s:date name="#element.taiSanTauKeoGheThuyen.ngayCapGiayCNDangKyTau" format="dd/MM/yyyy"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Nơi cấp GCN ĐK tàu: </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.noiCapGiayCNDangKyTau"/></td>
			<td style="text-align: right;">Số đăng ký cũ: </td>
			<td colspan="2"><s:property value="#element.taiSanTauKeoGheThuyen.soDangKyCu"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Ghi chú về tài sản: </td>
			<td colspan="2"><s:property value="#element.ghiChu"/></td>
		</tr>
	</tbody>
</table>
	    </s:elseif>
	    <s:elseif test="#element.loaiTaiSanID == 16">
	    <!-- Trái phiếu -->
	    <table width="100%" cellspacing="5" cellpadding="5" border="0"
	class="form">
	<tbody>
		<tr>
			<td style="text-align: right; width: 18%;">Tên phiếu tài sản: </td>
			<td style="width: 27%" colspan="2"><s:property value="#element.tenPhieuTaiSan"/>
			</td>
			<td style="text-align: right; width: 18%">Loại trái phiếu: </td>
			<td style="width: 27%" colspan="2"><s:property value="#element.taiSanTraiPhieu.loaiTraiPhieu"/>
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">Ngày phát hành: </td>
			<td colspan="2"><s:date name="#element.taiSanTraiPhieu.ngayPhatHanh" format="dd/MM/yyyy"/></td>
			<td style="text-align: right;">Nơi phát hành: </td>
			<td colspan="2"><s:property value="#element.taiSanTraiPhieu.noiPhatHanhTraiPhieu"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Mệnh giá: </td>
			<td colspan="2"><s:property value="#element.taiSanTraiPhieu.menhGia"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Kỳ hạn: </td>
			<td colspan="2"><s:property value="#element.taiSanTraiPhieu.kyHan"/></td>
			<td style="text-align: right;">Lãi suất: </td>
			<td colspan="2"><s:property value="#element.taiSanTraiPhieu.laiSuat"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Thời hạn thanh toán: </td>
			<td colspan="2"><s:property value="#element.taiSanTraiPhieu.thoiHanThanhToan"/></td>
			<td style="text-align: right;">Họ tên: </td>
			<td colspan="2"><s:property value="#element.taiSanTraiPhieu.hoTen"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Địa chỉ: </td>
			<td colspan="2"><s:property value="#element.taiSanTraiPhieu.diaChi"/></td>
			<td style="text-align: right;">Loại giấy tờ tùy thân: </td>
			<td colspan="2"><s:property value="#element.taiSanTraiPhieu.loaiGiayTo.loaiGiayToTen"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Số giấy tờ tùy thân: </td>
			<td colspan="2"><s:property value="#element.taiSanTraiPhieu.soGiayTo"/></td>
			<td style="text-align: right;">Ngày cấp giấy tờ tùy thân: </td>
			<td colspan="2"><s:date name="#element.taiSanTraiPhieu.ngayCapGiayTo" format="dd/MM/yyyy"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Nơi cấp giấy tờ tùy thân: </td>
			<td colspan="2"><s:property value="#element.taiSanTraiPhieu.noiCapGiayTo"/></td>
			<td style="text-align: right;">Ghi chú về tài sản: </td>
			<td colspan="2"><s:property value="#element.ghiChu"/></td>
		</tr>
	</tbody>
</table>
	    </s:elseif>
	  </div>
	</s:iterator>
</div>