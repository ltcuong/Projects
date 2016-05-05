<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<div id="frm_login">
		<div class="contain_header">
			<p>ĐĂNG NHẬP</p>
		</div>
		<div class="login">
			<ul>
				<li>
					<div class="row">
						<div class="label" style="text-align: right; padding-right: 3px;">Tên đăng nhập</div>
						<div class="input">
							<input style="border:1px solid #ccc" id="TaiKhoanUserID" type="text" name="taikhoan_dangnhap" value="admin" autocomplete="off" />
						</div>
					</div>
				</li>
				<li><div class="row">
						<div class="label" style="text-align: right; padding-right: 3px;">Mật khẩu</div>
						<div class="input">
							<input style="border:1px solid #ccc" id="TaiKhoanMatKhauID" type="password" name="taikhoan_matkhau" value="123456" autocomplete="off" onkeypress="loginAdmin(event)"/>
						</div>
					</div></li>
				<li>
					<div class="row">
						<div class="label">&nbsp;</div>
						<div class="input">
							<input style="float:left;" type="submit" value="Đăng nhập" id="BtnDangNhapID"/>
						</div>
					</div>
				</li>
				<li>
					<div class="message">
						<div class="message_content">														
							<table width="100%">
								<tbody>
									<tr id="LoginError1">
										<td><img
											style="border-width: 0px; padding-left: 5px; padding-top: 5px; height: 40px; width: 40px;"
											src="images/themedefault/info-message.png" id="imgMessage"></td>
										<td><span
											style="font-weight: bold; padding-top: 5px; padding-left: 5px;"
											id="lblMessage">Nhập tên đăng nhập và mật khẩu.</span>
											<div class="DisplayNone" id="updateProcessing">
												<div style="padding-left: 5px;">
													<img src="images/themedefault/ajax-loader.gif">
												</div>
											</div></td>
									</tr>
									<tr id="LoginError2" class="DisplayNone">
										<td><img
											style="border-width: 0px; padding-left: 5px; padding-top: 5px; height: 40px; width: 42px;"
											src="images/themedefault/alert.png" id="imgMessage"></td>
										<td><span
											style="font-weight: bold; padding-top: 5px; padding-left: 5px;"
											id="lblMessage">Tên đăng nhập hoặc mật khẩu không đúng.</span>
										</td>
									</tr>
									<tr id="LoginError3" class="DisplayNone">
										<td><img
											style="border-width: 0px; padding-left: 5px; padding-top: 5px; height: 40px; width: 42px;"
											src="images/themedefault/alert.png" id="imgMessage"></td>
										<td><span
											style="font-weight: bold; padding-top: 5px; padding-left: 5px;"
											id="lblMessage">Tài khoản đã bị khóa.</span>
										</td>
									</tr>
									<tr id="LoginError4" class="DisplayNone">
										<td><img
											style="border-width: 0px; padding-left: 5px; padding-top: 5px; height: 40px; width: 42px;"
											src="images/themedefault/alert.png" id="imgMessage"></td>
										<td><span
											style="font-weight: bold; padding-top: 5px; padding-left: 5px;"
											id="lblMessage">Chưa gắn thiết bị token.</span>
										</td>
									</tr>
									<tr id="LoginError5" class="DisplayNone">
										<td><img
											style="border-width: 0px; padding-left: 5px; padding-top: 5px; height: 40px; width: 42px;"
											src="images/themedefault/alert.png" id="imgMessage"></td>
										<td><span
											style="font-weight: bold; padding-top: 5px; padding-left: 5px;"
											id="lblMessage">Tài khoản thuộc nhóm này đã bị khóa.</span>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<input type="hidden" value='<s:property value="type"/>' id="typeHiddenID"/>
	<input type="hidden" value='<s:text name="login.text1"/>' id="logintext1id"/>
	<input type="hidden" value='<s:text name="login.text2"/>' id="logintext2id"/>
	<input type="hidden" value='<s:text name="login.text3"/>' id="logintext3id"/>