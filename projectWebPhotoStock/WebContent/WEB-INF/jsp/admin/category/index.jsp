<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section class="content-header">
	<h1>
		Category <small>List</small>
	</h1>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a
			href="${pageContext.request.contextPath }/admin/welcome.html"><i
				class="fa fa-dashboard"></i> Home</a></li>
		<li class="breadcrumb-item active">Category List</li>
	</ol>
</section>
<h4 class="text-red">${errors }</h4>

<section class="content" style="min-height: 815px;">
	<table id="example1"
		class="table table-bordered table-striped table-responsive">
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Option</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="category" items="${categories }">
				<tr class="gradeA" role="row">
					<td>${category.id }</td>
					<td>${category.name }</td>
					<td><a
						href="${pageContext.request.contextPath }/admin/category/edit/${category.id }.html">Edit</a>
						| <a
						href="${pageContext.request.contextPath }/admin/category/delete/${category.id }.html"
						onclick="return confirm('Are you sure?')">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
		<tfoot>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Option</th>

			</tr>
		</tfoot>
	</table>


</section>



