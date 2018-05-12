<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<section class="content-header">
	<h1>
		Add New Membership 
	</h1>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="index.html#"><i
				class="fa fa-dashboard"></i> Home</a></li>
		<li class="breadcrumb-item active">Category List</li>
	</ol>
</section>
<section class="content" style="min-height: 815px;">

			<s:form method="post" commandName="membership"
				class="form-horizontal form-element"
				action="${pageContext.request.contextPath }/admin/membership/add.html">
				<div class="box-body">
					<div class="form-group row">
						<label class="col-sm-2 control-label"> Name</label>

						<div class="col-sm-10">
							<s:input path="mbName" class="form-control" id="name"
								placeholder="Membership Name" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 control-label"> Price</label>

						<div class="col-sm-10">
							<s:input path="mbPrice" class="form-control" id="price"
								placeholder="Membership Price" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 control-label"> Describe</label>

						<div class="col-sm-10">
							<s:input path="mbDescribe" class="form-control" id="describe"
								placeholder="Category Describle" />
						</div>
					</div>
				</div>
				<!-- /.box-body -->
				<div class="box-footer">
				<li class="btn btn-default"><a href="${pageContext.request.contextPath }/admin/membership.html"> Cancel</a></li>
					
					<button type="submit" class="btn btn-info pull-right"
						formaction="${pageContext.request.contextPath }/admin/membership/add.html">Save</button>
				</div>
				<!-- /.box-footer -->
			</s:form>

</section>
