<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>

<section class="content-header">
	<h1>Add New Category</h1>

	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="index.html#"><i
				class="fa fa-dashboard"></i> Home</a></li>
		<li class="breadcrumb-item active">Category List</li>
	</ol>
</section>
<section class="content" style="min-height: 815px;">
	<div class="row">
		<!-- left column -->
		<div class="col-xl-3 col-lg-12"></div>
		<!--/.col (left) -->
		<!-- right column -->
		<div class="col-xl-6 col-lg-12">
			<!-- form start -->
			<s:form method="post" commandName="category"
				class="form-horizontal form-element"
				action="${pageContext.request.contextPath }/admin/category/add.html">
				<div class="box-body">
					<div class="form-group row">
						<label class="col-sm-2 control-label"> Name</label>

						<div class="col-sm-10">
							<s:input path="name" class="form-control" id="name"
								placeholder="Category Name" />
							<h5 class="text-red">
								<s:errors path="name"></s:errors>
							</h5>
							<!-- <input type="text" class="form-control" id="inputName"
									placeholder="Category Name"> -->
						</div>
					</div>
				</div>
				<!-- /.box-body -->
				<div class="box-footer">
					<li class="btn btn-default"><a
						href="${pageContext.request.contextPath }/admin/membership.html">
							Cancel</a></li>

					<button type="submit" class="btn btn-info pull-right"
						formaction="${pageContext.request.contextPath }/admin/category/add.html">Save</button>
				</div>
				<!-- /.box-footer -->
			</s:form>
		</div>
		<!-- /.box -->
		<!-- general form elements disabled -->
	</div>
	<!--/.col (right) -->
	</div>
</section>
