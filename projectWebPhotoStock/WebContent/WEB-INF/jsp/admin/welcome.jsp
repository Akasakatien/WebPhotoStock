<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page session="true"%>
<section class="content-header">
	<h1>
		Dashboard   <small>Control panel</small>
	</h1>
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a
			href="${pageContext.request.contextPath }/admin/welcome.html#"><i
				class="fa fa-dashboard"></i> Home</a></li>
		<li class="breadcrumb-item active">Dashboard</li>
	</ol>
</section>

<section class="content" style="min-height: 815px;">
	<!-- Small boxes (Stat box) -->
	<div class="row">
		<div class="col-xl-3 col-md-6 col-12">
			<div class="info-box bg-blue">
				<span class="info-box-icon push-bottom" style="margin-top: 0"><i
					class="ion ion-ios-pricetag-outline"></i></span>

				<div class="info-box-content">
					<span
						class="info-box-text">TOTAL CATEGORY</span> <span
						class="info-box-number" style="margin-left: 50px">${countCategory}</span>

				</div>
				<!-- /.info-box-content -->
			</div>
			<!-- /.info-box -->
		</div>
		<!-- /.col -->
		<div class="col-xl-3 col-md-6 col-12">
			<div class="info-box bg-green">
				<span class="info-box-icon push-bottom" style="margin-top: 0"><i
					class="ion ion-ios-eye-outline"></i></span>

				<div class="info-box-content">
					<span class="info-box-text">Total Orders</span> <span
						class="info-box-number" style="margin-left: 50px">${countOrders }</span>

				</div>
				<!-- /.info-box-content -->
			</div>
			<!-- /.info-box -->
		</div>
		<!-- /.col -->
		<div class="col-xl-3 col-md-6 col-12">
			<div class="info-box bg-purple">
				<span class="info-box-icon push-bottom" style="margin-top: 0"><i
					class="ion ion-ios-cloud-download-outline"></i></span>

				<div class="info-box-content">
					<span class="info-box-text">TOTAL SELLER</span> <span
						class="info-box-number" style="margin-left: 50px">${countSeller }</span>

				</div>
				<!-- /.info-box-content -->
			</div>
			<!-- /.info-box -->
		</div>
		<!-- /.col -->
		<div class="col-xl-3 col-md-6 col-12">
			<div class="info-box bg-red">
				<span class="info-box-icon push-bottom" style="margin-top: 0"><i
					class="ion-ios-chatbubble-outline"></i></span>

				<div class="info-box-content">
					<span class="info-box-text">TOTAL BUYER</span> <span
						class="info-box-number" style="margin-left: 50px">${countBuyer }</span>

				</div>
				<!-- /.info-box-content -->
			</div>
			<!-- /.info-box -->
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
	
			<!-- /.box -->
</section>