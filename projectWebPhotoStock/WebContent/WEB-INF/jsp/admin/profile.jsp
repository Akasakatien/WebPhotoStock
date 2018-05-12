<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>

<%@page session="true"%>
<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>User Profile</h1>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a
			href="${pageContext.request.contextPath }/admin/welcome.html"><i
				class="fa fa-dashboard"></i> Home</a></li>
		<li class="breadcrumb-item active">User profile</li>
	</ol>
</section>

<!-- Main content -->
<section class="content" style="min-height: 815px;">

	<div class="row">
		<div class="col-xl-4 col-lg-5">

			<!-- Profile Image -->
			<div class="box box-primary">
				<div class="box-body box-profile">
					<img
						class="profile-user-img rounded-circle img-fluid mx-auto d-block"
						src="${pageContext.request.contextPath }/assets/user/images/avatarAccount/<%-- ${accountAdmin.photo } --%>"
						alt="User profile picture">

					<h3 class="profile-username text-center">${accountAdmin.username}</h3>

					<p class="text-muted text-center">${accountAdmin.firstName}
						${accountAdmin.lastName}</p>



					<div class="row">
						<div class="col-12">
							<div class="profile-user-info">
								<p>Gender</p>
								<h6 class="margin-bottom">${accountAdmin.gender}</h6>
								<p>Birthday</p>
								<h6 class="margin-bottom">${accountAdmin.birthday}</h6>
								<p>Phone</p>
								<h6 class="margin-bottom">${accountAdmin.phone}</h6>
								<p>Address</p>
								<h6 class="margin-bottom">${accountAdmin.address}</h6>

							</div>
						</div>
					</div>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
		</div>
		<!-- /.col -->
		<div class="col-xl-8 col-lg-7">
			<div class="nav-tabs-custom">
				<ul class="nav nav-tabs">
					<li><a href="profile.html#settings" data-toggle="tab">Settings</a></li>
				</ul>


				<div class="tab-pane" id="settings">
					<s:form method="post" commandName="buyer"
						class="form-horizontal form-element col-12"
						action="${pageContext.request.contextPath }/admin/profile.html">
							<div class="form-group row">
							<label class="col-sm-2 control-label"> First name</label>

							<div class="col-sm-10">
								<s:input path="firstName" class="form-control" id="firstName"
									placeholder="Account first name" />
								<h5 class="text-red">
									<s:errors path="firstName"></s:errors>
								</h5>
							</div>
							</div>
							<div class="form-group row">
							<label class="col-sm-2 control-label"> Last name</label>

							<div class="col-sm-10">
								<s:input path="lastName" class="form-control" id="lastName"
									placeholder="Account last name" />
								<h5 class="text-red">
									<s:errors path="lastName"></s:errors>
								</h5>
							</div>
							</div>
							<div class="form-group row">
							<label class="col-sm-2 control-label"> BirthDay</label>

							<div class="col-sm-10">
								<s:input type="date" path="birthday" class="form-control" id="birthday"
									placeholder="Account birthday"/>
								<h5 class="text-red">
									<s:errors path="birthday"></s:errors>
								</h5>
							</div>
							</div>
								<div class="form-group row">
							<label class="col-sm-2 control-label">Phone</label>

							<div class="col-sm-10">
								<s:input path="phone" class="form-control" id="phone"
									placeholder="Account phone" />
								<h5 class="text-red">
									<s:errors path="phone"></s:errors>
								</h5>
							</div>
							</div>
								<div class="form-group row">
							<label class="col-sm-2 control-label"> Address</label>

							<div class="col-sm-10">
								<s:input path="address" class="form-control" id="address"
									placeholder="Account address" />
								<h5 class="text-red">
									<s:errors path="address"></s:errors>
								</h5>
							</div>
							</div>
								<div class="form-group row">
							<label class="col-sm-2 control-label"> Country</label>

							<div class="col-sm-10">
								<s:input path="country" class="form-control" id="country"
									placeholder="Account country" />
								<h5 class="text-red">
									<s:errors path="country"></s:errors>
								</h5>
							</div>
							</div>
							<div class="form-group row">
								<div class="ml-auto col-sm-10">
									<button type="submit" class="btn btn-success" formaction="${pageContext.request.contextPath }/admin/profile.html" >Submit</button>
								</div>
							</div>
					</s:form>
				</div>
				<!-- /.tab-pane -->
			</div>
			<!-- /.tab-content -->
		</div>
		<!-- /.nav-tabs-custom -->
	</div>
	<!-- /.col -->
	</div>
	<!-- /.row -->

</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->
