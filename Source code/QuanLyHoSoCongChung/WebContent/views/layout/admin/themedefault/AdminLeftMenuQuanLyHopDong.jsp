<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="barInner">
	<div>
		<ul class="navigation">
			<li><a href="../quanlyhopdong/HDCapNhatThongTinHopDong" <s:if test="subAction == 'CTQuanLyNhomChiTieu'">class="active"</s:if>>Tạo mới hợp đồng</a></li>
			<li><a href="../quanlyhopdong/HDCapNhatMauHopDong" <s:if test="subAction == 'HDCapNhatMauHopDong'">class="active"</s:if>>Cập nhật mẫu hợp đồng</a></li>
		</ul>
	</div>
</div>