<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>



 

<!-- Middle Content Start -->

<div class="vd_content-wrapper" style="min-height: 1132px;">
	<div class="vd_container" style="min-height: 1132px;">
		<div class="vd_content clearfix">
			<div class="vd_head-section clearfix">
				<div class="vd_panel-header">
					<ul class="breadcrumb">
						<li><a href="index.php">Home</a></li>
						<li><a href="listtables-tables-variation.php">List &amp;
								Tables</a></li>
						<li class="active">Data Tables</li>
					</ul>
					<div class="vd_panel-menu hidden-sm hidden-xs"
						data-intro="<strong>Expand Control</strong><br/>To expand content page horizontally, vertically, or Both. If you just need one button just simply remove the other button code."
						data-step="5" data-position="left">
						<div data-action="remove-navbar"
							data-original-title="Remove Navigation Bar Toggle"
							data-toggle="tooltip" data-placement="bottom"
							class="remove-navbar-button menu">
							<i class="fa fa-arrows-h"></i>
						</div>
						<div data-action="remove-header"
							data-original-title="Remove Top Menu Toggle"
							data-toggle="tooltip" data-placement="bottom"
							class="remove-header-button menu">
							<i class="fa fa-arrows-v"></i>
						</div>
						<div data-action="fullscreen"
							data-original-title="Remove Navigation Bar and Top Menu Toggle"
							data-toggle="tooltip" data-placement="bottom"
							class="fullscreen-button menu">
							<i class="glyphicon glyphicon-fullscreen"></i>
						</div>

					</div>

				</div>
			</div>
			<div class="vd_title-section clearfix">
				<div class="vd_panel-header">
					<h1>Data Tables</h1>
					<small class="subtitle">Look <a
						href="http://www.datatables.net">datatables.net</a> for more
						information
					</small>
				</div>
			</div>
			<div class="vd_content-section clearfix">
				<div class="row">
					<div class="col-md-12">
						<div class="panel widget">
							<div class="panel-heading vd_bg-grey">
								<h3 class="panel-title">
									<span class="menu-icon"> <i class="fa fa-dot-circle-o"></i>
									</span> Data Tables Product
								</h3>
							</div>
							<div class="panel-body table-responsive">
								<div id="data-tables_wrapper"
									class="dataTables_wrapper form-inline no-footer">
									<div class="row">
										<a href="${pageContext.request.contextPath }/dashboardSeller/products/add.html" class="btn btn-success nBtn">New</a>
										<%-- <div class="vd_info tr" style="margin-top: 15px; margin-right: 5px; z-index: 100"> <a href="${pageContext.request.contextPath }/dashboardSeller/products/add.html" class="btn vd_btn btn-xs vd_bg-yellow"> <i class="fa fa-plus append-icon"></i> Add Project </a> </div> --%>
								
										
									</div>
									<table class="table table-striped dataTable no-footer"
										id="data-tables" role="grid"
										aria-describedby="data-tables_info">
										<thead>
											<tr role="row">
												<th class="sorting" tabindex="0"
														aria-controls="data-tables" rowspan="1" colspan="1"
														style="width: 100px;">id</th>
												<th class="sorting" tabindex="0" 
													aria-controls="data-tables" rowspan="1" colspan="1"
													style="width: 130px;">Picture</th>
												<th class="sorting" tabindex="0" aria-controls="data-tables"
													rowspan="1" colspan="1"
													style="width: 200px;">Name</th>
													<th class="sorting" tabindex="0" aria-controls="data-tables"
													rowspan="1" colspan="1"
													style="width: 170px;">Category</th>
												<th class="sorting" tabindex="0" aria-controls="data-tables"
													rowspan="1" colspan="1"
													style="width: 150px;">Price</th>
												<th class="sorting" tabindex="0" aria-controls="data-tables"
													rowspan="1" colspan="1"
													style="width: 166px;">Action</th>
											</tr>
										</thead>
										<tbody>
											<% int i = 1, count = 1; %>
											<c:forEach var="item" items="${items }">
												<% 
													if(i%2==0){ 
												%>
													<tr class="gradeA even" role="row">
												<%} %>
												<% 
													if(i%2!=0){ 
												%>
													<tr class="gradeA odd" role="row">
												<%} %>
														<td class="sorting_1"><br><%out.print(count); %></td>
														<td><img src="${pageContext.request.contextPath }/assets/user/images/items/${item.itemCode}" width="80px" height="80px"></td>
														<td><br>${item.itemName }</td>
														<td><br>${item.category.name }</td>
														<td><br>${item.itemPrice }</td>
														<td><br>
															<a class="btn menu-icon vd_bg-green" data-placement="top" data-toggle="tooltip" 
																	data-original-title="view">
		                                           				<i class="fa fa-eye" style="color: white;"></i>
		                                      				</a>
		                                        			<a href="${pageContext.request.contextPath }/dashboardSeller/products/findOne/${item.id}.html"
		                                        						class="btn menu-icon vd_bg-yellow eBtn" data-placement="top" data-toggle="tooltip" data-original-title="edit">
		                                        				<i class="fa fa-pencil" style="color: white;"></i>
		                                        			</a>
		                                        			<a href="${pageContext.request.contextPath }/dashboardSeller/products/delete/${item.id }.html" onclick="return confirm('Are you sure?')"
		                                        					class="btn menu-icon vd_bg-red" data-placement="top" data-toggle="tooltip" data-original-title="delete">
							                                          <i class="fa fa-times" style="color: white;"></i>
							                                      </a>
		                                        		</td>
													</tr>
												<% i+=1; count++; %>
											</c:forEach>									
										</tbody>
									</table>
									
								</div>
							</div>
						</div>
						<!-- Panel Widget -->
					</div>
					<!-- col-md-12 -->
				</div>
				<!-- row -->

			</div>
			<!-- .vd_content-section -->

		</div>
		<!-- .vd_content -->
	</div>
	<!-- .vd_container -->
