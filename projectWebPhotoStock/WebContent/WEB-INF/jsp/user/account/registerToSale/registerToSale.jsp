<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html lang="en">

<head>
<meta charset="UTF-8">
<title>${title }</title>

<style type="text/css">
.content {
	width: 1100px;
	height: 550px;
	margin: auto auto;
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	background-color: rgba(10, 10, 10, 0.5);
	margin: auto auto;
    padding: 40px;
    -moz-border-radius: 4px;
    -webkit-border-radius: 4px;
    border-radius: 4px;
    -moz-box-shadow: 0 0 10px black;
    -webkit-box-shadow: 0 0 10px black;
    box-shadow: 0 0 10px black;
	
}
.content:before{
	background-image: url("${pageContext.request.contextPath }/assets/user/images/haha.jpg");
	background-position: center; 
}
.content:before{
	content: "";
	position: fixed;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	bottom: 0;
    z-index: -1;
    display: block;
    background-color: black;
    width: 100%;
    height: 100%;
    background-size: cover;
}
.aaa {
	box-sizing: border-box;
}

.aaa .columns {
	float: left;
	width: 31.5%;
	padding: 8px;
}

.aaa .price {
	list-style-type: none;
	border: 1px solid #eee;
	margin: 0;
	padding: 0;
	-webkit-transition: 0.3s;
	transition: 0.3s;
}

.aaa .price:hover {
	box-shadow: 0 8px 12px 0 rgba(0, 0, 0, 0.2)
}

.aaa .price .header {
	background-color: #111;
	color: white;
	font-size: 25px;
}

.aaa .price li {
	border-bottom: 1px solid #eee;
	padding: 20px;
	text-align: center;
}

.aaa .price .grey {
	background-color: #eee;
	font-size: 20px;
}

.aaa .button {
	background-color: #4CAF50;
	border: none;
	color: white;
	padding: 10px 25px;
	text-align: center;
	text-decoration: none;
	font-size: 18px;
	font-weight: bold;
    -webkit-transition: color 0.7s;
    -moz-transition:    color 0.7s;
    -ms-transition:     color 0.7s;
    -o-transition:      color 0.7s;
    transition:         color 0.7s;
}
.aaa .button:hover{
	background-color: white;
	color: #4CAF50;
}
@media only screen and (max-width: 600px) {
	.columns {
		width: 100%;
	}
}
</style>
</head>
<body>
	<div class="content">
		<div class="aaa">
			<h2 style="text-align: center; color: white; font-size: 3.0rem; margin-top: -5; margin-bottom: 0" >
				<a href="${pageContext.request.contextPath }/home.html" style="color: white; text-decoration: none;">T2LC Stock</a>
			</h2>
			<p style="text-align: center; color: white; font-size: 2.0rem; margin-top: 10; margin-bottom: 15">Responsive Pricing Tables</p>

			<div class="columns">
				<ul class="price">
					<li class="header">${packages[0].mbName }</li>
					<li class="grey">$ ${packages[0].mbPrice } / month</li>
					<li style="background-color: #fff;">50 Picture</li>
					<li style="background-color: #fff;">10GB Storage</li>
					<li style="background-color: #fff;">${packages[0].mbDescribe }</li>
					<li class="grey">
						<a href="${pageContext.request.contextPath }/account/registerToSale/detail/${packages[0].id }.html" class="button">Sign Up</a>
					</li>
				</ul>
			</div>

			<div class="columns">
				<ul class="price">
					<li class="header" style="background-color: #4CAF50">${packages[1].mbName }</li>
					<li class="grey">$ ${packages[1].mbPrice } / month</li>
					<li style="background-color: #fff;">100 Picture</li>
					<li style="background-color: #fff;">20GB Storage</li>
					<li style="background-color: #fff;">${packages[1].mbDescribe }</li>
					<li class="grey">
						<a href="${pageContext.request.contextPath }/account/registerToSale/detail/${packages[1].id }.html" class="button">Sign Up</a>
					</li>
				</ul>
			</div>

			<div class="columns">
				<ul class="price">
					<li class="header">${packages[2].mbName }</li>
					<li class="grey">$ ${packages[2].mbPrice } / month</li>
					<li style="background-color: #fff;">250 Picture</li>
					<li style="background-color: #fff;">50GB Storage</li>
					<li style="background-color: #fff;">${packages[2].mbDescribe }</li>
					<li class="grey">
						<a href="${pageContext.request.contextPath }/account/registerToSale/detail/${packages[2].id }.html" class="button">Sign Up</a>
					</li>
				</ul>
			</div>
			<p style="text-align: center; color: white; margin-top: 420; font-size: 1.4rem">
				Already Account Seller? - <a style="color: white" href="${pageContext.request.contextPath }/account.html">Back to Login</a>
			</p>
		</div>
	</div>
</body>
</html>