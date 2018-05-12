<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>${title }</title>
<!-- Google Font -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/user/css/loginRegisterCSS/registerToSale/css@family=Roboto%253A400,100,300,500.css">
<!-- BootStrap Stylesheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/user/css/loginRegisterCSS/registerToSale/bootstrap.min.css">
<!-- Font-Awesome Stylesheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/user/css/loginRegisterCSS/registerToSale/font-awesome.min.css">
<!-- Plugin Custom Stylesheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/user/css/loginRegisterCSS/registerToSale/form-wizard-blue.css">
<link
	href="{pageContext.request.contextPath }/assets/css/loginRegisterCSS/registerToSale/switcher.css"
	rel="stylesheet">
<!--*****
		If you need to change the form color then you have to just change the CSS file name!! Do it very simply, like as "form-wizard-red.css" for make it red color. Our template other colors name is there ( black, blue, red, pink, purple, teal, green, yellow, orange, brown, cyan, lime ). Replace the name and make it awesome!!!
		*****-->
<style type="text/css">
body {
	background-image:
		url("${pageContext.request.contextPath }/assets/user/images/payment.jpg");
	background-position: center;
}

@font-face {
	font-family: 'FontAwesome';
	src:
		url('${pageContext.request.contextPath }/assets/user/css/loginRegisterCSS/registerToSale/fonts/fontawesome-webfont.eot@v=4.7.0');
	src:
		url('${pageContext.request.contextPath }/assets/user/css/loginRegisterCSS/registerToSale/fonts/fontawesome-webfont.eot@')
		format('embedded-opentype'),
		url('${pageContext.request.contextPath }/assets/user/css/loginRegisterCSS/registerToSale/fonts/fontawesome-webfont.woff2@v=4.7.0.html')
		format('woff2'),
		url('${pageContext.request.contextPath }/assets/user/css/loginRegisterCSS/registerToSale/fonts/fontawesome-webfont.woff@v=4.7.0')
		format('woff'),
		url('${pageContext.request.contextPath }/assets/user/css/loginRegisterCSS/registerToSale/fonts/fontawesome-webfont.ttf@v=4.7.0')
		format('truetype'),
		url('${pageContext.request.contextPath }/assets/user/css/loginRegisterCSS/registerToSale/fonts/fontawesome-webfont.svg@v=4.7.0')
		format('svg');
	font-weight: normal;
	font-style: normal
}
</style>
</head>
<body oncontextmenu="return false;">
	<!-- main content -->
	<section class="form-box">
		<div class="container">
			<div class="row">
				<div
					class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3">
					<!-- Form Wizard -->
					<div class="form-wizard form-header-classic form-body-classic">
						<!-- 
						Just change the class name for make it with different style of design.
						Use anyone class "form-header-classic" or "form-header-modarn" or "form-header-stylist" for set your form header design.					
						Use anyone class "form-body-classic" or "form-body-material" or "form-body-stylist" for set your form element design.
						-->
						<c:if test="${empty param.confirm }"> 
						<s:form method="POST" commandName="seller"
							action="${pageContext.request.contextPath }/account/registerToSale/detail.html?confirm=1" enctype="multipart/form-data">
							<!-- <form role="form" action="blue.html" method="post"> -->
						<%-- <s:form action="${initParam['posturl'] }" method="post" commandName="seller"> --%>
							<h3>Sign Up Your Payment Account</h3>
							<p>Fill all form field to go next step</p>

							<!-- Form progress -->
							<div class="form-wizard-steps form-wizard-tolal-steps-4">
								<div class="form-wizard-progress">
									<div class="form-wizard-progress-line" data-now-value="12.25"
										data-number-of-steps="4" style="width: 12.25%;"></div>
								</div>
								<!-- Step 1 -->
								<div class="form-wizard-step active">
									<div class="form-wizard-step-icon">
										<i class="fa fa-unlock-alt" aria-hidden="true"
											style="content: '\f13e';"></i>
									</div>
									<p>Account</p>
								</div>
								<!-- Step 1 -->

								<!-- Step 2 -->
								<div class="form-wizard-step">
									<div class="form-wizard-step-icon">
										<i class="fa fa-user" aria-hidden="true"></i>
									</div>
									<p>Personal</p>
								</div>
								<!-- Step 2 -->

								<!-- Step 3 -->
								<div class="form-wizard-step">
                    				<div class="form-wizard-step-icon">
                    					<i class="fa fa-camera" aria-hidden="true"></i>
                    				</div>
                    				<p>Image</p>
                    			</div>
								<!-- Step 3 -->

								<!-- Step 4 -->
								<div class="form-wizard-step">
									<div class="form-wizard-step-icon">
										<i class="fa fa-file-text" aria-hidden="true"></i>
									</div>
									<p>Confirm</p>
								</div>
								<!-- Step 4 -->
							</div>
							<!-- Form progress -->


							<!-- Form Step 1 -->
							<fieldset>
								<!-- Progress Bar -->
								<div class="progress">
									<div class="progress-bar progress-bar-striped active"
										role="progressbar" aria-valuenow="25" aria-valuemin="0"
										aria-valuemax="100" style="width: 25%"></div>
								</div>
								<!-- Progress Bar -->
								<h4 style="color: red;">${error }</h4>
								<h4>
									Account Information: <span>Step 1 - 4</span>
								</h4>
								<div class="form-group">
									<label>Email: <span>*</span></label>
									<!-- <input type="email" name="Email" placeholder="Email" class="form-control required"> -->
									<s:input path="email" cssClass="form-control required"
										placeholder="Email" type="email" /> 
								</div>
								<div class="form-group">
									<label>User Name: <span>*</span></label>
									<!-- <input type="text" name="Username" placeholder="User Name" class="form-control required"> -->
									<s:input path="username" cssClass="form-control required"
										placeholder="User Name"/> 
								</div>
								<div class="form-group">
									<label>Password: <span>*</span></label>
									<!-- <input type="password" name="Password" placeholder="User Password" class="form-control required"> -->
									<s:password path="password" cssClass="form-control required"
										placeholder="User Password"/>
								</div>
								<%-- <div class="form-group">
									<label>Confirm Password: <span>*</span></label>
									<!-- <input type="password" name="Confirmpassword" placeholder="Confirm Password" class="form-control required"> -->
									<s:input path="Password" cssClass="form-control required" placeholder="Confirm Password" type="password"/>
								</div> --%>	
								<div class="form-wizard-buttons">
									<span style="float: left; margin-top: 17px;"> 
										<a href="${pageContext.request.contextPath }/home.html">Back to Home</a> | 
										<a href="${pageContext.request.contextPath }/account/registerToSale.html">Back to Pricing Tables</a>
									</span>
									<button type="button" class="btn btn-next">Next</button>
								</div>
							</fieldset> 
							<!-- Form Step 1 -->

							<!-- Form Step 2 -->
							<fieldset>
								<!-- Progress Bar -->
								<div class="progress">
									<div class="progress-bar progress-bar-striped active"
										role="progressbar" aria-valuenow="50" aria-valuemin="0"
										aria-valuemax="100" style="width: 50%"></div>
								</div>
								<!-- Progress Bar -->
								<h4>
									Personal Information : <span>Step 2 - 4</span>
								</h4>
								<div class="form-group">
									<label>PayPal Business Account: <span>*</span></label>
									<s:input path="paypalBusiness" cssClass="form-control required"
										placeholder="Account PayPal Business" /> 
								</div>
								<div class="form-group">
									<label>First Name: <span>*</span></label>
									<s:input path="firstName" cssClass="form-control required"
										placeholder="First Name" />
								</div>
								<div class="form-group">
									<label>Last Name: <span>*</span></label>
									<s:input path="lastName" cssClass="form-control required"
										placeholder="Last Name" />
								</div>
								<div class="form-group">
									<label>Gender : </label> 
									<label class="radio-inline">
										<s:radiobutton path="gender" value="Male" checked="true"/>
										Male
									</label> 
									<label class="radio-inline">
										<s:radiobutton path="gender" value="Female"/>
										Female
									</label>
									<label class="radio-inline">
										<s:radiobutton path="gender" value="Order"/>
										Order
									</label>
								</div>
								<div class="form-group">
									<label>Date of Birth(mm/dd/yyyy): </label> 	
									<s:input path="birthday" cssClass="form-control required" type="date"
										placeholder="01/01/1111" />
								</div>
								<div class="form-group">
									<label>Phone: <span>*</span></label> 
									<s:input path="phone" cssClass="form-control required"
										placeholder="Phone" /> 
								</div>
								<div class="form-group">
									<label>Address: <span>*</span></label> 
									<s:input path="address" cssClass="form-control required"
										placeholder="Address" />
								</div>
								<div class="form-wizard-buttons">
									<button type="button" class="btn btn-previous">Previous</button>
									<button type="button" class="btn btn-next">Next</button>
									
								</div>
							</fieldset>
							<!-- Form Step 2 -->

							<!-- Form Step 3 -->
							<fieldset>
								<!-- Progress Bar -->
								<div class="progress">
								  <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%">
								  </div>
								</div>
								<!-- Progress Bar -->
                                <h4>Profile Image: <span>Step 3 - 4</span></h4>
								<div style="clear:both;"></div>
									<div class="form-group image-upload">
									  <div class="setting image_picker">
										  <br/><h3 class="text-center">Upload Profile Image</h3>
										  <div class="settings_wrap">
											<label class="drop_target">
											  <div class="image_preview"></div>
											  <input name="file" type="file" id="inputFile"/>
											  <!-- <input id="inputFile" type="file" name="photo"/> -->
											</label>
											<div class="settings_actions vertical"><a class="disabled" data-action="remove_current_image"><i class="fa fa-trash" aria-hidden="true"></i> Remove Image</a></div>
										  </div>
										</div>							  
									</div>
								  <div class="checkbox">
									<label>
									  <input type="checkbox"> Yes, show this image on my profile.
									</label>
								  </div>	
                                <div class="form-wizard-buttons">
                                    <button type="button" class="btn btn-previous">Previous</button>
                                    <button type="submit" class="btn btn-next">Next</button> 
                                   <!--  <input type="submit" class="btn btn-next" value="Submit">     -->             
                                </div>
                            </fieldset>
							<!-- Form Step 3 -->
						  </s:form>
						</c:if>
						<c:if test="${not empty param.confirm }">
						<s:form method="post" action="${pageContext.request.contextPath }/account/registerToSale/detail/confirmSeller.html">
							<!-- Form Step 4 -->
							<h3>Sign Up Your Payment Account</h3>
							<p>Fill all form field to go next step</p>
							<div class="form-wizard-steps form-wizard-tolal-steps-4">
								<div class="form-wizard-progress">
									<div class="form-wizard-progress-line" data-now-value="12.25" data-number-of-steps="4" style="width: 85%;"></div>
								</div>
								<!-- Step 1 -->
								<div class="form-wizard-step activated">
									<div class="form-wizard-step-icon">
										<i class="fa fa-unlock-alt" aria-hidden="true" style="content: '\f13e';"></i>
									</div>
									<p>Account</p>
								</div>
								<!-- Step 1 -->

								<!-- Step 2 -->
								<div class="form-wizard-step activated">
									<div class="form-wizard-step-icon">
										<i class="fa fa-user" aria-hidden="true"></i>
									</div>
									<p>Personal</p>
								</div>
								<!-- Step 2 -->

								<!-- Step 3 -->
								<div class="form-wizard-step activated">
                    				<div class="form-wizard-step-icon">
                    					<i class="fa fa-camera" aria-hidden="true"></i>
                    				</div>
                    				<p>Image</p>
                    			</div>
								<!-- Step 3 -->

								<!-- Step 4 -->
								<div class="form-wizard-step active">
									<div class="form-wizard-step-icon">
										<i class="fa fa-file-text" aria-hidden="true"></i>
									</div>
									<p>Confirm</p>
								</div>
								<!-- Step 4 -->
							</div>
							<!-- Form progress -->
							<fieldset>
								<!-- Progress Bar -->
								<div class="progress">
									<div class="progress-bar progress-bar-striped active"
										role="progressbar" aria-valuenow="100" aria-valuemin="0"
										aria-valuemax="100" style="width: 100%"></div>
								</div>
								<!-- Progress Bar -->
								<h4>
									Confirm Details: <span>Step 4 - 4</span>
								</h4>
								<div style="clear: both;"></div>
								<div class="table-responsive">
									<table class="table">
										<tr>
											<th>Name</th>
											<td>${sellerConfirm.username }</td>
										</tr>
										<tr>
											<th>Email</th>
											<td>${sellerConfirm.email }</td>
										</tr>
										<tr>
											<th>Phone</th>
											<td>${sellerConfirm.phone }</td>
										</tr>
										<tr>
											<th>User</th>
											<td>${sellerConfirm.username }</td>
										</tr>
										<tr>
											<th>Full Name</th>
											<td>${sellerConfirm.firstName } ${sellerConfirm.lastName }</td>
										</tr>
										<tr>
											<th>Birthday</th>
											<td>${sellerConfirm.birthday }</td>
										</tr>
										<tr>
											<th>Gender</th>
											<td>${sellerConfirm.gender }</td>
										</tr>
										<tr>
											<th>Address</th>
											<td>${sellerConfirm.address }</td>
										</tr>
									</table>
								</div>
								<div class="form-wizard-buttons">
									<a href="${pageContext.request.contextPath }/account/registerToSale/detail/${membershipPackage.id }.html" class="btn btn-previous">Back to Step 1</a>
									<input type="submit" class="btn btn-submit" value="Submit">
								</div>
							</fieldset>
							<!-- Form Step 4 --> 

						</s:form>
						<!-- </form>		 -->
						</c:if>
					</div>
					<!-- Form Wizard -->
				</div>
			</div>

		</div>
	</section>
	<!-- main content -->
	<!-- Jquery JS -->
	<script
		src="${pageContext.request.contextPath }/assets/user/js/loginRegisterJS/registerToSale/jquery-1.11.1.min.js"></script>
	<!-- bootStrap JS -->
	<script
		src="${pageContext.request.contextPath }/assets/user/js/loginRegisterJS/registerToSale/bootstrap.min.js"></script>
	<!-- Plugin Custom JS -->
	<script
		src="${pageContext.request.contextPath }/assets/user/js/loginRegisterJS/registerToSale/form-wizard.js"></script>
	<!-- Plugin Custom JS -->
</body>
</html>