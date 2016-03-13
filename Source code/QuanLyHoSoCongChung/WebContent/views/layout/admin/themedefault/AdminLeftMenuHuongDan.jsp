<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="barInner">
	<div>
		<ul class="navigation">
			<li><a href="../huongdan/HDTrangChu" <s:if test="subAction == 'HDTrangChu'">class="active"</s:if>>Hướng dẫn sử dụng</a></li>
			<li><a href="../huongdan/HDTaiFileImport" <s:if test="subAction == 'HDTaiFileImport'">class="active"</s:if>>Tải tệp tin import</a></li>
		</ul>
	</div>
</div>