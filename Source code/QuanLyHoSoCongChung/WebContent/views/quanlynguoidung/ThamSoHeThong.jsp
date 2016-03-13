<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<script type="text/javascript" src="../js/quanlynguoidung/thamsohethong.js"></script>
<div class="col_right">
	<div class="box-content">
		<div class="col_right">
			<div class="achor_link"><img src="../images/Home.png" height="16px;" width="16px;"/> Quản lý người dùng <img src="../images/Next.png"/> Tham số hệ
				thống</div>
			<div class="box-content">
				<div id="dvMain">
					<div id="main">
						<div class="boxErrorInform DisplayNone" id="BoxError">
							<table width="100%" cellspacing="0px" cellpadding="0px"
								border="0px" class="form">
								<tbody>
									<tr>
										<td style="width: 5%; text-align: center;"><img
											width="30px" height="30px" src="../images/errorIcon.gif"
											alt="ERROR"></td>
										<td style="width: 90%" id="IDErrorForm"></td>
									</tr>
								</tbody>
							</table>
						</div>

						<div id="form">
							<table class="form" border="0" cellpadding="0" cellspacing="5"
								width="100%">
								<tbody>
									<tr>
										<td style="width: 10%; text-align: right; color: Blue">Giá
											trị</td>
										<td ><input name="" id="PramValueID" class="w-200"
											type="text" /></td>
									</tr>
									<tr>
										<td style="width: 10%"></td>
										<td style="text-align: left">
										<s:if test="isEdit == 1">
										<input name="" value="Cập nhật" id="btnCapNhatID" class="btn_over"
											type="submit" /></s:if></td>
										<td style="text-align: left"></td>
										<td style="width: 25%"></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div id="dtgView" style="margin-top: 10px;">							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<input type="hidden" value="" id="ParamHiddenID" />
<input type="hidden" value="<s:text name="thamsohethong.text1"/>" id="ThamSoHeThongText1ID" />
<input type="hidden" value="<s:text name="thamsohethong.text2"/>" id="ThamSoHeThongText2ID" />
<input type="hidden" value="<s:text name="info.text3"/>" id="InfoText3" />

