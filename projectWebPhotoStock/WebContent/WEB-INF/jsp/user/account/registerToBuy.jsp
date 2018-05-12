<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>${title }</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/user/css/loginRegisterCSS/style.css">
<style type="text/css">
.content:before {
	background-image:
		url("${pageContext.request.contextPath }/assets/user/images/haha.jpg");
}
</style>
</head>
<body>
	<div class="content" style="height: 720px">
		<div class="title">Register to Buy</div>
		<div>${result }</div>
		<form
			action="${pageContext.request.contextPath }/account/doRegisterToBuyer.html"
			method="POST" name="buyer" enctype="multipart/form-data">

			<input type="email" name="username" placeholder="Email"><br>
			<input type="password" name="password" placeholder="Password"><br>
			<input type="text" name="firstName" placeholder="firstName"><br>
			<input type="text" name="lastName" placeholder="lastName"> <br>
			<input type="text" name="phone" placeholder="phone"> <br>
			<input type="date" value="" name="birthday"><br>
			<select name="gender" style="height: 40px; width: 90px">
				<option value="Male">Male</option>
				<option value="Female">Female</option>
				<option value="Other">Other</option>
			</select>
			<input type="file" name="file" style="padding-left: 0; margin-bottom: 0">
			
			<button type="submit">Save</button>
		</form>



		<div class="already">
			Already have an account? <a
				href="${pageContext.request.contextPath }/account.html">Sign
				In</a> | <a href="${pageContext.request.contextPath }/home.html">Back
				To Home</a>
		</div>
	</div>
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script
		src="${pageContext.request.contextPath }/assets/user/loginRegisterJS/index.js"></script>
</body>
</html>

