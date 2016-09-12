<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="org.jeecgframework.core.util.SysThemesUtil,org.jeecgframework.core.enums.SysThemesEnum"%>
<%@include file="/context/mytags.jsp"%>
<%
	session.setAttribute("lang", "zh-cn");
	SysThemesEnum sysTheme = SysThemesUtil.getSysTheme(request);
	String lhgdialogTheme = SysThemesUtil.getLhgdialogTheme(sysTheme);
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>InsiAP保险展业智能代理平台</title>

<meta name="description" content="InsiAP登录页面" />
<link rel="shortcut icon" href="images/favicon.ico">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet"
	href="plug-in/ace-insiap/assets/css/bootstrap.css" />
<link rel="stylesheet"
	href="plug-in/ace-insiap/components/font-awesome/css/font-awesome.css" />

<!-- text fonts -->
<link rel="stylesheet"
	href="plug-in/ace-insiap/assets/css/ace-fonts.css" />

<!-- ace styles -->
<link rel="stylesheet" href="plug-in/ace-insiap/assets/css/ace.css" />

<!--[if lte IE 9]>
			<link rel="stylesheet" href="plug-in/ace-insiap/assets/css/ace-part2.css" />
		<![endif]-->
<link rel="stylesheet" href="plug-in/ace-insiap/assets/css/ace-rtl.css" />

<!--[if lte IE 9]>
		  <link rel="stylesheet" href="plug-in/ace-insiap/assets/css/ace-ie.css" />
		<![endif]-->

<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

<!--[if lte IE 8]>
		<script src="plug-in/ace-insiap/components/html5shiv/dist/html5shiv.min.js"></script>
		<script src="plug-in/ace-insiap/components/respond/dest/respond.min.js"></script>
		<![endif]-->
</head>

