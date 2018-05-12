<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!-- Meta-Tags -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="Multi Tabs Resume Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" /> -->
<script type="application/x-javascript">
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 



</script>
<!-- //Meta-Tags -->

<!-- Custom-Style-Sheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/user/css/profileAccount/style.css"
	type="text/css" media="all">
<!-- //Custom-Style-Sheet -->

<!-- Fonts -->
<link rel="stylesheet"
	href="//fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900"
	type="text/css" media="all">
<link rel="stylesheet"
	href="//fonts.googleapis.com/css?family=Montserrat:400,700"
	type="text/css" media="all">
<!-- //Fonts -->

<!-- Default-JavaScript -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/user/js/profileAccount/jquery.min.js"></script>
<div class="backgroundImage"
	style="
		width:100%;
		height:100%;
		margin: auto;	
		background-image: url('${pageContext.request.contextPath }/assets/user/images/haha.jpg');
		background-size: cover;
		z-index: -1">
	<div class="backgroundContent"
		style="width: 80%; height: 80%; margin: auto; background-color: rgba(10, 10, 10, 0.5);">
		<h1 style="margin-top: 0; padding-top: 15px; margin-bottom: 20px"></h1>

		<div class="containerw3layouts-agileits"
			style="margin-bottom: 60px; width: 60%">

			<div id="verticalTab" class="resp-vtabs w3-agile"
				style="display: block; width: 100%; margin: 0px; z-index: 10">

				<ul class="resp-tabs-list agileits-w3layouts">
					<li class="resp-tab-item"><span>Profile</span></li>
					<li class="resp-tab-item "><span>Edite Profile</span></li>
					<li class="resp-tab-item "><span></span></li>
					<li class="resp-tab-item"><span></span></li>
					<li class="resp-tab-item"><span></span></li>
				</ul>
				<div class="resp-tabs-container">
					<div class="resp-tab-content">
						<div class="work w3-agileits">
							<div class="work-info"
								style="padding-top: 30px; padding-left: 160px;">
								<h4 style="margin-right: 37px;">Name</h4>
								<h5>${buyer.firstName}${ buyer.lastName }</h5>

							</div>
							<div class="work-info agileinfo"
								style="padding-top: 30px; padding-left: 160px;">
								<h4 style="margin-right: 37px;">Birthday</h4>
								<h5>${buyer.birthday }</h5>

							</div>
							<div class="work-info w3layouts"
								style="padding-top: 30px; padding-left: 160px;">
								<h4 style="margin-right: 37px;">Phone</h4>
								<h5>${buyer.phone }</h5>
							</div>
							<div class="work-info w3layouts"
								style="padding-top: 30px; padding-left: 160px;">
								<h4 style="margin-right: 37px;">Email</h4>
								<h5>${buyer.username }</h5>
							</div>
							<div class="work-info w3layouts"
								style="padding-top: 30px; padding-left: 160px;">
								<h4 style="margin-right: 37px;">Gender</h4>
								<h5>${buyer.gender }</h5>
							</div>

						</div>
					</div>
					<div class="resp-tab-content" style="display: block">
						<div class="demo"
							style="height: 100px; width: 465px; padding-top: 0px; margin-left: 107px;">

							<div class="our-skills" style="margin-left: 70px;">
								<h3 style="width: 240px; height: 32px; font-size: 25px;">Edit
									Profile</h3>
								<form
									action="${pageContext.request.contextPath }/account/editProfile.html"
									method="post" name="buyer">
									<input hidden name="id" value="${buyer.id }"> <input
										hidden name="joinDate" value="${buyer.joinDate }"> <input
										hidden name="enabled" value="${buyer.enabled }"> <input
										hidden name="username" value="${buyer.username }"> <input
										hidden name="password" value="${buyer.password}"> <input
										hidden name="rolePk" value="${buyer.rolePk}"><br>
									<input type="text" name="firstName" placeholder="firstName"
										value="${buyer.firstName}"
										style="width: 240px; height: 32px; font-size: 20px; margin-bottom: 19px;"><br>
									<input type="text" name="lastName" placeholder="lastName"
										value="${buyer.lastName }"
										style="width: 240px; height: 32px; font-size: 20px; margin-bottom: 19px;">
									<br> <input type="date" name="birthday"
										value="${buyer.birthday }"
										style="width: 240px; height: 32px; font-size: 20px; margin-bottom: 19px;"><br>
									<input type="text" name="phone" value="${buyer.phone }"
										style="width: 240px; height: 32px; font-size: 20px; margin-bottom: 19px;">
									<select name="gender" value="${buyer.gender }"
										style="width: 240px; height: 32px; font-size: 20px; margin-bottom: 19px;">
										<option value="Male">Male</option>
										<option value="Female">Female</option>
										<option value="Other">Other</option>
									</select> <br>


									<button type="submit"
										style="width: 86px; height: 33px; font-size: 18px;">Save</button>

								</form>
							</div>
						</div>
					</div>

				</div>
				<div class="clear w3-agile"></div>

			</div>

		</div>
	</div>
</div>
<!-- Necessary-JavaScript-Files-&-Links -->

<!-- Tabs-JavaScript -->
<script
	src="${pageContext.request.contextPath }/assets/user/js/profileAccount/easyResponsiveTabs.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#horizontalTab').easyResponsiveTabs({
			type : 'default',
			width : 'auto',
			fit : true,
			closed : 'accordion',
			activate : function(event) {
				var $tab = $(this);
				var $info = $('#tabInfo');
				var $name = $('span', $info);
				$name.text($tab.text());
				$info.show();
			}
		});
		$('#verticalTab').easyResponsiveTabs({
			type : 'vertical',
			width : 'auto',
			fit : true
		});
	});
</script>
<!-- //Tabs-JavaScript -->


<!-- //Necessary-JavaScript-Files-&-Links -->



