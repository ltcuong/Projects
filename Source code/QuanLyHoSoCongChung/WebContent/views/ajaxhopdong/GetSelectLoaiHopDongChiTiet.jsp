<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<option value="0">--- Chọn ---</option>
<s:iterator value="listLoaiHopDongChiTiet" var="element">
	<option value='<s:property value="loaiHopDongChiTietID"/>' coTaiSan='<s:property value="#element.coTaiSan"/>' 
	coBenThu3='<s:property value="#element.coBenThu3"/>' 
	coTaiSanTuongLai='<s:property value="#element.coTaiSanTuongLai"/>' coTaiSanGanLien='<s:property value="#element.coTaiSanGanLien"/>'>
		<s:property value="loaiHopDongChiTietTen"/>
	</option>		
</s:iterator>
