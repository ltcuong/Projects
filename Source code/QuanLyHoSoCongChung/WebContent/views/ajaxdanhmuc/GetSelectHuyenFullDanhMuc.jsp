<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<select class="w-200" id="SelectHuyenIDFull" onchange="changeSelectedHuyen();" name="huyen_maso">
	<s:iterator value="listHuyen" var="element">
		<option value='<s:property value="huyenID"/>' ><s:property value="huyenTen"/></option>		
	</s:iterator>
</select>