<body class="login-layout light-login">
	<div class="main-container">
		<div class="main-content">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1">
					<div class="login-container">
						<div class="center">
							<h1>
								<i class="ace-icon fa fa-leaf green"></i> <span class="red">InsiAP</span>
							</h1>
							<h1>
								<span class="grey" id="id-text2">保险展业智能代理平台</span>
							</h1>
						</div>

						<div class="space-6"></div>

						<div class="position-relative">
							<div id="login-box"
								class="login-box visible widget-box no-border">
								<div class="widget-body">
									<form id="loinForm" class="form-horizontal"
										check="loginController.do?checkuser" role="form"
										action="loginController.do?login" method="post">
										<div class="widget-main">
											<div class="alert alert-warning alert-dismissible"
												role="alert" id="errMsgContiner">											
												<div id="showErrMsg"></div>
											</div>
											<h4 class="header blue lighter bigger">
												<i class="ace-icon fa fa-coffee green"></i> 用户登录
											</h4>
											<div class="space-6"></div>


											<fieldset>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="text" class="form-control" placeholder="请输入账号"
														name="userName" id="userName" value="admin" /> <i
														class="ace-icon fa fa-user"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="password" class="form-control" placeholder="请输入密码"
														name="password" id="password" value="123456" /> <i
														class="ace-icon fa fa-lock"></i>
												</span>
												</label> </label> <label class="block clearfix">
													<div class="input-group">
														<input type="text" style="width: 150px" name="randCode"
															class="form-control" placeholder="请输入验证码" id="randCode" />
														<span class="input-group-addon" style="padding: 0px;"><img
															id="randCodeImage" src="randCodeImage" /></span>
													</div>
												</label>
												<div class="space"></div>

												<div class="clearfix">
													<label class="inline"> <input type="checkbox"
														class="ace" id="on_off" name="remember" value="yes" /> <span
														class="lbl"> 记住账号</span>
													</label>

													<button type="button"
														class="width-35 pull-right btn btn-sm btn-primary"
														id="but_login" onclick="checkUser()">
														<i class="ace-icon fa fa-key"></i> <span
															class="bigger-110">登录</span>
													</button>
												</div>

												<div class="space-4"></div>
												<div style="float: right; display: none">
													<a href="#" class="forgot-password-link"> 语言 <i
														class="ace-icon fa fa-arrow-right"></i> <t:dictSelect
															id="langCode" field="langCode" typeGroupCode="lang"
															hasLabel="false"
															extendJson="{style:'padding:2px; width:80px;'}"
															defaultVal="zh-cn"></t:dictSelect>
													</a>
												</div>
											</fieldset>


											<div class="social-or-login center">
												<span class="bigger-110">其他登录方式</span>
											</div>

											<div class="space-6"></div>

											<div class="social-login center">
												<a class="btn btn-primary"> <i
													class="ace-icon fa fa-weixin"></i>
												</a> <a class="btn btn-info"> <i
													class="ace-icon fa fa-qq"></i>
												</a> <a class="btn btn-danger"> <i
													class="ace-icon fa fa-weibo"></i>
												</a>
											</div>
										</div>
										<!-- /.widget-main -->

										<div class="toolbar clearfix">
											<div>
												<a href="#" data-target="#forgot-box"
													class="forgot-password-link"> <i
													class="ace-icon fa fa-arrow-left"></i> 忘记密码
												</a>
											</div>

											<div>
												<a href="#" data-target="#signup-box"
													class="user-signup-link"> 注册账号 <i
													class="ace-icon fa fa-arrow-right"></i>
												</a>
											</div>
										</div>
								</div>
								</form>
								<!-- /.widget-body -->
							</div>
							<div class="center">
								<h4 class="blue" id="id-company-text">&copy; 易保网通</h4>
							</div>
							<!-- /.login-box -->

							<div id="forgot-box" class="forgot-box widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">
										<h4 class="header red lighter bigger">
											<i class="ace-icon fa fa-key"></i> 获取密码
										</h4>

										<div class="space-6"></div>
										<p>请输入您的邮箱获取验证信息</p>

										<form>
											<fieldset>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="email" class="form-control" placeholder="邮箱" />
														<i class="ace-icon fa fa-envelope"></i>
												</span>
												</label>

												<div class="clearfix">
													<button type="button"
														class="width-35 pull-right btn btn-sm btn-danger">
														<i class="ace-icon fa fa-lightbulb-o"></i> <span
															class="bigger-110">发给我！</span>
													</button>
												</div>
											</fieldset>
										</form>
									</div>
									<!-- /.widget-main -->

									<div class="toolbar center">
										<a href="#" data-target="#login-box"
											class="back-to-login-link"> 返回登录 <i
											class="ace-icon fa fa-arrow-right"></i>
										</a>
									</div>
								</div>
								<!-- /.widget-body -->
							</div>
							<!-- /.forgot-box -->

							<div id="signup-box" class="signup-box widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">
										<h4 class="header green lighter bigger">
											<i class="ace-icon fa fa-users blue"></i> 新账号注册
										</h4>

										<div class="space-6"></div>
										<p>请输入您的注册信息：</p>

										<form>
											<fieldset>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="email" class="form-control" placeholder="邮箱" />
														<i class="ace-icon fa fa-envelope"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="text" class="form-control" placeholder="账号" />
														<i class="ace-icon fa fa-user"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="password" class="form-control"
														placeholder="密码" /> <i class="ace-icon fa fa-lock"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="password" class="form-control"
														placeholder="确认密码" /> <i
														class="ace-icon fa fa-retweet"></i>
												</span>
												</label> <label class="block"> <input type="checkbox"
													class="ace" /> <span class="lbl"> 同意 <a
														href="#">用户服务条款</a>
												</span>
												</label>

												<div class="space-24"></div>

												<div class="clearfix">
													<button type="reset" class="width-30 pull-left btn btn-sm">
														<i class="ace-icon fa fa-refresh"></i> <span
															class="bigger-110">重置</span>
													</button>

													<button type="button"
														class="width-65 pull-right btn btn-sm btn-success">
														<span class="bigger-110">注册</span> <i
															class="ace-icon fa fa-arrow-right icon-on-right"></i>
													</button>
												</div>
											</fieldset>
										</form>
									</div>

									<div class="toolbar center">
										<a href="#" data-target="#login-box"
											class="back-to-login-link"> <i
											class="ace-icon fa fa-arrow-left"></i> 返回登录
										</a>
									</div>
								</div>
								<!-- /.widget-body -->
							</div>
							<!-- /.signup-box -->
						</div>
						<!-- /.position-relative -->

						<div class="navbar-fixed-top align-right">
							<br /> 
							&nbsp; 
							<a id="btn-login-light" href="#">Light</a>
							&nbsp; 
							<span class="blue">/</span> 
							&nbsp; 
							<a id="btn-login-blur" href="#">Blur</a>
							&nbsp; 
							<span class="blue">/</span> 
							&nbsp; 
							<a id="btn-login-dark" href="#">Dark</a>  
							&nbsp; &nbsp; &nbsp;
						</div>
					</div>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.main-content -->
	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->

	<!--[if !IE]> -->
	<script src="plug-in/ace-insiap/components/jquery/dist/jquery.js"></script>

	<!-- <![endif]-->

	<!--[if IE]>
