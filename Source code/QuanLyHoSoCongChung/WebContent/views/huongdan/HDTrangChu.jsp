<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<div class="col_right">
	<div class="box-content">
		<div>
			<div class="col_right">
				<div class="achor_link"><img src="../images/Home.png" height="16px;" width="16px;" />Phần mềm quản lý tổng hợp dữ liệu ngành Y tế <img src="../images/Next.png"/> Hướng dẫn sử dụng</div>
				<div class="box-content">
				<table width="100%" cellspacing="5" cellpadding="5" border="0" class="form">
						<tbody>	
							<tr>								
								<td colspan="6">
								<p style="color:#e60200;"><strong>Tải tài liệu hướng dẫn sử dụng</strong></p>
								</td>
							</tr>	
							<s:if test="memberShip.getTenDangNhap() == 'admin'">
							<tr>
								<td style="text-align: left;">- Tài liệu hướng dẫn sử dụng cho quản trị hệ thống <a href="../userfile/soyte/HDSD_SYTNINHTHUAN_ADMIN.docx">(tải xuống)</a></td>
							</tr>
							</s:if>	
							<tr>
								<td style="text-align: left;">- Tài liệu hướng dẫn sử dụng phần mềm <a href="../userfile/soyte/HDSD_SYTNINHTHUAN_NGUOIDUNG.docx">(tải xuống)</a></td>
							</tr>
						</tbody>
					</table> 
			</div>

		</div>
	</div>
</div>
</div>