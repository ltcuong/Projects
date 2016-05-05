<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<option value="0">--- Chọn ---</option>
<s:iterator value="listLoaiTaiSan" var="element">
	<option value='<s:property value="loaiTaiSanID"/>' coGiaoDichMotPhan='<s:property value="coGiaoDichMotPhan"/>' ><s:property value="loaiTaiSanTen"/></option>		
</s:iterator>