</div>


<!-- Middle Content End -->






<div class="myForm">
	<form:form id="formEdit" commandName="itemUpdate" method="post" enctype="multipart/form-data" 
				action="${pageContext.request.contextPath }/dashboardSeller/products/edit.html">
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header" style="background-color: white;">
		        <h3 class="modal-title" id="exampleModalLabel" style="font-weight: bold;">Edit your product</h3>
		      </div>
		      <div class="modal-body" style="padding-bottom: 20px;"> 
		      		
		      	  <div class="form-group">
						<div class="col-xs-12">
							<div class="form-img text-center mgbt-xs-15">
								<img id="output_image"
									src="">
							</div>
                             <label for="file-upload" class="custom-file-upload">
   								 Custom Upload
							 </label>
							 <input id="file-upload" type="file" name="file" onchange="preview_image(event)"/>
						<br>
						<div>
														
							</div>
						</div>
					</div>
		      	  
		          <div class="form-group">
		          	<form:hidden path="id" id="id"/>
		          	<form:hidden path="seller.id" id="seller"/>
		          	<form:hidden path="itemCode" id="picture"/>
		          	<%-- <form:hidden path="seller"/> --%>
		            <label for="recipient-name" class="form-control-label">Name of Picture:</label>
		            <form:input path="itemName" type="text" class="form-control" id="name" value=""/>
		          </div>
		          <div class="form-group">     	
		            <label for="recipient-name" class="form-control-label">Category:</label>
		            <form:select path="category.id" cssClass="form-control" id="categoryName"
								items="${categories }" itemValue="id" itemLabel="name">
					</form:select>
		          </div>
		          <div class="form-group">
		            <label for="message-text" class="form-control-label">Price:</label>
		            <form:input path="itemPrice" class="form-control" id="price" type="number" min="1" style="width: 20%"/>
		          </div>
		         
		      </div>
		      <div class="modal-footer" style="background-color: white;">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button type="submit" class="btn btn-primary">Save changes</button>
		      </div>
		    </div>
		  </div>
		</div>
	</form:form>
</div>





	


<style type="text/css">
	input[type="file"] {
   		display: none;
	}
	.custom-file-upload {
		margin-left: 39%;
		background-color: #1fae66;
		color: white;
	    border: 1px solid #ccc;
	    display: inline-block;
	    padding: 6px 12px;
	    cursor: pointer;
	    border-radius: 4px;
	}
</style>


<script type='text/javascript'>
	function preview_image(event) 
	{
	 var reader = new FileReader();
	 reader.onload = function()
	 {
	  var output = document.getElementById('output_image');
	  output.src = reader.result;
	 }
	 reader.readAsDataURL(event.target.files[0]);
	}
</script> 
















