<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page session="true"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>${title }</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/user/css/loginRegisterCSS/style.css">
<style type="text/css">
.content:before {
	background-image: url("${pageContext.request.contextPath }/assets/user/images/haha.jpg");
}
</style>
</head>
<body>
	<div class="content">
		<div class="title">Login Buyer</div>
		<h1>${msg }</h1>
		<form name="BuyerHelperLogin" method="POST" action="${pageContext.request.contextPath }/account/loginBuyer.html" >
			<input type="text" placeholder="E-mail" name="username"/>
			<input type="password"	placeholder="Password" name="password"/> 			
			<button type="submit"  >Login</button>
		</form>
		
		<a href="${pageContext.request.contextPath }/account/forgotPass.html">Forgot password</a>
		
		<div class="social">
			<span>or sign up with social media</span>
		</div>
		<div class="buttons">
			<button class="facebook">
				<i class="fa fa-facebook"></i>Facebook
			</button>
			<button class="twitter">
				<i class="fa fa-twitter"></i>Twitter
			</button>
			<button class="google">
				<i class="fa fa-google-plus"></i>Google
			</button>
		</div>
		<div class="already">
			<a href="${pageContext.request.contextPath }/account/registerToBuy.html">Register to Buy</a> | 
			<a href="${pageContext.request.contextPath }/account/registerToSale.html">Register to Sale</a> |
			<a href="${pageContext.request.contextPath }/home.html">Back To Home</a> 
		</div>
	</div>
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script
		src="${pageContext.request.contextPath }/assets/user/loginRegisterJS/index.js"></script>
</body>
</html>
