<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	
	<!-- Middle Content Start -->

	<div class="vd_content-wrapper">
		<div class="vd_container">
			<div class="vd_content clearfix">
				<div class="vd_head-section clearfix">
					<div class="vd_panel-header">
						<div class="vd_panel-menu hidden-sm hidden-xs"
							data-intro="<strong>Expand Control</strong><br/>To expand content page horizontally, vertically, or Both. If you just need one button just simply remove the other button code."
							data-step=5 data-position="left">
							<div data-action="remove-navbar"
								data-original-title="Remove Navigation Bar Toggle"
								data-toggle="tooltip" data-placement="bottom"
								class="remove-navbar-button menu">
								<i class="fa fa-arrows-h"></i>
							</div>
							<div data-action="remove-header"
								data-original-title="Remove Top Menu Toggle"
								data-toggle="tooltip" data-placement="bottom"
								class="remove-header-button menu">
								<i class="fa fa-arrows-v"></i>
							</div>
							<div data-action="fullscreen"
								data-original-title="Remove Navigation Bar and Top Menu Toggle"
								data-toggle="tooltip" data-placement="bottom"
								class="fullscreen-button menu">
								<i class="glyphicon glyphicon-fullscreen"></i>
							</div>

						</div>

					</div>
				</div>
				<div class="vd_title-section clearfix">
					<div class="vd_panel-header no-subtitle">
						<h1>User Profile Page - ${success }</h1>
					</div>
				</div>
				<div class="vd_content-section clearfix">
					<div class="row">
						<div class="col-sm-3" style="width: 30%">
							<div class="panel widget light-widget panel-bd-top">
								<div class="panel-heading no-title"></div>
								<div class="panel-body">
									<div class="text-center vd_info-parent">
										<img alt="example image" 
											src="${pageContext.request.contextPath }/assets/user/images/avatarAccount/${sessionScope.seller.photo }">
									</div>
									<div class="row">
										<div class="col-xs-12">
											<a class="btn vd_btn vd_bg-green btn-xs btn-block no-br"><i
												class="fa fa-check-circle append-icon"></i>Friends</a>
										</div>
										<div class="col-xs-12">
											<a class="btn vd_btn vd_bg-grey btn-xs btn-block no-br"><i
												class="fa fa-envelope append-icon"></i>Send Message</a>
										</div>
									</div>
									<h2 class="font-semibold mgbt-xs-5">${sessionScope.seller.firstName } ${sessionScope.seller.lastName }</h2>
									<div class="mgtp-20">
										<table class="table table-striped table-hover">
											<tbody>
												<tr>
													<td style="width: 60%;">Status</td>
													<c:if test="${sessionScope.seller.enabled == true}">
														<td><span class="label label-success">Active</span></td>
													</c:if>
													<c:if test="${sessionScope.seller.enabled == false}">
														<td><span class="label" style="background-color: red;">Block</span></td>
													</c:if>
												</tr>
												<tr>
													<td>User Rating</td>
													<td><i class="fa fa-star vd_yellow fa-fw"></i><i
														class="fa fa-star vd_yellow fa-fw"></i><i
														class="fa fa-star vd_yellow fa-fw"></i><i
														class="fa fa-star vd_yellow fa-fw"></i><i
														class="fa fa-star vd_yellow fa-fw"></i></td>
												</tr>
												<tr>
													<td>Member Since</td>
													<td>${sessionScope.seller.joinDate }</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-9" style="width: 70%">
							<div class="tabs widget">
								<ul class="nav nav-tabs widget">
									<li class="active"><a data-toggle="tab"
										href="pages-user-profile.php.html#profile-tab"> Profile <span
											class="menu-active"><i class="fa fa-caret-up"></i></span>
									</a></li>
								</ul>
								<div class="tab-content">
									<div id="profile-tab" class="tab-pane active">
										<div class="pd-20">
											<div class="vd_info tr">
												<a class="btn vd_btn btn-xs vd_bg-yellow" 
														href="${pageContext.request.contextPath }/dashboardSeller/settingProfile.html"> <i
													class="fa fa-pencil append-icon"></i> Edit
												</a>
											</div>
											<h3 class="mgbt-xs-15 mgtp-10 font-semibold">
												<i class="icon-user mgr-10 profile-icon"></i> ABOUT
											</h3>
											<div class="row">
												<div class="col-sm-6" style="margin-bottom: 20px">
													<div class="row mgbt-xs-0">
														<label class="col-xs-5 control-label">First Name:</label>
														<div class="col-xs-7 controls">${sessionScope.seller.firstName }</div>
														<!-- col-sm-10 -->
													</div>
												</div>
												<div class="col-sm-6" style="margin-bottom: 20px">
													<div class="row mgbt-xs-0">
														<label class="col-xs-5 control-label">Last Name:</label>
														<div class="col-xs-7 controls">${sessionScope.seller.lastName }</div>
														<!-- col-sm-10 -->
													</div>
												</div>
												<div class="col-sm-6">
													<div class="row mgbt-xs-0">
														<label class="col-xs-5 control-label">User Name:</label>
														<div class="col-xs-7 controls">${sessionScope.seller.username }</div>
														<!-- col-sm-10 -->
													</div>
												</div>
												<div class="col-sm-6" style="margin-bottom: 20px">
													<div class="row mgbt-xs-0">
														<label class="col-xs-5 control-label">Email:</label>
														<div class="col-xs-7 controls">${sessionScope.seller.email }</div>
														<!-- col-sm-10 -->
													</div>
												</div>
												<div class="col-sm-6" style="margin-bottom: 20px">
													<div class="row mgbt-xs-0">
														<label class="col-xs-5 control-label">Gender:</label>
														<div class="col-xs-7 controls">${sessionScope.seller.gender }</div>
														<!-- col-sm-10 -->
													</div>
												</div>
												<div class="col-sm-6" style="margin-bottom: 20px">
													<div class="row mgbt-xs-0">
														<label class="col-xs-5 control-label">Birthday</label>
														<div class="col-xs-7 controls">
															${sessionScope.seller.birthday }
														</div>
														<!-- col-sm-10 -->
													</div>
												</div>
												<div class="col-sm-6" style="margin-bottom: 20px">
													<div class="row mgbt-xs-0">
														<label class="col-xs-5 control-label">Address:</label>
														<div class="col-xs-7 controls">
															${sessionScope.seller.address }
														</div>
														<!-- col-sm-10 -->
													</div>
												</div>
												<div class="col-sm-6" style="margin-bottom: 20px">
													<div class="row mgbt-xs-0">
														<label class="col-xs-5 control-label">Phone:</label>
														<div class="col-xs-7 controls">
															${sessionScope.seller.phone }
														</div>
														<!-- col-sm-10 -->
													</div>
												</div>
											</div>
											<hr class="pd-10" />
										</div>
										<!-- pd-20 -->
									</div>
									<!-- home-tab -->

								</div>
								<!-- tab-content -->
							</div>
							<!-- tabs-widget -->
						</div>
					</div>
					<!-- row -->

				</div>
				<!-- .vd_content-section -->

			</div>
			<!-- .vd_content -->
		</div>
		<!-- .vd_container -->
	</div>
	<!-- .vd_content-wrapper -->

	<!-- Middle Content End -->