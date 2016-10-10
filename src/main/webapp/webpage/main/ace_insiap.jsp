<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>InsiAP保险展业智能代理平台</title>
<link rel="shortcut icon" href="images/favicon.ico">
<meta name="description" content="InsiAP保险展业智能代理平台" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<!-- bootstrap & fontawesome -->
<link rel="stylesheet"
	href="plug-in/ace-insiap/assets/css/bootstrap.css" />
<link rel="stylesheet"
	href="plug-in/ace-insiap/components/font-awesome/css/font-awesome.min.css" />

<!-- page specific plugin styles -->

<!-- text fonts -->
<link rel="stylesheet"
	href="plug-in/ace-insiap/assets/css/ace-fonts.css" />

<!-- ace styles -->
<link rel="stylesheet" href="plug-in/ace-insiap/assets/css/ace.css"
	class="ace-main-stylesheet" id="main-ace-style" />

<!--[if lte IE 9]>
			<link rel="stylesheet" href="plug-in/ace-insiap/assets/css/ace-part2.css" class="ace-main-stylesheet" />
		<![endif]-->
<link rel="stylesheet"
	href="plug-in/ace-insiap/assets/css/ace-skins.css" />
<link rel="stylesheet" href="plug-in/ace-insiap/assets/css/ace-rtl.css" />

<!--[if lte IE 9]>
		  <link rel="stylesheet" href="plug-in/ace-insiap/assets/css/ace-ie.css" />
		<![endif]-->

<!-- inline styles related to this page -->

<!-- ace settings handler -->
<script src="plug-in/ace-insiap/assets/js/ace-extra.js"></script>

<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

<!--[if lte IE 8]>
		<script src="plug-in/ace-insiap/components/html5shiv/dist/html5shiv.min.js"></script>
		<script src="plug-in/ace-insiap/components/respond/dest/respond.min.js"></script>
		<![endif]-->
</head>

