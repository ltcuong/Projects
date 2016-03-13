<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<option value="">--- Chọn ---</option>
<s:iterator value="listTaiKhoan" var="element">
<option value='<s:property value="#element.tenDangNhap"/>' ><s:property value="#element.tenDangNhap"/></option>
</s:iterator>