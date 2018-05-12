<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section class="content-header">
	<h1>
		Orders <small>List</small>
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
					<th>Date Creation</th>
					<th>Status</th>
					<th>Buyer Name</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="order" items="${orders}">
					<tr class="gradeA" role="row">
						<td>${order.id }</td>
						<td>${order.name }</td>
						<td>${order.datecreation }</td>
						<td>${order.status }</td>
						<td>${order.buyer.lastName }</td>												
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Date Creation</th>
					<th>Status</th>
					<th>Buyer Name</th>
					
				</tr>
			</tfoot>
		</table>

</section>

