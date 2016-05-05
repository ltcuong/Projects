<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<option value="0">--- Chọn ---</option>
<s:iterator value="listXa" var="element">
	<option value='<s:property value="xaID"/>' ><s:property value="xaTen"/></option>		
</s:iterator>