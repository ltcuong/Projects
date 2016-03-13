<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<script type="text/javascript" src="../js/quanlynguoidung/saoluudulieu.js"></script>

<div class="col_right">
	<div class="box-content">
		<div class="col_right">
			<div class="achor_link">
				<img src="../images/Home.png" height="16px;" width="16px;"> Quản lý người dùng <img src="../images/Next.png"> Sao lưu dữ liệu
			</div>
			<div class="box-content">
				<div id="dvMain">
					<div id="main">
						<div id="form">
							<form id="thongTinCoBanForm" method="get" action=""  autocomplete="off">
						<fieldset>
							<table class="form" border="0" cellpadding="0" cellspacing="5"
								width="100%">
								<tbody>
									<tr>
										<td style="text-align: center"><input value="Sao lưu cơ sở dữ liệu" onclick="saoLuuDuLieu()" id="btnSearch" class="btn_over" type="button" /></td>
									</tr>
								</tbody>
							</table>
							</fieldset>
							</form>
						</div>
						<div id="">
						<p><strong>Danh sách nhật ký sao lưu dữ liệu</strong></p>
						<table rules="all" id="" style="width: 100%; border-collapse: collapse;" border="1" cellspacing="0">
							<thead>
							<tr style="background-color: White;">
									<th scope="col" style="color: White; background-color: Green; width: 30px;">STT</th>
									<th scope="col" style="color: White; background-color: Green;">Tên tệp tin</th>
									<th scope="col" style="color: White; background-color: Green;">Thời gian sao lưu</th>
									<th scope="col" style="color: White; background-color: Green;">Người sao lưu</th>
									<th scope="col" style="color: White; background-color: Green;">&nbsp;</th>
									<th scope="col" style="color: White; background-color: Green;">&nbsp;</th>
								</tr>
							</thead>
							<tbody id="DanhSachSaoLuuID">
								<s:iterator value="listSaoLuu" status="row" var="element">
								<tr>
									<td align="center"><s:property value="#row.index + 1" /></td>
									<td align="left">
										<s:property value="#element.tenSaoLuu" />
									</td>
									<td align="center">
										<s:date name="#element.ngaySaoLuu" format="dd/MM/yyyy hh:mm:ss a"/>
									</td>
									<td align="center">
										<s:property value="#element.taiKhoanSaoLuu" />
									</td>
									<td style="text-decoration: underline;" align="center">
										<a href="../../LuuTruData/<s:property value="#element.duongDan" />" >Tải xuống</a> 
									</td>
									<td style="text-decoration: underline;" align="center">
										<a href="javascript:void(0);" onclick="xoaNhatKySaoLuuDuLieu(<s:property value="#element.saoLuuID" />)">Xoá</a> 
									</td>
								</tr>
								</s:iterator>
								<s:if test="totalPage > 0">
									<tr>
										<td colspan="6"><table border="0" style="width: 100%">
												<tbody>
													<tr>
														<s:if test="page - 1 > 0">
														<td><a href="javascript:void(0)"  onclick="getListNhatKySaoLuu('1');">&laquo;</a></td>
															<td  align="center"><a href="javascript:void(0)"
																onclick="getListNhatKySaoLuu('<s:property value="page -1"/>');">&lt;</a></td>
														</s:if>
														<s:iterator begin="page" end="endPage" var="navi">
															<s:if test="#navi == page">
																<td  align="center"><s:property /></td>
															</s:if>
															<s:else>
																<td  align="center"><a href="javascript:void(0);"
																	onclick="getListNhatKySaoLuu('<s:property/>');"
																	title="<s:property/>"><s:property /></a></td>
															</s:else>
														</s:iterator>
														<s:if test="totalPage > endPage">
															<td  align="center"><a href="javascript:void(0)"
																onclick="getListNhatKySaoLuu('<s:property value="page + 1"/>');">&gt;</a></td>
																<td><a href="javascript:void(0)"  onclick="getListNhatKySaoLuu('<s:property value="endPage"/>');">&raquo;</a></td>
														</s:if>
													</tr>
												</tbody>
											</table></td>
									</tr>
								</s:if>
							</tbody>
						</table>
						</div>	
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<input type ="hidden" value="Sao lưu cơ sở dữ liệu thành công." id="TextID01"/>
<input type ="hidden" value="Sao lưu cơ sở dữ liệu thất bại" id="TextID02"/>
<input type ="hidden" value="Thư mục chứa cơ sở dữ liệu không tồn tại. Xin vui lòng kiểm tra lại" id="TextID03"/>