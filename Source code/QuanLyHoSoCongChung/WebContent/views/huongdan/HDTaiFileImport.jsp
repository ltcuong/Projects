<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<script type="text/javascript" src="../js/chitieu/quanlydulieuchitieutufile.js"></script>

<div class="col_right">
	<div class="box-content">
		<div>
			<div class="col_right">
				<div class="achor_link"><img src="../images/Home.png" height="16px;" width="16px;" />Phần mềm quản lý tổng hợp dữ liệu ngành Y tế <img src="../images/Next.png"/> Tải tệp tin import</div>
				<div class="box-content">
				<table width="100%" cellspacing="5" cellpadding="5" border="0" class="form">
						<tbody>	
							<tr>								
								<td>
								<p style="color:#e60200;"><strong>Tải tệp tin chỉ tiêu import</strong></p>
								</td>
							</tr>	
							<tr>
								<td style="text-align: left; color: Blue;"><a href="javascript:void(0);" onclick="downloadFileImportChiTieu(1)"> - Chỉ tiêu đơn vị thuộc huyện</a></td>
							</tr>
							<tr>
								<td style="text-align: left; color: Blue;"><a href="javascript:void(0);" onclick="downloadFileImportChiTieu(2)"> - Chỉ tiêu đơn vị thuộc tỉnh</a></td>
							</tr>
							<tr>
								<td style="text-align: left; color: Blue;"><a href="javascript:void(0);" onclick="downloadFileImportChiTieu(3)"> - Chỉ tiêu tuyến xã</a></td>
							</tr>
							<tr>
								<td style="text-align: left; color: Blue;" ><a href="javascript:void(0);" onclick="downloadFileImportChiTieu(4)"> - Chỉ tiêu tuyến huyện</a></td>
							</tr>
							<tr>
								<td style="text-align: left; color: Blue;"><a href="javascript:void(0);" onclick="downloadFileImportChiTieu(5)"> - Chỉ tiêu tuyến tỉnh</a></td>
							</tr>
						</tbody>
					</table> 
			</div>

		</div>
	</div>
</div>
</div>