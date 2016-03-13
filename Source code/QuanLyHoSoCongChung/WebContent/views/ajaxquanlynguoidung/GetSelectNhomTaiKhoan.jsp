<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<option value="0">--- Chọn ---</option>
<s:iterator value="listNhomTaiKhoan" var="element">
<option value='<s:property value="#element.nhomID"/>' ><s:property value="#element.nhomTen"/></option>
</s:iterator>