<body class="no-skin">
	<!-- #section:basics/navbar.layout -->
	<div id="navbar" class="navbar navbar-default          ace-save-state">
		<div class="navbar-container ace-save-state" id="navbar-container">
			<!-- #section:basics/sidebar.mobile.toggle -->
			<button type="button" class="navbar-toggle menu-toggler pull-left"
				id="menu-toggler" data-target="#sidebar">
				<span class="sr-only">切换侧边栏</span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>

			<!-- /section:basics/sidebar.mobile.toggle -->
			<div class="navbar-header pull-left">
				<!-- #section:basics/navbar.layout.brand -->
				<a href="#" class="navbar-brand"> <small> <i
						class="fa fa-leaf"></i> InsiAP
				</small>
				</a>

				<!-- /section:basics/navbar.layout.brand -->

				<!-- #section:basics/navbar.toggle -->

				<!-- /section:basics/navbar.toggle -->
			</div>

			<!-- #section:basics/navbar.dropdown -->
			<div class="navbar-buttons navbar-header pull-right"
				role="navigation">
				<ul class="nav ace-nav">
					<li class="grey dropdown-modal"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <i
							class="ace-icon fa fa-tasks"></i> <span class="badge badge-grey">4</span>
					</a>

						<ul
							class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header"><i class="ace-icon fa fa-check"></i>
								还有4个任务要完成</li>

							<li class="dropdown-content">
								<ul class="dropdown-menu dropdown-navbar">
									<li><a href="#">
											<div class="clearfix">
												<span class="pull-left">软件更新</span> <span class="pull-right">65%</span>
											</div>

											<div class="progress progress-mini">
												<div style="width: 65%" class="progress-bar"></div>
											</div>
									</a></li>

									<li><a href="#">
											<div class="clearfix">
												<span class="pull-left">硬件升级</span> <span class="pull-right">35%</span>
											</div>

											<div class="progress progress-mini">
												<div style="width: 35%"
													class="progress-bar progress-bar-danger"></div>
											</div>
									</a></li>

									<li><a href="#">
											<div class="clearfix">
												<span class="pull-left">单元测试</span> <span class="pull-right">15%</span>
											</div>

											<div class="progress progress-mini">
												<div style="width: 15%"
													class="progress-bar progress-bar-warning"></div>
											</div>
									</a></li>

									<li><a href="#">
											<div class="clearfix">
												<span class="pull-left">错误修复</span> <span class="pull-right">90%</span>
											</div>

											<div class="progress progress-mini progress-striped active">
												<div style="width: 90%"
													class="progress-bar progress-bar-success"></div>
											</div>
									</a></li>
								</ul>
							</li>

							<li class="dropdown-footer"><a href="#"> 查看任务详情 <i
									class="ace-icon fa fa-arrow-right"></i>
							</a></li>
						</ul></li>

					<li class="purple dropdown-modal"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <i
							class="ace-icon fa fa-bell icon-animated-bell"></i> <span
							class="badge badge-important">8</span>
					</a>

						<ul
							class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header"><i
								class="ace-icon fa fa-exclamation-triangle"></i> 8 条通知</li>

							<li class="dropdown-content">
								<ul class="dropdown-menu dropdown-navbar navbar-pink">
									<li><a href="#">
											<div class="clearfix">
												<span class="pull-left"> <i
													class="btn btn-xs no-hover btn-pink fa fa-comment"></i> New
													Comments
												</span> <span class="pull-right badge badge-info">+12</span>
											</div>
									</a></li>

									<li><a href="#"> <i
											class="btn btn-xs btn-primary fa fa-user"></i> Bob just
											signed up as an editor ...
									</a></li>

									<li><a href="#">
											<div class="clearfix">
												<span class="pull-left"> <i
													class="btn btn-xs no-hover btn-success fa fa-shopping-cart"></i>
													New Orders
												</span> <span class="pull-right badge badge-success">+8</span>
											</div>
									</a></li>

									<li><a href="#">
											<div class="clearfix">
												<span class="pull-left"> <i
													class="btn btn-xs no-hover btn-info fa fa-twitter"></i>
													Followers
												</span> <span class="pull-right badge badge-info">+11</span>
											</div>
									</a></li>
								</ul>
							</li>

							<li class="dropdown-footer"><a href="#"> 查看全部 <i
									class="ace-icon fa fa-arrow-right"></i>
							</a></li>
						</ul></li>

					<li class="green dropdown-modal"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <i
							class="ace-icon fa fa-envelope icon-animated-vertical"></i> <span
							class="badge badge-success">5</span>
					</a>

						<ul
							class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header"><i
								class="ace-icon fa fa-envelope-o"></i> 5条消息</li>

							<li class="dropdown-content">
								<ul class="dropdown-menu dropdown-navbar">
									<li><a href="#" class="clearfix"> <img
											src="plug-in/ace-insiap/assets/avatars/avatar.png"
											class="msg-photo" alt="Alex's Avatar" /> <span
											class="msg-body"> <span class="msg-title"> <span
													class="blue">Alex:</span> Ciao sociis natoque penatibus et
													auctor ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>a moment
														ago</span>
											</span>
										</span>
									</a></li>

									<li><a href="#" class="clearfix"> <img
											src="plug-in/ace-insiap/assets/avatars/avatar3.png"
											class="msg-photo" alt="Susan's Avatar" /> <span
											class="msg-body"> <span class="msg-title"> <span
													class="blue">Susan:</span> Vestibulum id ligula porta felis
													euismod ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>20 minutes
														ago</span>
											</span>
										</span>
									</a></li>

									<li><a href="#" class="clearfix"> <img
											src="plug-in/ace-insiap/assets/avatars/avatar4.png"
											class="msg-photo" alt="Bob's Avatar" /> <span
											class="msg-body"> <span class="msg-title"> <span
													class="blue">Bob:</span> Nullam quis risus eget urna mollis
													ornare ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>3:15 pm</span>
											</span>
										</span>
									</a></li>

									<li><a href="#" class="clearfix"> <img
											src="plug-in/ace-insiap/assets/avatars/avatar2.png"
											class="msg-photo" alt="Kate's Avatar" /> <span
											class="msg-body"> <span class="msg-title"> <span
													class="blue">Kate:</span> Ciao sociis natoque eget urna
													mollis ornare ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>1:33 pm</span>
											</span>
										</span>
									</a></li>

									<li><a href="#" class="clearfix"> <img
											src="plug-in/ace-insiap/assets/avatars/avatar5.png"
											class="msg-photo" alt="Fred's Avatar" /> <span
											class="msg-body"> <span class="msg-title"> <span
													class="blue">Fred:</span> Vestibulum id penatibus et auctor
													...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>10:09 am</span>
											</span>
										</span>
									</a></li>
								</ul>
							</li>

							<li class="dropdown-footer"><a href="inbox.html"> 查看所有消息
									<i class="ace-icon fa fa-arrow-right"></i>
							</a></li>
						</ul></li>

					<!-- #section:basics/navbar.user_menu -->
					<li class="light-blue dropdown-modal"><a
						data-toggle="dropdown" href="#" class="dropdown-toggle"> <img
							class="nav-user-photo"
							src="plug-in/ace-insiap/assets/avatars/user.jpg"
							alt="Jason's Photo" /> <span class="user-info"> <small>${userName }</small>
								<span style="color: #666633">${roleName }</span>
						</span> <i class="ace-icon fa fa-caret-down"></i>
					</a>

						<ul
							class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
							<li><a
								href="javascript:add('<t:mutiLang langKey="common.change.password"/>','userController.do?changepassword','',550,200)">
									<i class="ace-icon fa fa-key"></i> <t:mutiLang
										langKey="common.change.password" />
							</a></li>

							<li><a
								href="javascript:openwindow('<t:mutiLang langKey="common.profile"/>','userController.do?userinfo')">
									<i class="ace-icon fa fa-user"></i> <t:mutiLang
										langKey="common.profile" />
							</a></li>

							<li class="divider"></li>

							<li><a
								href="javascript:openwindow('<t:mutiLang langKey="common.ssms.getSysInfos"/>','tSSmsController.do?getSysInfos')">
									<i class="ace-icon fa fa-comment"></i> <t:mutiLang
										langKey="common.ssms.getSysInfos" />
							</a></li>
							<li><a
								href="javascript:add('<t:mutiLang langKey="common.change.style"/>','userController.do?changestyle','',550,250)">
									<i class="ace-icon fa fa-cog"></i> <t:mutiLang
										langKey="common.my.style" />
							</a></li>

							<li><a href="javascript:clearLocalstorage()"> <i
									class="ace-icon fa fa-info-circle"></i> <t:mutiLang
										langKey="common.clear.localstorage" />
							</a></li>

							<li class="divider"></li>

							<li><a href="javascript:logout()"> <i
									class="ace-icon fa fa-power-off"></i> <t:mutiLang
										langKey="common.logout" />
							</a></li>
						</ul></li>

					<!-- /section:basics/navbar.user_menu -->
				</ul>
			</div>

			<!-- /section:basics/navbar.dropdown -->
		</div>
		<!-- /.navbar-container -->
	</div>

	<!-- /section:basics/navbar.layout -->
	<div class="main-container ace-save-state" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.loadState('main-container')
			} catch (e) {
			}
		</script>

		<!-- #section:basics/sidebar -->
		<div id="sidebar"
			class="sidebar                  responsive                    ace-save-state">
			<script type="text/javascript">
				try {
					ace.settings.loadState('sidebar')
				} catch (e) {
				}
			</script>

			<div class="sidebar-shortcuts" id="sidebar-shortcuts">
				<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
					<button class="btn btn-success">
						盈
					</button>

					<button class="btn btn-info">
						时
					</button>

					<!-- #section:basics/sidebar.layout.shortcuts -->
					<button class="btn btn-warning">
						保
					</button>

					<button class="btn btn-danger">
						险
					</button>

					<!-- /section:basics/sidebar.layout.shortcuts -->
				</div>

				<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
					<span class="btn btn-success"></span> <span class="btn btn-info"></span>

					<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
				</div>
			</div>
			<!-- /.sidebar-shortcuts -->

			<ul class="nav nav-list">

				<li class="active" id="home"><a
					href="javascript:addTabs({id:'home',title:'首页',close: false,url: 'loginController.do?acehome'});">
						<i class="menu-icon fa fa-tachometer"></i> <span class="menu-text">
							首页</span>
				</a></li>

				<t:menu style="aceinsiap" menuFun="${menuMap}"></t:menu>

			</ul>
			<!-- /.nav-list -->

			<!-- #section:basics/sidebar.layout.minimize -->
			<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
				<i id="sidebar-toggle-icon"
					class="ace-icon fa fa-angle-double-left ace-save-state"
					data-icon1="ace-icon fa fa-angle-double-left"
					data-icon2="ace-icon fa fa-angle-double-right"></i>
			</div>

			<!-- /section:basics/sidebar.layout.minimize -->
		</div>

		<!-- /section:basics/sidebar -->
		<div class="main-content">
			<div class="main-content-inner">
				<!-- /section:basics/content.breadcrumbs -->
				<div class="breadcrumbs ace-save-state" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><a href="http://www.baidu.com"><i
								class="ace-icon fa fa-home home-icon active"></i> 所属公司</a></li>

					</ul>
					<!-- /.breadcrumb -->
				</div>
				<div class="page-content">
					<!-- #section:settings.box -->
					<div class="ace-settings-container" id="ace-settings-container">
						<div class="btn btn-app btn-xs btn-warning ace-settings-btn"
							id="ace-settings-btn">
							<i class="ace-icon fa fa-cog bigger-130"></i>
						</div>

						<div class="ace-settings-box clearfix" id="ace-settings-box">
							<div class="pull-left width-50">
								<!-- #section:settings.skins -->
								<div class="ace-settings-item">
									<div class="pull-left">
										<select id="skin-colorpicker" class="hide">
											<option data-skin="no-skin" value="#438EB9">#438EB9</option>
											<option data-skin="skin-1" value="#222A2D">#222A2D</option>
											<option data-skin="skin-2" value="#C6487E">#C6487E</option>
											<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
										</select>
									</div>
									<span>&nbsp; 选择皮肤</span>
								</div>

								<!-- /section:settings.skins -->

								<!-- #section:settings.navbar -->
								<div class="ace-settings-item">
									<input type="checkbox"
										class="ace ace-checkbox-2 ace-save-state"
										id="ace-settings-navbar" autocomplete="off" /> <label
										class="lbl" for="ace-settings-navbar"> 固定导航条</label>
								</div>

								<!-- /section:settings.navbar -->

								<!-- #section:settings.sidebar -->
								<div class="ace-settings-item">
									<input type="checkbox"
										class="ace ace-checkbox-2 ace-save-state"
										id="ace-settings-sidebar" autocomplete="off" /> <label
										class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
								</div>

								<!-- /section:settings.sidebar -->

								<!-- #section:settings.breadcrumbs -->
								<div class="ace-settings-item">
									<input type="checkbox"
										class="ace ace-checkbox-2 ace-save-state"
										id="ace-settings-breadcrumbs" autocomplete="off" /> <label
										class="lbl" for="ace-settings-breadcrumbs"> Fixed
										Breadcrumbs</label>
								</div>

								<!-- /section:settings.breadcrumbs -->

								<!-- #section:settings.rtl -->
								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-rtl" autocomplete="off" /> <label
										class="lbl" for="ace-settings-rtl"> Right To Left
										(rtl)</label>
								</div>

								<!-- /section:settings.rtl -->

								<!-- #section:settings.container -->
								<div class="ace-settings-item">
									<input type="checkbox"
										class="ace ace-checkbox-2 ace-save-state"
										id="ace-settings-add-container" autocomplete="off" /> <label
										class="lbl" for="ace-settings-add-container"> Inside <b>.container</b>
									</label>
								</div>

								<!-- /section:settings.container -->
							</div>
							<!-- /.pull-left -->

							<div class="pull-left width-50">
								<!-- #section:basics/sidebar.options -->
								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-hover" autocomplete="off" /> <label
										class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-compact" autocomplete="off" /> <label
										class="lbl" for="ace-settings-compact"> Compact
										Sidebar</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-highlight" autocomplete="off" /> <label
										class="lbl" for="ace-settings-highlight"> Alt. Active
										Item</label>
								</div>

								<!-- /section:basics/sidebar.options -->
							</div>
							<!-- /.pull-left -->
						</div>
						<!-- /.ace-settings-box -->
					</div>
					<!-- /.ace-settings-container -->

					<!-- /section:settings.box -->
					<div class="row">
						<div class="col-xs-12"
							style="width: 100%; padding-left: 0px; padding-right: 0px; padding-top: 0px;"
							id="tabs">
							<!-- PAGE CONTENT BEGINS -->
							<ul class="nav nav-tabs hide" role="tablist">
								<!-- <li class="active"><a href="#Index" role="tab" data-toggle="tab">首页</a></li> -->
							</ul>
							<div class="tab-content" style="border: 0px;">
								<div role="tabpanel" class="tab-pane active" id="Index"></div>
							</div>
							<!-- PAGE CONTENT ENDS -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<!-- /.main-content -->

		<div class="footer">
			<div class="footer-inner">
				<!-- #section:basics/footer -->
				<div class="footer-content">
					<span class="bigger-110"> <span class="blue bolder">InsiAP</span>
						保险展业智能代理平台 &copy; 2016
					</span>
				</div>

				<!-- /section:basics/footer -->
			</div>
		</div>

		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>
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
	<script
		src="plug-in/ace-insiap/components/bootstrap/dist/js/bootstrap.js"></script>

	<!-- page specific plugin scripts -->

	<!-- ace scripts -->
	<script src="plug-in/ace-insiap/assets/js/src/elements.scroller.js"></script>
	<script src="plug-in/ace-insiap/assets/js/src/elements.colorpicker.js"></script>
	<script src="plug-in/ace-insiap/assets/js/src/elements.fileinput.js"></script>
	<script src="plug-in/ace-insiap/assets/js/src/elements.typeahead.js"></script>
	<script src="plug-in/ace-insiap/assets/js/src/elements.wysiwyg.js"></script>
	<script src="plug-in/ace-insiap/assets/js/src/elements.spinner.js"></script>
	<script src="plug-in/ace-insiap/assets/js/src/elements.treeview.js"></script>
	<script src="plug-in/ace-insiap/assets/js/src/elements.wizard.js"></script>
	<script src="plug-in/ace-insiap/assets/js/src/elements.aside.js"></script>
	<script src="plug-in/ace-insiap/assets/js/src/ace.js"></script>
	<script src="plug-in/ace-insiap/assets/js/src/ace.basics.js"></script>
	<script src="plug-in/ace-insiap/assets/js/src/ace.scrolltop.js"></script>
	<script src="plug-in/ace-insiap/assets/js/src/ace.ajax-content.js"></script>
	<script src="plug-in/ace-insiap/assets/js/src/ace.touch-drag.js"></script>
	<script src="plug-in/ace-insiap/assets/js/src/ace.sidebar.js"></script>
	<script src="plug-in/ace-insiap/assets/js/src/ace.sidebar-scroll-1.js"></script>
	<script src="plug-in/ace-insiap/assets/js/src/ace.submenu-hover.js"></script>
	<script src="plug-in/ace-insiap/assets/js/src/ace.widget-box.js"></script>
	<script src="plug-in/ace-insiap/assets/js/src/ace.settings.js"></script>
	<script src="plug-in/ace-insiap/assets/js/src/ace.settings-rtl.js"></script>
	<script src="plug-in/ace-insiap/assets/js/src/ace.settings-skin.js"></script>
	<script src="plug-in/ace-insiap/assets/js/src/ace.widget-on-reload.js"></script>
	<script
		src="plug-in/ace-insiap/assets/js/src/ace.searchbox-autocomplete.js"></script>

	<!-- inline scripts related to this page -->

	<!-- the following scripts are used in demo only for onpage help and you don't need them -->
	<link rel="stylesheet"
		href="plug-in/ace-insiap/assets/css/ace.onpage-help.css" />
	<link rel="stylesheet"
		href="plug-in/ace-insiap/docs/assets/js/themes/sunburst.css" />

	<script type="text/javascript">
		ace.vars['base'] = 'plug-in/ace-insiap/';
	</script>
	<script src="plug-in/ace-insiap/assets/js/src/elements.onpage-help.js"></script>
	<script src="plug-in/ace-insiap/assets/js/src/ace.onpage-help.js"></script>
	<script src="plug-in/ace-insiap/docs/assets/js/rainbow.js"></script>
	<script src="plug-in/ace-insiap/docs/assets/js/language/generic.js"></script>
	<script src="plug-in/ace-insiap/docs/assets/js/language/html.js"></script>
	<script src="plug-in/ace-insiap/docs/assets/js/language/css.js"></script>
	<script src="plug-in/ace-insiap/docs/assets/js/language/javascript.js"></script>

	<t:base type="tools"></t:base>
	<script src="plug-in/jquery-plugs/storage/jquery.storageapi.min.js"></script>
	<script type="text/javascript"
		src="plug-in/ace-insiap/assets/js/bootstrap-tab.js"></script>
	<script src="plug-in/ace-insiap/components/bootbox.js/bootbox.min.js"></script>

	<script type="text/javascript">
		jQuery(function($) {
			$('#ace-settings-sidebar').click();
			$('#ace-settings-navbar').click();;
			$('#ace-settings-breadcrumbs').click();;
			addTabs({
				id : 'home',
				title : '首页',
				close : false,
				url : 'loginController.do?acehome'
			});
		});
	</script>

	<script type="text/javascript">
		function clearLocalstorage() {
			var storage = $.localStorage;
			if (!storage)
				storage = $.cookieStorage;
			storage.removeAll();
			bootbox.alert("浏览器缓存清除成功!");
		}

		function logout() {
			bootbox.confirm("<t:mutiLang langKey="common.exit.confirm"/>",
					function(result) {
						if (result)
							location.href = "loginController.do?logout";
					});
		}
	</script>
</body>
</html>
