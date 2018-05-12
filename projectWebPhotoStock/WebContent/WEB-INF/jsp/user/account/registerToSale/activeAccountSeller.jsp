<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
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
							<h3>Sign Up Your Payment Account</h3>
							<p>Fill all form field to go next step</p>

							<!-- Form progress -->
							<div class="form-wizard-steps form-wizard-tolal-steps-3">
								<div class="form-wizard-progress">
									<div class="form-wizard-progress-line" data-now-value="25"
										data-number-of-steps="2" style="width: 50%;"></div>
								</div>
								<!-- Step 1 -->
								<div class="form-wizard-step active" style="width: 50%">
									<div class="form-wizard-step-icon">
										<i class="fa fa-check" aria-hidden="true"></i>
									</div>
									<p>Success</p>
								</div>
								<!-- Step 1 -->

								<!-- Step 2 -->
								<div class="form-wizard-step" style="width: 50%">
									<div class="form-wizard-step-icon">
										<i class="fa fa-credit-card" aria-hidden="true"></i>
									</div>
									<p>Payment</p>
								</div>
								<!-- Step 2 -->
							</div>
							<!-- Form progress -->


							<!-- Form Step 1 -->
							<fieldset>
								<!-- Progress Bar -->
								<div class="progress">
									<div class="progress-bar progress-bar-striped active"
										role="progressbar" aria-valuenow="25" aria-valuemin="0"
										aria-valuemax="100" style="width: 50%"></div>
								</div>
								<!-- Progress Bar -->
								<h2 style="color: red;">${error }</h2>
								<h4>Success Account: <span>Step 1 - 2</span></h4>
								<div style="clear:both;"></div>
									<div class="success">
											<h3>Sing Up Success</h3>
										  	<div class="success-icon"><i class="fa fa-check" aria-hidden="true"></i></div>					  
									</div>
                                <div class="form-wizard-buttons">
                                    <button type="button" class="btn btn-next" style="background-color: #4CAF50">Active</button>
                                </div>
							</fieldset> 
							<!-- Form Step 1 -->
							
							<!-- Form Step 2 -->
							<fieldset>
								<!-- Progress Bar -->
								<div class="progress">
									<div class="progress-bar progress-bar-striped active"
										role="progressbar" aria-valuenow="50" aria-valuemin="0"
										aria-valuemax="100" style="width: 100%"></div>
								</div>
								<!-- Progress Bar -->
								<h4>
									Detail Payment : <span>Step 2 - 2</span>
								</h4>
								<div style="clear: both;"></div>
								<div class="table-responsive">
									<table class="table">
										<tr>
											<th>Name  Package</th>
											<td>${membershipPackage.mbName }</td>
										</tr>
										<tr>
											<th>Price</th>
											<td>${membershipPackage.mbPrice }</td>
										</tr>
										<tr>
											<th>Describe</th>
											<td>${membershipPackage.mbDescribe }</td>
										</tr>
										<tr>
											
											<th>Payment Type</th>
											<td><div class="form-group">
									<form action="${initParam['posturl'] }" method="post">
										<!-- Cau hinh thanh toan -->
										<input type="image" src="https://www.paypal.com/en_US/i/btn/btn_xpressCheckout.gif"/>
										<input type="hidden" name="upload" value="1">
										<input type="hidden" name="cmd" value="_cart">
										<input type="hidden" name="return" value="${initParam['returnurlSeller'] }">
										<input type="hidden" name="business" value="${initParam['business'] }">  
										
										<!-- Thong tin san pham thanh toan -->
										<input type="hidden" name="item_number_1" value="${sessionMembershipPackage.id }">
										<input type="hidden" name="item_name_1" value="Account seller package ${sessionMembershipPackage.mbName }">
										<input type="hidden" name="amount_1" value="${sessionMembershipPackage.mbPrice }">
										<input type="hidden" name="quantity_1" value="1">
										x
									</form>						
								</div></td>
										</tr>
									</table>
								</div>
								
								<br />
								<div class="form-wizard-buttons">
									<a href="${pageContext.request.contextPath }/home.html" class="btn btn-previous" style="background-color: #4CAF50">Home</a>
								</div>
							</fieldset>
							<!-- Form Step 2 -->
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