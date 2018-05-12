<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- Middle Content Start -->
<style type="text/css">
	.upload-btn-wrapper {
	  position: relative;
	  overflow: hidden;
	  display: inline-block;
	}

	.btn {
	  /* border: 2px solid gray;
	  color: gray; */
	  background-color: #23709e;
	  padding: 8px 20px;
	  border-radius: 8px;
	  font-size: 20px;
	  font-weight: bold;
	}

	.upload-btn-wrapper input[type=file] {
	  font-size: 100px;
	  position: absolute;
	  left: 0;
	  top: 0;
	  opacity: 0;
	}
	
</style>
<div class="vd_content-wrapper" style="min-height: 1051px;">
	<div class="vd_container" style="min-height: 1051px;">
		<div class="vd_content clearfix">
			<div class="vd_head-section clearfix">
				<div class="vd_panel-header">	
					<div class="vd_panel-menu hidden-sm hidden-xs"
						data-intro="<strong>Expand Control</strong><br/>To expand content page horizontally, vertically, or Both. If you just need one button just simply remove the other button code."
						data-step="5" data-position="left">
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
				<div class="vd_panel-header">
					<h1>Seller Profile Form</h1>
				</div>
			</div>
			<div class="vd_content-section clearfix">
				<div class="row">
					<div class="col-sm-12">
						<div class="panel widget light-widget">
							<div class="panel-heading no-title"></div>
							<form:form commandName="sellerProfile" class="form-horizontal" action="${pageContext.request.contextPath }/dashboardSeller/settingProfile.html" 
											method="post" enctype="multipart/form-data">
								<div class="panel-body">
									<h2 class="mgbt-xs-20">
										Profile: <span class="font-semibold">${sessionScope.seller.firstName } ${sessionScope.seller.lastName } - ${error }</span>
									</h2>
									<br>
									<div class="row">
										<div class="col-sm-3 mgbt-xs-20">
											<div class="form-group">
												<div class="col-xs-12">
													<div class="form-img text-center mgbt-xs-15">
														<img alt="example image" id="output_image"
															src="${pageContext.request.contextPath }/assets/user/images/avatarAccount/${sessionScope.seller.photo }">
													</div>
													<div class="form-img-action text-center mgbt-xs-20">
														<div class="upload-btn-wrapper">
						  									<button class="btn" style="color: white;">Upload a file</button>
						  									<input type="file" name="file" onchange="preview_image(event)"/>
														</div>
													</div>
													<br>
													<div>
														<table class="table table-striped table-hover">
															<tbody>
																<tr>
																	<td style="width: 60%;">Status</td>
																	<td><span class="label label-success">Active</span></td>
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
																	<td>Jan 07, 2014</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
										<div class="col-sm-9" style="padding-left: 50px">
											<h3 class="mgbt-xs-15">Account Setting</h3>
											<div class="form-group">
												<label class="col-sm-3 control-label">Email</label>
												<div class="col-sm-9 controls">
													<div class="row mgbt-xs-0">
														<div class="col-xs-9">
															<form:hidden path="id"/>
															<form:hidden path="joinDate"/>
															<form:hidden path="enabled"/>
															<form:hidden path="password"/>
															<form:hidden path="photo"/>
															<form:input path="email" type="email" value="${sessionScope.seller.email }"/>
														</div>
														<!-- col-xs-12 -->
													</div>
													<!-- row -->
												</div>
												<!-- col-sm-10 -->
											</div>
											<!-- form-group -->
											
											<div class="form-group">
												<label class="col-sm-3 control-label">Paypal Business Account</label>
												<div class="col-sm-9 controls">
													<div class="row mgbt-xs-0">
														<div class="col-xs-9">
															<form:input path="paypalBusiness" value="${sessionScope.seller.paypalBusiness }"/>
														</div>
														<!-- col-xs-12 -->
													</div>
													<!-- row -->
												</div>
												<!-- col-sm-10 -->
											</div>
											<!-- form-group -->

											<div class="form-group">
												<label class="col-sm-3 control-label">Username</label>
												<div class="col-sm-9 controls">
													<div class="row mgbt-xs-0">
														<div class="col-xs-9" style="margin-top: 4px">
															<form:input path="username" value="${sessionScope.seller.username }" readonly="true"/>
														</div>
														<!-- col-xs-9 -->
													</div>
													<!-- row -->
												</div>
												<!-- col-sm-10 -->
											</div>
											<!-- form-group -->
											
											<!-- form-group -->
											<hr>
											<h3 class="mgbt-xs-15">Profile Setting</h3>
											<div class="form-group">
												<label class="col-sm-3 control-label">First Name</label>
												<div class="col-sm-9 controls">
													<div class="row mgbt-xs-0">
														<div class="col-xs-9">
															<form:input path="firstName" value="${sessionScope.seller.firstName }"/>
														</div>
														<!-- col-xs-9 -->
													</div>
													<!-- row -->
												</div>
												<!-- col-sm-10 -->
											</div>
											<!-- form-group -->

											<div class="form-group">
												<label class="col-sm-3 control-label">Last Name</label>
												<div class="col-sm-9 controls">
													<div class="row mgbt-xs-0">
														<div class="col-xs-9">
															<form:input path="lastName" value="${sessionScope.seller.lastName }"/>
														</div>
														<!-- col-xs-9 -->
													</div>
													<!-- row -->
												</div>
												<!-- col-sm-10 -->
											</div>
											<!-- form-group -->

											<div class="form-group">
												<label class="col-sm-3 control-label">Gender</label>
												<div class="col-sm-9 controls">
													<div class="row mgbt-xs-0">
														<div class="col-xs-9">
															<form:input path="gender" value="${sessionScope.seller.gender }"/>
														</div>
														<!-- col-xs-9 -->
													</div>
													<!-- row -->
												</div>
												<!-- col-sm-10 -->
											</div>
											<!-- form-group -->

											<div class="form-group">
												<label class="col-sm-3 control-label">Birthday</label>
												<div class="col-sm-9 controls">
													<div class="row mgbt-xs-0">
														<div class="col-xs-9">
															<form:input path="birthday" type="date" value="${sessionScope.seller.birthday }"/>
														</div>
														<!-- col-xs-12 -->
													</div>
													<!-- row -->
												</div>
												<!-- col-sm-10 -->
											</div> 
											<!-- form-group -->

											<hr>
											<h3 class="mgbt-xs-15">Contact Setting</h3>
											<div class="form-group">
												<label class="col-sm-3 control-label">Mobile Phone</label>
												<div class="col-sm-9 controls">
													<div class="row mgbt-xs-0">
														<div class="col-xs-9">
															<form:input path="phone" value="${sessionScope.seller.phone }"/>
														</div>
														<!-- col-xs-12 -->
													</div>
													<!-- row -->
												</div>
												<!-- col-sm-10 -->
											</div>
											<!-- form-group -->

											<div class="form-group">
												<label class="col-sm-3 control-label">Address</label>
												<div class="col-sm-9 controls">
													<div class="row mgbt-xs-0">
														<div class="col-xs-9">
															<form:input path="address" value="${sessionScope.seller.address }"/>
														</div>
														<!-- col-xs-9 -->
													</div>
													<!-- row -->
												</div>
												<!-- col-sm-10 -->
											</div>
											<!-- form-group -->

										</div>
										<!-- col-sm-12 -->
									</div>
									<!-- row -->

								</div>
								<!-- panel-body -->
								<div class="pd-20">
									<button type="submit" class="btn vd_btn vd_bg-green col-md-offset-3" style="float: right;">
										<span class="menu-icon"><i class="fa fa-fw fa-check"></i></span>
										Save Changes
									</button>
								</div>
							</form:form>
						</div>
						<!-- Panel Widget -->
					</div>
					<!-- col-sm-12-->
				</div>
				<!-- row -->

			</div>
			<!-- .vd_content-section -->

		</div>
		<!-- .vd_content -->
	</div>
	<!-- .vd_container -->
</div>
<!-- Middle Content End -->

<script type='text/javascript'>
	function preview_image(event) 
	{
	 var reader = new FileReader();
	 reader.onload = function()
	 {
	  var output = document.getElementById('output_image');
	  output.src = reader.result;
	 }
	 reader.readAsDataURL(event.target.files[0]);
	}
</script>