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
	<div class="content">
		<div class="title">Forgot Password</div>
		<div>${result }</div>
		<form
			action="${pageContext.request.contextPath }/admin/doForgotPass.html"
			method="POST" name="buyerHelper">
			<input type="text" name="username" placeholder="Email"><br>
			<input type="date" value="" name="birthday"><br>
		
			<button type="submit">Config</button>
		</form>



		<div class="already">
			Already have an account?<a href="${pageContext.request.contextPath }/admin-panel/login.html">Back
				To Login</a>
		</div>
	</div>
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script
		src="${pageContext.request.contextPath }/assets/user/loginRegisterJS/index.js"></script>
</body>
</html>

