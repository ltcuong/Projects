<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<option value="0">--- Chọn ---</option>
<s:iterator value="listHuyen" var="element">
	<option value='<s:property value="huyenID"/>' ><s:property value="huyenTen"/></option>		
</s:iterator>