<script src="plug-in/ace-insiap/components/jquery.1x/dist/jquery.js"></script>
<![endif]-->
	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document
					.write("<script src='plug-in/ace-insiap/components/_mod/jquery.mobile.custom/jquery.mobile.custom.js'>"
							+ "<"+"/script>");
	</script>

	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		jQuery(function($) {
			$(document).on('click', '.toolbar a[data-target]', function(e) {
				e.preventDefault();
				var target = $(this).data('target');
				$('.widget-box.visible').removeClass('visible');//hide others
				$(target).addClass('visible');//show target
			});
		});

		//you don't need this, just used for changing background
		jQuery(function($) {
			$('#btn-login-dark').on('click', function(e) {
				$('body').attr('class', 'login-layout');
				$('#id-text2').attr('class', 'white');
				$('#id-company-text').attr('class', 'blue');

				e.preventDefault();
			});
			$('#btn-login-light').on('click', function(e) {
				$('body').attr('class', 'login-layout light-login');
				$('#id-text2').attr('class', 'grey');
				$('#id-company-text').attr('class', 'blue');

				e.preventDefault();
			});
			$('#btn-login-blur').on('click', function(e) {
				$('body').attr('class', 'login-layout blur-login');
				$('#id-text2').attr('class', 'white');
				$('#id-company-text').attr('class', 'light-blue');

				e.preventDefault();
			});

		});
	</script>
	<script type="text/javascript">
		$(function() {
			optErrMsg();
		});
		$("#errMsgContiner").hide();
		function optErrMsg() {
			$("#showErrMsg").html('');
			$("#errMsgContiner").hide();
		}

		//输入验证码，回车登录
		$(document).keydown(function(e) {
			if (e.keyCode == 13) {
				$("#but_login").click();
			}
		});

		//验证用户信息
		function checkUser() {
			if (!validForm()) {
				return false;
			}
			newLogin();
		}
		//表单验证
		function validForm() {
			if ($.trim($("#userName").val()).length == 0) {
				showErrorMsg("请输入账号");
				return false;
			}

			if ($.trim($("#password").val()).length == 0) {
				showErrorMsg("请输入密码");
				return false;
			}

			if ($.trim($("#randCode").val()).length == 0) {
				showErrorMsg("请输入验证码");
				return false;
			}
			return true;
		}

		//登录处理函数
		function newLogin(orgId) {
			setCookie();
			var actionurl = $('form').attr('action');//提交路径
			var checkurl = $('form').attr('check');//验证路径
			var formData = new Object();
			var data = $(":input").each(function() {
				formData[this.name] = $("#" + this.name).val();
			});
			formData['orgId'] = orgId ? orgId : "";
			//语言
			formData['langCode'] = $("#langCode").val();
			formData['langCode'] = $("#langCode option:selected").val();
			$
					.ajax({
						async : false,
						cache : false,
						type : 'POST',
						url : checkurl,// 请求的action路径
						data : formData,
						error : function() {// 请求失败处理函数
						},
						success : function(data) {
							$("#errMsgContiner").show();
							$("#showErrMsg").html("正在登录...");
							var d = $.parseJSON(data);
							if (d.success) {
								if (d.attributes.orgNum > 1) {
									//用户拥有多个部门，需选择部门进行登录
									var title, okButton;
									if ($("#langCode").val() == 'en') {
										title = "Please select Org";
										okButton = "Ok";
									} else {
										title = "请选择组织机构";
										okButton = "确定";
									}
									$
											.dialog({
												id : 'LHG1976D',
												title : title,
												max : false,
												min : false,
												drag : false,
												resize : false,
												content : 'url:userController.do?userOrgSelect&userId='
														+ d.attributes.user.id,
												lock : true,
												button : [ {
													name : okButton,
													focus : true,
													callback : function() {
														iframe = this.iframe.contentWindow;
														var orgId = $('#orgId',
																iframe.document)
																.val();
														formData['orgId'] = orgId ? orgId
																: "";
														$
																.ajax({
																	async : false,
																	cache : false,
																	type : 'POST',
																	url : 'loginController.do?changeDefaultOrg',// 请求的action路径
																	data : formData,
																	error : function() {// 请求失败处理函数
																	},
																	success : function(
																			data) {
																		window.location.href = actionurl;
																	}
																});
														this.close();
														return false;
													}
												} ],
												close : function() {
													setTimeout(
															"window.location.href='"
																	+ actionurl
																	+ "'", 10);
												}
											});
								} else {
									window.location.href = actionurl;
								}
							} else {
								showErrorMsg(d.msg);
							}
						}
					});
		}
		//登录提示消息显示
		function showErrorMsg(msg) {
			$("#errMsgContiner").show();
			$("#showErrMsg").html(msg);
			window.setTimeout(optErrMsg, 5000);
		}
		/**
		 * 刷新验证码
		 */
		$('#randCodeImage').click(function() {
			reloadRandCodeImage();
		});
		function reloadRandCodeImage() {
			var date = new Date();
			var img = document.getElementById("randCodeImage");
			img.src = 'randCodeImage?a=' + date.getTime();
		}

		
		//设置cookie
		function setCookie() {
			if ($('#on_off').val() == '1') {
				$("input[iscookie='true']").each(function() {
					$.cookie(this.name, $("#" + this.name).val(), "/", 24);
					$.cookie("COOKIE_NAME", "true", "/", 24);
				});
			} else {
				$("input[iscookie='true']").each(function() {
					$.cookie(this.name, null);
					$.cookie("COOKIE_NAME", null);
				});
			}
		}
		//读取cookie
		function getCookie() {
			var COOKIE_NAME = $.cookie("COOKIE_NAME");
			if (COOKIE_NAME != null) {
				$("input[iscookie='true']").each(function() {
					$($("#" + this.name).val($.cookie(this.name)));
					if ("admin" == $.cookie(this.name)) {
						$("#randCode").focus();
					} else {
						$("#password").val("");
						$("#password").focus();
					}
				});
				$("#on_off").attr("checked", true);
				$("#on_off").val("1");
			} else {
				$("#on_off").attr("checked", false);
				$("#on_off").val("0");
				$("#randCode").focus();
			}
		}
	</script>
	<%=lhgdialogTheme%>
</body>
</html>