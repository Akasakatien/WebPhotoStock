<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page session="true"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="images/favicon.ico">

<title>T2CL Admin - Dashboard</title>

<!-- Bootstrap 4.0-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/admin/assets/vendor_components/bootstrap/dist/css/bootstrap.css">

<!-- Bootstrap 4.0-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/admin/assets/vendor_components/bootstrap/dist/css/bootstrap-extend.css">

<!-- font awesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/admin/assets/vendor_components/font-awesome/css/font-awesome.css">

<!-- ionicons -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/admin/assets/vendor_components/Ionicons/css/ionicons.css">

<!-- theme style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/admin/css/master_style.css">

<!-- fox_admin skins. choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/admin/css/skins/_all-skins.css">

<!-- weather weather -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/admin/assets/vendor_components/weather-icons/weather-icons.css">

<!-- jvectormap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/admin/assets/vendor_components/jvectormap/jquery-jvectormap.css">

<!-- date picker -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/admin/assets/vendor_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.css">

<!-- daterange picker -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/admin/assets/vendor_components/bootstrap-daterangepicker/daterangepicker.css">

<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/admin/assets/vendor_plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.css">


<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

<!-- google font -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
	rel="stylesheet">


</head>

<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<header class="main-header">
			<!-- Logo -->
			<a href="${pageContext.request.contextPath }/admin/welcome.html"
				class="logo"> <!-- mini logo for sidebar mini 50x50 pixels --> <span
				class="logo-mini"><b>T2CL</b></span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>T2CL </b>Admin</span>
			</a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top">
				<!-- Sidebar toggle button-->
				<a href="${pageContext.request.contextPath }/admin/welcome.html" class="sidebar-toggle"
					data-toggle="push-menu" role="button"> <span class="sr-only">Toggle
						navigation</span>
				</a>
				   
			</nav>
		</header>
		<!-- Control Sidebar Toggle Button -->
		<div>
			<button class="control-sidebar-btn btn btn-dark"
				data-toggle="control-sidebar">
				<i class="fa fa-cog fa-spin"></i>
			</button>
		</div>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- Sidebar user panel -->
				<div class="user-panel">
					<div class="image float-left">
						<img
							src="${pageContext.request.contextPath }/assets/admin/images/user2-160x160.jpg"
							class="rounded" alt="User Image">
					</div>
					<div class="info float-left">
						<p>${pageContext.request.userPrincipal.name}</p>
						<a href="${pageContext.request.contextPath }/admin/welcome.html"><i
							class="fa fa-circle text-success"></i> Online</a>
					</div>
					<!-- search form -->
					<!-- 					<form action="index.html#" method="get" class="sidebar-form">
						<div class="input-group">
							<input type="text" name="q" class="form-control"
								placeholder="Search..."> <span class="input-group-btn">
								<button type="submit" name="search" id="search-btn"
									class="btn btn-flat">
									<i class="fa fa-search"></i>
								</button>
							</span>
						</div>
					</form> -->
					<!-- /.search form -->
				</div>

				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu" data-widget="tree">
					<li class="header">MAIN NAVIGATION</li>
					<li class="active"><a
						href="${pageContext.request.contextPath }/admin/welcome.html">
							<i class="fa fa-dashboard"></i> <span>Dashboard</span> <span
							class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span>
					</a></li>
					<li class="treeview"><a
						href="${pageContext.request.contextPath }/admin/category.html#">
							<i class="fa fa-files-o"></i> <span>Category</span> <span
							class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span>
					</a>
						<ul class="treeview-menu">
						<li><a
								href="${pageContext.request.contextPath }/admin/category.html"><i
									class="fa fa-circle-o"></i> Index</a></li>
							<li><a
								href="${pageContext.request.contextPath }/admin/category/add.html"><i
									class="fa fa-circle-o"></i> Add new Category</a></li>

						</ul></li>
					<li class="treeview"><a
						href="${pageContext.request.contextPath }/admin/membership.html#">
							<i class="fa fa-th"></i> <span>Membership</span> <span
							class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span>
					</a>
						<ul class="treeview-menu">
						<li><a
								href="${pageContext.request.contextPath }/admin/membership.html"><i
									class="fa fa-circle-o"></i> Index</a></li>
							<li><a
								href="${pageContext.request.contextPath }/admin/membership/add.html"><i
									class="fa fa-circle-o"></i> Add new Membership</a></li>
						</ul></li>
					<li><a href="${pageContext.request.contextPath }/admin/orders.html"> <i
							class="fa fa-calendar"></i> <span>Orders</span> <span
							class="pull-right-container">
						</span>
					</a></li>
					
					<li><a href="${pageContext.request.contextPath }/admin/seller.html"> <i
							class="fa fa-calendar"></i> <span>Seller</span> <span
							class="pull-right-container">
						</span>
					</a></li>
				</ul>
			</section>
			<!-- /.sidebar -->
			<div class="sidebar-footer">
				<!-- item-->
				<a href="${pageContext.request.contextPath }/admin/profile.html?us=${pageContext.request.userPrincipal.name}" class="link" data-toggle="tooltip" title=""
					data-original-title="Settings"><i class="fa fa-cog fa-spin"></i></a>
				<!-- item-->
				<a href="" class="" data-toggle="tooltip" title=""
					data-original-title=""><i class=""></i></a>
				<!-- item-->
				<a
					href="${pageContext.request.contextPath }/admin/process-logout.html"
					class="link" data-toggle="tooltip" title=""
					data-original-title="Logout"><i class="fa fa-power-off"></i></a>
			</div>
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<tiles:insertAttribute name="content">

			</tiles:insertAttribute>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<div class="pull-right d-none d-sm-inline-block">
				<b>Version</b> 1.1
			</div>
			Copyright &copy; 2018 T2CL . All Rights Reserved.
		</footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<div class="rpanel-title">
				Service Panel <span class="btn pull-right"><i
					class="ion ion-close" data-toggle="control-sidebar"></i></span>
			</div>
			<!-- Create the tabs -->
			<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
				<li class="nav-item"><a
					href="index.html#control-sidebar-home-tab" data-toggle="tab"><i
						class="fa fa-home"></i></a></li>
				<li class="nav-item"><a
					href="index.html#control-sidebar-settings-tab" data-toggle="tab"><i
						class="fa fa-cog fa-spin"></i></a></li>
			</ul>
			<!-- Tab panes -->
			<div class="tab-content">
				<!-- Home tab content -->
				<div class="tab-pane" id="control-sidebar-home-tab">
					<h3 class="control-sidebar-heading">Recent Activity</h3>
					<ul class="control-sidebar-menu">
						<li><a href="javascript:void(0)"> <i
								class="menu-icon fa fa-birthday-cake bg-red"></i>

								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Admin Birthday</h4>

									<p>Will be July 24th</p>
								</div>
						</a></li>
						<li><a href="javascript:void(0)"> <i
								class="menu-icon fa fa-user bg-yellow"></i>

								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Jhone Updated His
										Profile</h4>

									<p>New Email : jhone_doe@demo.com</p>
								</div>
						</a></li>
						<li><a href="javascript:void(0)"> <i
								class="menu-icon fa fa-envelope-o bg-light-blue"></i>

								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Disha Joined
										Mailing List</h4>

									<p>disha@demo.com</p>
								</div>
						</a></li>
						<li><a href="javascript:void(0)"> <i
								class="menu-icon fa fa-file-code-o bg-green"></i>

								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Code Change</h4>

									<p>Execution time 15 Days</p>
								</div>
						</a></li>
					</ul>
					<!-- /.control-sidebar-menu -->

					<h3 class="control-sidebar-heading">Tasks Progress</h3>
					<ul class="control-sidebar-menu">
						<li><a href="javascript:void(0)">
								<h4 class="control-sidebar-subheading">
									Web Design <span class="label label-danger pull-right">40%</span>
								</h4>

								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-danger"
										style="width: 40%"></div>
								</div>
						</a></li>
						<li><a href="javascript:void(0)">
								<h4 class="control-sidebar-subheading">
									Update Data <span class="label label-success pull-right">75%</span>
								</h4>

								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-success"
										style="width: 75%"></div>
								</div>
						</a></li>
						<li><a href="javascript:void(0)">
								<h4 class="control-sidebar-subheading">
									Order Process <span class="label label-warning pull-right">89%</span>
								</h4>

								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-warning"
										style="width: 89%"></div>
								</div>
						</a></li>
						<li><a href="javascript:void(0)">
								<h4 class="control-sidebar-subheading">
									Development <span class="label label-primary pull-right">72%</span>
								</h4>

								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-primary"
										style="width: 72%"></div>
								</div>
						</a></li>
					</ul>
					<!-- /.control-sidebar-menu -->
					</div>
				</div>
				<!-- /.tab-pane -->
				<!-- Stats tab content -->
				<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab
					Content</div>
				<!-- /.tab-pane -->
				<!-- Settings tab content -->
				<div class="tab-pane" id="control-sidebar-settings-tab">
					<form method="post">
						<h3 class="control-sidebar-heading">General Settings</h3>

						<div class="form-group">
							<input type="checkbox" id="report_panel" class="chk-col-grey">
							<label for="report_panel" class="control-sidebar-subheading ">Report
								panel usage</label>

							<p>general settings information</p>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<input type="checkbox" id="allow_mail" class="chk-col-grey">
							<label for="allow_mail" class="control-sidebar-subheading ">Mail
								redirect</label>

							<p>Other sets of options are available</p>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<input type="checkbox" id="expose_author" class="chk-col-grey">
							<label for="expose_author" class="control-sidebar-subheading ">Expose
								author name</label>

							<p>Allow the user to show his name in blog posts</p>
						</div>
						<!-- /.form-group -->

						<h3 class="control-sidebar-heading">Chat Settings</h3>

						<div class="form-group">
							<input type="checkbox" id="show_me_online" class="chk-col-grey">
							<label for="show_me_online" class="control-sidebar-subheading ">Show
								me as online</label>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<input type="checkbox" id="off_notifications"
								class="chk-col-grey"> <label for="off_notifications"
								class="control-sidebar-subheading ">Turn off
								notifications</label>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<label class="control-sidebar-subheading"> <a
								href="javascript:void(0)" class="text-red margin-r-5"><i
									class="fa fa-trash-o"></i></a> Delete chat history
							</label>
						</div>
						<!-- /.form-group -->
					</form>
				</div>
				<!-- /.tab-pane -->
			</div>
		</aside>
		<!-- /.control-sidebar -->

		<!-- Add the sidebar's background. This div must be placed immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>

	<!-- ./wrapper -->



	<!-- jQuery 3 -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/assets/vendor_components/jquery/dist/jquery.js"></script>

	<!-- jQuery UI 1.11.4 -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/assets/vendor_components/jquery-ui/jquery-ui.js"></script>

	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>

	<!-- popper -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/assets/vendor_components/popper/dist/popper.min.js"></script>

	<!-- Bootstrap 4.0-->
	<script
		src="${pageContext.request.contextPath }/assets/admin/assets/vendor_components/bootstrap/dist/js/bootstrap.js"></script>

	<!-- ChartJS -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/assets/vendor_components/chart-js/chart.js"></script>

	<!-- Sparkline -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/assets/vendor_components/jquery-sparkline/dist/jquery.sparkline.js"></script>

	<!-- jvectormap -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/assets/vendor_plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/admin/assets/vendor_plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>

	<!-- jQuery Knob Chart -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/assets/vendor_components/jquery-knob/js/jquery.knob.js"></script>

	<!-- daterangepicker -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/assets/vendor_components/moment/min/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/admin/assets/vendor_components/bootstrap-daterangepicker/daterangepicker.js"></script>

	<!-- datepicker -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/assets/vendor_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.js"></script>

	<!-- Bootstrap WYSIHTML5 -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/assets/vendor_plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.js"></script>

	<!-- Slimscroll -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/assets/vendor_components/jquery-slimscroll/jquery.slimscroll.js"></script>

	<!-- FastClick -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/assets/vendor_components/fastclick/lib/fastclick.js"></script>

	<!-- fox_admin App -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/js/template.js"></script>

	<!-- fox_admin dashboard demo (This is only for demo purposes) -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/js/pages/dashboard.js"></script>

	<!-- fox_admin for demo purposes -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/js/demo.js"></script>

	<!-- DataTables -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/assets/vendor_components/datatables.net/js/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/admin/assets/vendor_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>

	<!-- This is data table -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/assets/vendor_plugins/DataTables-1.10.15/media/js/jquery.dataTables.min.js"></script>
	<!-- start - This is for export functionality only -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/assets/vendor_plugins/DataTables-1.10.15/extensions/Buttons/js/dataTables.buttons.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/admin/assets/vendor_plugins/DataTables-1.10.15/extensions/Buttons/js/buttons.flash.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/admin/assets/vendor_plugins/DataTables-1.10.15/ex-js/jszip.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/admin/assets/vendor_plugins/DataTables-1.10.15/ex-js/pdfmake.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/admin/assets/vendor_plugins/DataTables-1.10.15/ex-js/vfs_fonts.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/admin/assets/vendor_plugins/DataTables-1.10.15/extensions/Buttons/js/buttons.html5.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/admin/assets/vendor_plugins/DataTables-1.10.15/extensions/Buttons/js/buttons.print.min.js"></script>
	<!-- end - This is for export functionality only -->

	<!-- foxadmin for Data Table -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/js/pages/data-table.js"></script>

	<!-- weather for demo purposes -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/assets/vendor_plugins/weather-icons/WeatherIcon.js"></script>

	<script type="text/javascript">
		WeatherIcon.add('icon1', WeatherIcon.SLEET, {
			stroke : false,
			shadow : false,
			animated : true
		});
		WeatherIcon.add('icon2', WeatherIcon.SNOW, {
			stroke : false,
			shadow : false,
			animated : true
		});
		WeatherIcon.add('icon3', WeatherIcon.LIGHTRAINTHUNDER, {
			stroke : false,
			shadow : false,
			animated : true
		});
	</script>



</body>
</html>
