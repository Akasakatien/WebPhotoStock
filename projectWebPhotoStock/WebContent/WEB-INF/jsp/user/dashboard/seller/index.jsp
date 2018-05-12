<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!-- Middle Content Start -->

<div class="vd_content-wrapper" style="min-height: 1051px;">
	<div class="vd_container" style="min-height: 1051px;">
		<div class="vd_content clearfix">
			<div class="vd_head-section clearfix">
				<div class="vd_panel-header">
					<ul class="breadcrumb">
						<li><a href="index.php">Home</a></li>
						<li class="active">E-Commerce Dashboard</li>
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
			<!-- vd_head-section -->

			<div class="vd_title-section clearfix">
				<div class="vd_panel-header">
					<h1>Dashboard Seller</h1>
					<small class="subtitle">Dashboard Seller</small>
					<div class="vd_panel-menu  hidden-xs">
						<div class="menu no-bg vd_red"
							data-original-title="Start Layout Tour Guide"
							data-toggle="tooltip" data-placement="bottom"
							onclick="javascript:introJs().setOption('showBullets', false).start();">
							<span class="menu-icon font-md"><i
								class="fa fa-question-circle"></i></span>
						</div>
						<!-- menu -->

						<div class="menu">
							<div data-action="click-trigger">
								<span class="menu-icon mgr-10"><i class="fa fa-filter"></i></span>Filter
								<i class="fa fa-angle-down"></i>
							</div>
							<div class="vd_mega-menu-content width-xs-2 left-xs"
								data-action="click-target" style="display: none;">
								<div class="child-menu">
									<div class="content-list content-menu">
										<ul class="list-wrapper pd-lr-10">
											<li><a href="#">
													<div class="menu-icon">
														<i class=" fa fa-user"></i>
													</div>
													<div class="menu-text">Filter User</div>
											</a></li>
											<li><a href="#">
													<div class="menu-icon">
														<i class=" fa fa-calendar"></i>
													</div>
													<div class="menu-text">Filter Date</div>
											</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<!-- menu -->
					</div>
					<!-- vd_panel-menu -->
				</div>
				<!-- vd_panel-header -->
			</div>
			<!-- vd_title-section -->

			<div class="vd_content-section clearfix">
				<div class="row">
					<div class="col-lg-3 col-md-6 col-sm-6 mgbt-sm-15">
						<div class="vd_status-widget vd_bg-green widget">
							<div class="vd_panel-menu">
								<div data-action="refresh" data-original-title="Refresh"
									data-rel="tooltip" class=" menu entypo-icon smaller-font">
									<i class="icon-cycle"></i>
								</div>
							</div>
							<!-- vd_panel-menu -->

							<a class="panel-body" href="#">
								<div class="clearfix">
									<span class="menu-icon"> <i class="icon-network"></i>
									</span> <span class="menu-value"> 1,2M </span>
								</div>
								<div class="menu-text clearfix">Total Visitors</div>
							</a>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6 mgbt-sm-15">
						<div class="vd_status-widget vd_bg-red  widget">
							<div class="vd_panel-menu">
								<div data-action="refresh" data-original-title="Refresh"
									data-rel="tooltip" class=" menu entypo-icon smaller-font">
									<i class="icon-cycle"></i>
								</div>
							</div>
							<!-- vd_panel-menu -->

							<a class="panel-body" href="#">
								<div class="clearfix">
									<span class="menu-icon"> <i class="icon-bars"></i>
									</span> <span class="menu-value"> 24 </span>
								</div>
								<div class="menu-text clearfix">New Orders</div>
							</a>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6 mgbt-xs-15">
						<div class="vd_status-widget vd_bg-blue widget">
							<div class="vd_panel-menu">
								<div data-action="refresh" data-original-title="Refresh"
									data-rel="tooltip" class=" menu entypo-icon smaller-font">
									<i class="icon-cycle"></i>
								</div>
							</div>
							<!-- vd_panel-menu -->

							<a class="panel-body" href="#">
								<div class="clearfix">
									<span class="menu-icon"> <i class="fa fa-comments"></i>
									</span> <span class="menu-value"> 14 </span>
								</div>
								<div class="menu-text clearfix">New Reviews</div>
							</a>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6 mgbt-xs-15">
						<div class="vd_status-widget vd_bg-yellow widget">
							<div class="vd_panel-menu">
								<div data-action="refresh" data-original-title="Refresh"
									data-rel="tooltip" class=" menu entypo-icon smaller-font">
									<i class="icon-cycle"></i>
								</div>
							</div>
							<!-- vd_panel-menu -->

							<a class="panel-body" href="#">
								<div class="clearfix">
									<span class="menu-icon"> <i class="icon-users"></i>
									</span> <span class="menu-value"> 250 </span>
								</div>
								<div class="menu-text clearfix">New Users</div>
							</a>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-8 mgbt-md-20 mgbt-lg-0">
						<div class="panel vd_interactive-widget light-widget widget">
							<div class="panel-body-list">
								<div class="vd_panel-menu">
									<div data-action="refresh"
										class="menu entypo-icon smaller-font" data-placement="bottom"
										data-toggle="tooltip" data-original-title="Refresh">
										<i class="icon-cycle"></i>
									</div>
									<div class="menu entypo-icon smaller-font"
										data-placement="bottom" data-toggle="tooltip"
										data-original-title="Config">
										<div data-action="click-trigger" class="menu-trigger">
											<i class="icon-cog"></i>
										</div>
										<div class="vd_mega-menu-content  width-xs-2  left-xs"
											data-action="click-target" style="display: none;">
											<div class="child-menu">
												<div class="content-list content-menu">
													<ul class="list-wrapper pd-lr-10">
														<li><a href="#">
																<div class="menu-icon">
																	<i class=" fa fa-user"></i>
																</div>
																<div class="menu-text">Panel Menu</div>
														</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
									<div class="menu entypo-icon" data-placement="bottom"
										data-toggle="tooltip" data-original-title="Close"
										data-action="close">
										<i class="icon-cross"></i>
									</div>
								</div>
								<!-- vd_panel-menu -->


								<div class="pd-20">
									<h5 class="mgbt-xs-20 mgtp-20">
										<span class="menu-icon append-icon"><i
											class="icon-graph"></i></span> <strong>Revenue Vs Cost
											Graph</strong> (November)
									</h5>
									<div id="revenue-line-chart"
										style="height: 255px; padding: 0px; position: relative;">
										<canvas class="flot-base" width="530" height="318"
											style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 424px; height: 255px;"></canvas>
										<div class="flot-text"
											style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; font-size: smaller; color: rgb(84, 84, 84);">
											<div class="flot-x-axis flot-x1-axis xAxis x1Axis"
												style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;">
												<div
													style="position: absolute; max-width: 63px; font-style: normal; font-variant: small-caps; font-weight: bold; font-stretch: normal; font-size: 10px; line-height: 13px; font-family: sans-serif; color: rgb(111, 123, 138); top: 241px; left: 35px; text-align: center;">2</div>
												<div
													style="position: absolute; max-width: 63px; font-style: normal; font-variant: small-caps; font-weight: bold; font-stretch: normal; font-size: 10px; line-height: 13px; font-family: sans-serif; color: rgb(111, 123, 138); top: 241px; left: 104px; text-align: center;">4</div>
												<div
													style="position: absolute; max-width: 63px; font-style: normal; font-variant: small-caps; font-weight: bold; font-stretch: normal; font-size: 10px; line-height: 13px; font-family: sans-serif; color: rgb(111, 123, 138); top: 241px; left: 173px; text-align: center;">6</div>
												<div
													style="position: absolute; max-width: 63px; font-style: normal; font-variant: small-caps; font-weight: bold; font-stretch: normal; font-size: 10px; line-height: 13px; font-family: sans-serif; color: rgb(111, 123, 138); top: 241px; left: 242px; text-align: center;">8</div>
												<div
													style="position: absolute; max-width: 63px; font-style: normal; font-variant: small-caps; font-weight: bold; font-stretch: normal; font-size: 10px; line-height: 13px; font-family: sans-serif; color: rgb(111, 123, 138); top: 241px; left: 309px; text-align: center;">10</div>
												<div
													style="position: absolute; max-width: 63px; font-style: normal; font-variant: small-caps; font-weight: bold; font-stretch: normal; font-size: 10px; line-height: 13px; font-family: sans-serif; color: rgb(111, 123, 138); top: 241px; left: 378px; text-align: center;">12</div>
											</div>
											<div class="flot-y-axis flot-y1-axis yAxis y1Axis"
												style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;">
												<div
													style="position: absolute; font-style: normal; font-variant: small-caps; font-weight: bold; font-stretch: normal; font-size: 10px; line-height: 13px; font-family: sans-serif; color: rgb(111, 123, 138); top: 215px; left: 12px; text-align: right;">0</div>
												<div
													style="position: absolute; font-style: normal; font-variant: small-caps; font-weight: bold; font-stretch: normal; font-size: 10px; line-height: 13px; font-family: sans-serif; color: rgb(111, 123, 138); top: 143px; left: 1px; text-align: right;">250</div>
												<div
													style="position: absolute; font-style: normal; font-variant: small-caps; font-weight: bold; font-stretch: normal; font-size: 10px; line-height: 13px; font-family: sans-serif; color: rgb(111, 123, 138); top: 72px; left: 1px; text-align: right;">500</div>
												<div
													style="position: absolute; font-style: normal; font-variant: small-caps; font-weight: bold; font-stretch: normal; font-size: 10px; line-height: 13px; font-family: sans-serif; color: rgb(111, 123, 138); top: 1px; left: 1px; text-align: right;">750</div>
											</div>
										</div>
										<canvas class="flot-overlay" width="530" height="318"
											style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 424px; height: 255px;"></canvas>
									</div>
								</div>
								<div class="row mgbt-xs-0">
									<div class="col-sm-4 mgbt-xs-15 mgbt-sm-0">
										<div class="item-left pd-15">
											<div id="revenue-donut-chart"
												style="height: 100px; padding: 0px; position: relative;">
												<canvas class="flot-base" width="147" height="125"
													style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 118px; height: 100px;"></canvas>
												<canvas class="flot-overlay" width="147" height="125"
													style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 118px; height: 100px;"></canvas>
												<div class="legend">
													<div
														style="position: absolute; width: 54px; height: 45px; top: 5px; right: 5px; background-color: rgb(255, 255, 255); opacity: 0.85;">
													</div>
													<table
														style="position: absolute; top: 5px; right: 5px;; font-size: smaller; color: #545454">
														<tbody>
															<tr>
																<td class="legendColorBox"><div
																		style="border: 1px solid #ccc; padding: 1px">
																		<div
																			style="width: 4px; height: 0; border: 5px solid rgb(31, 174, 102); overflow: hidden"></div>
																	</div></td>
																<td class="legendLabel">Men</td>
															</tr>
															<tr>
																<td class="legendColorBox"><div
																		style="border: 1px solid #ccc; padding: 1px">
																		<div
																			style="width: 4px; height: 0; border: 5px solid rgb(248, 93, 44); overflow: hidden"></div>
																	</div></td>
																<td class="legendLabel">Women</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-8">
										<div class="item-right pd-15">
											<div id="revenue-bar-chart"
												style="height: 100px; padding: 0px; position: relative;">
												<canvas class="flot-base" width="355" height="125"
													style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 284px; height: 100px;"></canvas>
												<div class="flot-text"
													style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; font-size: smaller; color: rgb(84, 84, 84);">
													<div class="flot-x-axis flot-x1-axis xAxis x1Axis"
														style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;">
														<div class="flot-tick-label tickLabel"
															style="position: absolute; max-width: 42px; top: 78px; left: 13px; text-align: center;">Jan</div>
														<div class="flot-tick-label tickLabel"
															style="position: absolute; max-width: 42px; top: 78px; left: 34px; text-align: center;">Feb</div>
														<div class="flot-tick-label tickLabel"
															style="position: absolute; max-width: 42px; top: 78px; left: 55px; text-align: center;">Mar</div>
														<div class="flot-tick-label tickLabel"
															style="position: absolute; max-width: 42px; top: 78px; left: 78px; text-align: center;">Apr</div>
														<div class="flot-tick-label tickLabel"
															style="position: absolute; max-width: 42px; top: 78px; left: 98px; text-align: center;">May</div>
														<div class="flot-tick-label tickLabel"
															style="position: absolute; max-width: 42px; top: 78px; left: 123px; text-align: center;">Jun</div>
														<div class="flot-tick-label tickLabel"
															style="position: absolute; max-width: 42px; top: 78px; left: 147px; text-align: center;">Jul</div>
														<div class="flot-tick-label tickLabel"
															style="position: absolute; max-width: 42px; top: 78px; left: 166px; text-align: center;">Aug</div>
														<div class="flot-tick-label tickLabel"
															style="position: absolute; max-width: 42px; top: 78px; left: 188px; text-align: center;">Sep</div>
														<div class="flot-tick-label tickLabel"
															style="position: absolute; max-width: 42px; top: 78px; left: 210px; text-align: center;">Oct</div>
														<div class="flot-tick-label tickLabel"
															style="position: absolute; max-width: 42px; top: 78px; left: 231px; text-align: center;">Nov</div>
														<div class="flot-tick-label tickLabel"
															style="position: absolute; max-width: 42px; top: 78px; left: 254px; text-align: center;">Dec</div>
													</div>
												</div>
												<canvas class="flot-overlay" width="355" height="125"
													style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 284px; height: 100px;"></canvas>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Panel Widget -->
					</div>
					<!-- col-md-8 -->
					<div class="col-md-4">
						<div class="panel vd_transaction-widget light-widget widget">
							<div class="panel-body">
								<div class="vd_panel-menu">
									<div data-action="refresh"
										class="menu entypo-icon smaller-font" data-placement="bottom"
										data-toggle="tooltip" data-original-title="Refresh">
										<i class="icon-cycle"></i>
									</div>
									<div class="menu entypo-icon smaller-font"
										data-placement="bottom" data-toggle="tooltip"
										data-original-title="Config">
										<div data-action="click-trigger" class="menu-trigger">
											<i class="icon-cog"></i>
										</div>
										<div class="vd_mega-menu-content  width-xs-2  left-xs"
											data-action="click-target" style="display: none;">
											<div class="child-menu">
												<div class="content-list content-menu">
													<ul class="list-wrapper pd-lr-10">
														<li><a href="#">
																<div class="menu-icon">
																	<i class=" fa fa-user"></i>
																</div>
																<div class="menu-text">Panel Menu</div>
														</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
									<div class="menu entypo-icon" data-placement="bottom"
										data-toggle="tooltip" data-original-title="Close"
										data-action="close">
										<i class="icon-cross"></i>
									</div>
								</div>
								<!-- vd_panel-menu -->
								<h5 class="mgbt-xs-20 mgtp-20">
									<span class="menu-icon append-icon"> <i class="icon-pie"></i>
									</span> <strong>Current Week Transaction</strong>
								</h5>
								<div id="pie-chart" class="pie-chart"
									style="height: 388px; padding: 0px; position: relative;">
									<canvas class="flot-base" width="207" height="485"
										style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 166px; height: 388px;"></canvas>
									<canvas class="flot-overlay" width="207" height="485"
										style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 166px; height: 388px;"></canvas>
									<div class="legend">
										<div
											style="position: absolute; width: 55px; height: 134px; top: 5px; right: 5px; background-color: rgb(255, 255, 255); opacity: 0.85;">
										</div>
										<table
											style="position: absolute; top: 5px; right: 5px;; font-size: smaller; color: #545454">
											<tbody>
												<tr>
													<td class="legendColorBox"><div
															style="border: 1px solid #ccc; padding: 1px">
															<div
																style="width: 4px; height: 0; border: 5px solid rgb(252, 182, 96); overflow: hidden"></div>
														</div></td>
													<td class="legendLabel">IE</td>
												</tr>
												<tr>
													<td class="legendColorBox"><div
															style="border: 1px solid #ccc; padding: 1px">
															<div
																style="width: 4px; height: 0; border: 5px solid rgb(206, 145, 219); overflow: hidden"></div>
														</div></td>
													<td class="legendLabel">Safari</td>
												</tr>
												<tr>
													<td class="legendColorBox"><div
															style="border: 1px solid #ccc; padding: 1px">
															<div
																style="width: 4px; height: 0; border: 5px solid rgb(86, 162, 207); overflow: hidden"></div>
														</div></td>
													<td class="legendLabel">Opera</td>
												</tr>
												<tr>
													<td class="legendColorBox"><div
															style="border: 1px solid #ccc; padding: 1px">
															<div
																style="width: 4px; height: 0; border: 5px solid rgb(82, 215, 147); overflow: hidden"></div>
														</div></td>
													<td class="legendLabel">Chrome</td>
												</tr>
												<tr>
													<td class="legendColorBox"><div
															style="border: 1px solid #ccc; padding: 1px">
															<div
																style="width: 4px; height: 0; border: 5px solid rgb(252, 134, 96); overflow: hidden"></div>
														</div></td>
													<td class="legendLabel">Firefox</td>
												</tr>
												<tr>
													<td class="legendColorBox"><div
															style="border: 1px solid #ccc; padding: 1px">
															<div
																style="width: 4px; height: 0; border: 5px solid rgb(204, 204, 204); overflow: hidden"></div>
														</div></td>
													<td class="legendLabel">Other</td>
												</tr>
											</tbody>
										</table>
									</div>
									<span class="pieLabel" id="pieLabel0"
										style="position: absolute; top: 133.5px; left: 91.5px;"><div
											style="font-size: 8pt; text-align: center; padding: 2px; color: white;">
											IE<br>17%
										</div></span><span class="pieLabel" id="pieLabel1"
										style="position: absolute; top: 166.5px; left: 108px;"><div
											style="font-size: 8pt; text-align: center; padding: 2px; color: white;">
											Safari<br>14%
										</div></span><span class="pieLabel" id="pieLabel2"
										style="position: absolute; top: 198.5px; left: 95.5px;"><div
											style="font-size: 8pt; text-align: center; padding: 2px; color: white;">
											Opera<br>14%
										</div></span><span class="pieLabel" id="pieLabel3"
										style="position: absolute; top: 208.5px; left: 48.5px;"><div
											style="font-size: 8pt; text-align: center; padding: 2px; color: white;">
											Chrome<br>22%
										</div></span><span class="pieLabel" id="pieLabel4"
										style="position: absolute; top: 155.5px; left: 25px;"><div
											style="font-size: 8pt; text-align: center; padding: 2px; color: white;">
											Firefox<br>29%
										</div></span><span class="pieLabel" id="pieLabel5"
										style="position: absolute; top: 128.5px; left: 59.5px;"><div
											style="font-size: 8pt; text-align: center; padding: 2px; color: white;">
											Other<br>5%
										</div></span>
								</div>
								<div class="vd_info br">
									<h5 class="text-right font-semibold">
										<strong>TOTAL TRANSACTION</strong>
									</h5>
									<h3 class="text-right  vd_red">
										<span class="append-icon"><i class="fa fa-usd"></i></span>546,456
									</h3>
								</div>
							</div>
						</div>
					</div>
					<!-- .col-md-4 -->
				</div>
				
				<!-- .row -->
			</div>
			<!-- .vd_content-section -->

		</div>
		<!-- .vd_content -->
	</div>
	<!-- .vd_container -->
</div>

