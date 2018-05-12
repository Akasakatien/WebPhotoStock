<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!-- Middle Content Start -->

<style type="text/css">
.upload-btn-wrapper {
	position: relative;
	overflow: hidden;
	display: inline-block;
}

.btn1 {
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
							<div class="panel-heading no-title" style="height: 20%"></div>
							<form:form commandName="item" method="post" enctype="multipart/form-data"
								class="form-horizontal"
								action="${pageContext.request.contextPath }/dashboardSeller/products/add.html"
								role="form" name="item">
								<div class="panel-body">
									<div class="row">
										<div class="col-sm-3 mgbt-xs-20" style="width: 50%">
											<div class="form-group">
												<div class="col-xs-12">
													<div class="form-img text-center mgbt-xs-15">
														<img id="output_image"
															src="${pageContext.request.contextPath }/assets/user/images/iconeImageUpload.ico">
													</div>
													<div class="form-img-action text-center mgbt-xs-20">
														<div class="upload-btn-wrapper">
															<input type="file" name="file" onchange="preview_image(event)"/>
															<button class="btn1" style="color: white;">Upload image</button>
														</div>
														
													</div>
													<br>
													<div>
														
													</div>
												</div>
											</div>
										</div>
										<div class="col-sm-9" style="width: 50%">

											<h3 class="mgbt-xs-15">Add Picture</h3>
											<div class="form-group">
												<label class="col-sm-3 control-label">Name</label>
												<div class="col-sm-9 controls">
													<div class="row mgbt-xs-0">
														<div class="col-xs-9" style="width: 100%">
															<form:input path="itemName" placeholder="Name of Picture"/>
														</div>
														<!-- col-xs-12 -->
													</div>
													<!-- row -->
												</div>
												<!-- col-sm-10 -->
											</div>
											<!-- form-group -->

											<div class="form-group">
												<label class="col-sm-3 control-label">Price</label>
												<div class="col-sm-9 controls" style="width: 20%">
													<div class="row mgbt-xs-0">
														<div class="col-xs-9" style="width: 100%">
															<form:input path="itemPrice" type="number" placeholder="$ 0.00"/>
														</div>
														<!-- col-xs-9 -->
													</div>
													<!-- row -->
												</div>
												<!-- col-sm-10 -->
											</div>
											<!-- form-group -->

											<div class="form-group">
												<label class="col-sm-3 control-label">Category</label>
												<div class="col-sm-9 controls" style="width: 50%">
													<div class="row mgbt-xs-0">
														<div class="col-xs-9">
															<form:select path="category.id" cssClass="form-control"
																items="${categories }" itemValue="id" itemLabel="name">
															</form:select>
														</div>
														<!-- col-xs-9 -->
													</div>
													<!-- row -->
												</div>
												<!-- col-sm-10 -->
											</div>

											<div class="form-group" style="margin-left: 150px">
												<div>
														<button type="submit" class="btn vd_btn vd_bg-blue btn-sm save-btn">Save</button> 
												</div>
											</div>
										</div>
										<!-- col-sm-12 -->
									</div>
									<!-- row -->

								</div>
								<!-- panel-body -->
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

<!-- Middle Content End -->