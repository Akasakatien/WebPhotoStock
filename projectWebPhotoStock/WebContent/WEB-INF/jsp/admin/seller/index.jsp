<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section class="content-header">
	<h1>
		Seller <small>List</small>
	</h1>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="${pageContext.request.contextPath }/admin/welcome.html"><i
				class="fa fa-dashboard"></i> Home</a></li>
		<li class="breadcrumb-item active">Seller List</li>
	</ol>
</section>
<section class="content" style="min-height: 815px;">
<table id="example"
			class="table table-bordered table-hover display nowrap margin-top-10 table-responsive dataTable">
			<thead>
				<tr>
					<th>Id</th>
					<th>Username</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Photo</th>
					<th>Gender</th>
					<th>Birthday</th>
					<th>Join Date</th>
					<th>Phone</th>
					<th>Address</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="seller" items="${sellers}">
					<tr class="gradeA" role="row">
						<td>${seller.id }</td>
						<td>${seller.username }</td>
						<td>${seller.firstName }</td>
						<td>${seller.lastName }</td>
						<td><img width="80px" height="80px" src="${pageContext.request.contextPath }/assets/user/images/avatarAccount/${seller.photo }"></td>
						<td>${seller.gender }</td>
						<td>${seller.birthday }</td>
						<td>${seller.joinDate }</td>
						<td>${seller.phone }</td>
						<td>${seller.address }</td>
						<td>${seller.email }</td>
															
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<th>Id</th>
					<th>Username</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Photo</th>
					<th>Gender</th>
					<th>Birthday</th>
					<th>Join Date</th>
					<th>Phone</th>
					<th>Address</th>
					<th>Email</th>
					
				</tr>
			</tfoot>
		</table>

</section>