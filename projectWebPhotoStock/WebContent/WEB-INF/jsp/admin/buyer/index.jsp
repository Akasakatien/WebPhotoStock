<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section class="content-header">
	<h1>
		Buyer <small>List</small>
	</h1>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="${pageContext.request.contextPath }/admin/welcome.html"><i
				class="fa fa-dashboard"></i> Home</a></li>
		<li class="breadcrumb-item active">Buyer List</li>
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
				<c:forEach var="buyer" items="${buyers}">
					<tr class="gradeA" role="row">
						<td>${buyer.id }</td>
						<td>${buyer.ussername }</td>
						<td>${buyer.firstName }</td>
						<td>${buyer.lastName }</td>
						<td><img src="${pageContext.request.contextPath }/assest/${buyer.photo }"></td>
						<td>${buyer.gender }</td>
						<td>${buyer.birthday }</td>
						<td>${buyer.joinDate }</td>
						<td>${buyer.phone }</td>
						<td>${buyer.address }</td>
						<td>${buyer.email }</td>
															
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