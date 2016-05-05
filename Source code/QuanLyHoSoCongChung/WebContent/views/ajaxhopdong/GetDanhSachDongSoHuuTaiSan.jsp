<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div id="accordionDongSohuu">
	<s:iterator value="listDongSoHuuTaiSan" var="element">
		<h3>Họ và tên: <s:property value="#element.hoTen"/> - Số giấy tờ: <s:property value="#element.soGiayTo"/></h3>
	  	<div>
	    	<table width="100%" cellspacing="5" cellpadding="0" border="0" class="form">
	<tbody>
		<tr>
			<td style="text-align: right;  width: 18%">Họ và tên: </td>
			<td colspan="2" style="width: 27%"><s:property value="#element.hoTen"/></td>
			<td style="text-align: right; width: 18% ; ">Ngày sinh: </td>
			<td colspan="2" style="width: 27%; text-align: left;"><s:if test="#element.ngaySinh != null"><s:date name="#element.ngaySinh" format="dd/MM/yyyy"/></s:if><s:else><s:property value="#element.namSinh"/></s:else></td>
		</tr>
		<tr>
			<td style="text-align: right; ">Loại giấy tờ: </td>
			<td colspan="2"><s:property value="#element.loaiGiayTo.loaiGiayToTen"/></td>
			<td style="text-align: right; ">Số giấy tờ: </td>
			<td colspan="2"><s:property value="#element.soGiayTo"/></td>
		</tr>
		<tr>
			<td style="text-align: right; ">Ngày cấp: </td>
			<td colspan="2"><s:date name="#element.ngayCapGiayTo" format="dd/MM/yyyy"/></td>
			<td style="text-align: right; ">Nơi cấp: </td>
			<td colspan="2"><s:property value="#element.noiCapGiayTo"/></td>
		</tr>
		<tr>
			<td style="text-align: right; ">Tỉnh/thành thường trú: </td>
			<td colspan="2"><s:property value="#element.tinhThuongTru.tinhTen"/></td>
			<td style="text-align: right; ">Quận/huyện thường trú: </td>
			<td colspan="2"><s:property value="#element.huyenThuongTru.huyenTen"/></td>
		</tr>
		<tr>
			<td style="text-align: right; ">Phường/xã thường trú: </td>
			<td colspan="2"><s:property value="#element.xaThuongTru.xaTen"/></td>
			<td style="text-align: right;">Số nhà/đường phố: </td>
			<td colspan="2"><s:property value="#element.soNhaThuongTru"/></td>
		</tr>
		<tr>
			<td style="text-align: right;">Địa chỉ liên hệ: </td>
			<td colspan="2"><s:property value="#element.diaChiLienHe"/></td>
		</tr>
	</tbody>
</table>
	 	</div>
	</s:iterator>
</div>