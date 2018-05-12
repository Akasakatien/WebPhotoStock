<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section class="content-header">
	<h1>
		Membership <small>List</small>
	</h1>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="${pageContext.request.contextPath }/admin/welcome.html"><i
				class="fa fa-dashboard"></i> Home</a></li>
		<li class="breadcrumb-item active">Category List</li>
	</ol>
</section>
<section class="content" style="min-height: 815px;">
<table id="example"
			class="table table-bordered table-hover display nowrap margin-top-10 table-responsive dataTable">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Price</th>
					<th>Describe</th>
					<th>Option</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="membership" items="${memberships }">
					<tr class="gradeA" role="row">
						<td>${membership.id }</td>
						<td>${membership.mbName }</td>
						<td>${membership.mbPrice }</td>
						<td>${membership.mbDescribe }</td>
						
						<td><a
							href="${pageContext.request.contextPath }/admin/membership/edit/${membership.id }.html">Edit</a>
							| <a
							href="${pageContext.request.contextPath }/admin/membership/delete/${membership.id }.html"
							onclick="return confirm('Are you sure?')">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Price</th>
					<th>Describe</th>
					<th>Option</th>
					
				</tr>
			</tfoot>
		</table>

</section>

