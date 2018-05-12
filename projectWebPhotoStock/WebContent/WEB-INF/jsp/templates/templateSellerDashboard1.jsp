<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<!--[if IE 8]>			<html class="ie ie8"> <![endif]-->
<!--[if IE 9]>			<html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->	<html><!--<![endif]-->

<!-- Specific Page Data -->
<!-- End of Data -->

<head>
    <meta charset="utf-8" />
    <title>User Profile Pages HTML Template - Responsive Multipurpose Admin Templates | Vendroid</title>
    <meta name="keywords" content="HTML5 Template, CSS3, All Purpose Admin Template, Vendroid" />
    <meta name="description" content="User Profile Pages - Responsive Admin HTML Template">
    <meta name="author" content="Venmond">
    
    <!-- Set the viewport width to device width for mobile -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">    
    
    
    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="http://www.venmond.com/demo/vendroid/img/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="http://www.venmond.com/demo/vendroid/img/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="http://www.venmond.com/demo/vendroid/img/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="http://www.venmond.com/demo/vendroid/img/ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="img/ico/favicon.png">
    
    
    <!-- CSS -->
       
    <!-- Bootstrap & FontAwesome & Entypo CSS -->
    <link href="${pageContext.request.contextPath }/assets/user/diamond/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath }/assets/user/diamond/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!--[if IE 7]><link type="text/css" rel="stylesheet" href="css/font-awesome-ie7.min.css"><![endif]-->
    <link href="${pageContext.request.contextPath }/assets/user/diamond/css/font-entypo.css" rel="stylesheet" type="text/css">    

    <!-- Fonts CSS -->
    <link href="${pageContext.request.contextPath }/assets/user/diamond/css/fonts.css"  rel="stylesheet" type="text/css">
               
    <!-- Plugin CSS -->
    <link href="${pageContext.request.contextPath }/assets/user/diamond/plugins/jquery-ui/jquery-ui.custom.min.css" rel="stylesheet" type="text/css">    
    <link href="${pageContext.request.contextPath }/assets/user/diamond/plugins/prettyPhoto-plugin/css/prettyPhoto.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath }/assets/user/diamond/plugins/isotope/css/isotope.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath }/assets/user/diamond/plugins/pnotify/css/jquery.pnotify.css" media="screen" rel="stylesheet" type="text/css">    
	<link href="${pageContext.request.contextPath }/assets/user/diamond/plugins/google-code-prettify/prettify.css" rel="stylesheet" type="text/css"> 
   
         
    <link href="${pageContext.request.contextPath }/assets/user/diamond/plugins/mCustomScrollbar/jquery.mCustomScrollbar.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath }/assets/user/diamond/plugins/tagsInput/jquery.tagsinput.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath }/assets/user/diamond/plugins/bootstrap-switch/bootstrap-switch.css" rel="stylesheet" type="text/css">    
    <link href="${pageContext.request.contextPath }/assets/user/diamond/plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css">    
    <link href="${pageContext.request.contextPath }/assets/user/diamond/plugins/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath }/assets/user/diamond/plugins/colorpicker/css/colorpicker.css" rel="stylesheet" type="text/css">            

	<!-- Specific CSS -->
	    <link href="http://www.venmond.com/demo/vendroid/plugins/dataTables/css/jquery.dataTables.css" rel="stylesheet" type="text/css"><link href="plugins/dataTables/css/dataTables.bootstrap.css" rel="stylesheet" type="text/css">   
     
    <!-- Theme CSS -->
    <link href="${pageContext.request.contextPath }/assets/user/diamond/css/theme.min.css" rel="stylesheet" type="text/css">
    <!--[if IE]> <link href="css/ie.css" rel="stylesheet" > <![endif]-->
    <link href="${pageContext.request.contextPath }/assets/user/diamond/css/chrome.css" rel="stylesheet" type="text/chrome"> <!-- chrome only css -->    


        
    <!-- Responsive CSS -->
        	<link href="${pageContext.request.contextPath }/assets/user/diamond/css/theme-responsive.min.css" rel="stylesheet" type="text/css"> 

	  
 
 
    <!-- for specific page in style css -->
        
    <!-- for specific page responsive in style css -->
        
    
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath }/assets/user/diamond/custom/custom.css" rel="stylesheet" type="text/css">



    <!-- Head SCRIPTS -->
    <script type="text/javascript" src="${pageContext.request.contextPath }/assets/user/diamond/js/modernizr.js"></script> 
    <script type="text/javascript" src="${pageContext.request.contextPath }/assets/user/diamond/js/mobile-detect.min.js"></script> 
    <script type="text/javascript" src="${pageContext.request.contextPath }/assets/user/diamond/js/mobile-detect-modernizr.js"></script> 
    
    
    <script type="text/javascript" src="${pageContext.request.contextPath }/assets/user/diamond/js/jquery-1.10.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/user/diamond/js/dataTableModal.js"></script> 
    
 
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script type="text/javascript" src="js/html5shiv.js"></script>
      <script type="text/javascript" src="js/respond.min.js"></script>     
    <![endif]-->
    
</head>    

<body id="pages" class="full-layout  nav-right-hide nav-right-start-hide  nav-top-fixed      responsive    clearfix" data-active="pages "  data-smooth-scrolling="1">     
<div class="vd_body">
<!-- Header Start -->
  <header class="header-1" id="header">
      <div class="vd_top-menu-wrapper">
        <div class="container ">
          <div class="vd_top-nav vd_nav-width  ">
          <div class="vd_panel-header">
          	<div class="logo">
            	<a href="${pageContext.request.contextPath }/home.html"><font size="4" face="verdana" color="white">T2LC Stock</font></a>
            </div>
            <!-- logo -->
            <div class="vd_panel-menu  hidden-sm hidden-xs" data-intro="<strong>Minimize Left Navigation</strong><br/>Toggle navigation size to medium or small size. You can set both button or one button only. See full option at documentation." data-step=1>
            		                	<span class="nav-medium-button menu" data-toggle="tooltip" data-placement="bottom" data-original-title="Medium Nav Toggle" data-action="nav-left-medium">
	                    <i class="fa fa-bars"></i>
                    </span>
                                		                    
                	<span class="nav-small-button menu" data-toggle="tooltip" data-placement="bottom" data-original-title="Small Nav Toggle" data-action="nav-left-small">
	                    <i class="fa fa-ellipsis-v"></i>
                    </span> 
                                       
            </div>
            <div class="vd_panel-menu left-pos visible-sm visible-xs">
                                 
                        <span class="menu" data-action="toggle-navbar-left">
                            <i class="fa fa-ellipsis-v"></i>
                        </span>  
                            
                              
            </div>
            <div class="vd_panel-menu visible-sm visible-xs">
                	<span class="menu visible-xs" data-action="submenu">
	                    <i class="fa fa-bars"></i>
                    </span>        
                          
                        <span class="menu visible-sm visible-xs" data-action="toggle-navbar-right">
                            <i class="fa fa-comments"></i>
                        </span>                   
                   	 
            </div>                                     
            <!-- vd_panel-menu -->
          </div>
          <!-- vd_panel-header -->
            
          </div>    
          <div class="vd_container">
          	<div class="row">
            	<div class="col-sm-5 col-xs-12">
            		
<div class="vd_menu-search">
  <form id="search-box" method="post" action="pages-user-profile.php.html#">
    <input type="text" name="search" class="vd_menu-search-text width-60" placeholder="Search">
    <div class="vd_menu-search-category"> <span data-action="click-trigger"> <span class="separator"></span> <span class="text">Category</span> <span class="icon"> <i class="fa fa-caret-down"></i></span> </span>
      <div class="vd_mega-menu-content width-xs-2 center-xs-2 right-sm" data-action="click-target">
        <div class="child-menu">
          <div class="content-list content-menu content">
            <ul class="list-wrapper">
              <li>
                <label>
                  <input type="checkbox" value="all-files">
                  <span>All Files</span></label>
              </li>
              <li>
                <label>
                  <input type="checkbox" value="photos">
                  <span>Photos</span></label>
              </li>
              <li>
                <label>
                  <input type="checkbox" value="illustrations">
                  <span>Illustrations</span></label>
              </li>
              <li>
                <label>
                  <input type="checkbox" value="video">
                  <span>Video</span></label>
              </li>
              <li>
                <label>
                  <input type="checkbox" value="audio">
                  <span>Audio</span></label>
              </li>
              <li>
                <label>
                  <input type="checkbox" value="flash">
                  <span>Flash</span></label>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <span class="vd_menu-search-submit"><i class="fa fa-search"></i> </span>
  </form>
</div>
                </div>
                <div class="col-sm-7 col-xs-12">
              		<div class="vd_mega-menu-wrapper">
                    	<div class="vd_mega-menu pull-right">
            				<ul class="mega-ul">
    <li id="top-menu-profile" class="profile mega-li"> 
        <a href="pages-user-profile.php.html#" class="mega-link"  data-action="click-trigger"> 
            <span  class="mega-image">
                <img style="vertical-align: middle; " src="${pageContext.request.contextPath }/assets/user/images/avatarAccount/${sessionScope.seller.photo }" alt="example image" />               
            </span>
            <span class="mega-name">
                ${sessionScope.seller.lastName }<i class="fa fa-caret-down fa-fw"></i> 
            </span>
        </a> 
      <div class="vd_mega-menu-content  width-xs-2  left-xs left-sm" data-action="click-target">
        <div class="child-menu"> 
        	<div class="content-list content-menu">
                <ul class="list-wrapper pd-lr-10">
                    <li> <a href="pages-user-profile.php.html#"> <div class="menu-icon"><i class=" fa fa-user"></i></div> <div class="menu-text">Edit Profile</div> </a> </li>
                    <li> <a href="pages-user-profile.php.html#"> <div class="menu-icon"><i class=" fa fa-trophy"></i></div> <div class="menu-text">My Achievements</div> </a> </li>
                    <li> <a href="pages-user-profile.php.html#"> <div class="menu-icon"><i class=" fa fa-envelope"></i></div> <div class="menu-text">Messages</div><div class="menu-badge"><div class="badge vd_bg-red">10</div></div> </a>  </li>
                    <li> <a href="pages-user-profile.php.html#"> <div class="menu-icon"><i class=" fa fa-tasks
"></i></div> <div class="menu-text"> Tasks</div><div class="menu-badge"><div class="badge vd_bg-red">5</div></div> </a> </li> 
                    <li class="line"></li>                
                    <li> <a href="pages-user-profile.php.html#"> <div class="menu-icon"><i class=" fa fa-lock
"></i></div> <div class="menu-text">Privacy</div> </a> </li>
                    <li> <a href="pages-user-profile.php.html#"> <div class="menu-icon"><i class=" fa fa-cogs"></i></div> <div class="menu-text">Settings</div> </a> </li>
                    <li> <a href="pages-user-profile.php.html#"> <div class="menu-icon"><i class="  fa fa-key"></i></div> <div class="menu-text">Lock</div> </a> </li>
                    <li> <a href="${pageContext.request.contextPath }/account/logout.html"> <div class="menu-icon"><i class=" fa fa-sign-out"></i></div>  <div class="menu-text">Sign Out</div> </a> </li>
                    <li class="line"></li>                
                    <li> <a href="pages-user-profile.php.html#"> <div class="menu-icon"><i class=" fa fa-question-circle"></i></div> <div class="menu-text">Help</div> </a> </li>
                    <li> <a href="pages-user-profile.php.html#"> <div class="menu-icon"><i class=" glyphicon glyphicon-bullhorn"></i></div> <div class="menu-text">Report a Problem</div> </a> </li>              
                </ul>
            </div> 
        </div> 
      </div>     
  
    </li>               
       
    <li id="top-menu-settings" class="one-big-icon hidden-xs hidden-sm mega-li" data-intro="<strong>Toggle Right Navigation </strong><br/>On smaller device such as tablet or phone you can click on the middle content to close the right or left navigation." data-step=2 data-position="left"> 
    	<a href="#" class="mega-link"> 
           <span class="mega-icon">
                <i class="fa fa-comments"></i> 
            </span>           
			<span class="badge vd_bg-red">0</span>               
        </a>              
       
    </li>
	</ul>
<!-- Head menu search form ends -->                         
                        </div>
                    </div>
                </div>

            </div>
          </div>
        </div>
        <!-- container --> 
      </div>
      <!-- vd_primary-menu-wrapper --> 

  </header>
  <!-- Header Ends --> 
<div class="content">
	<div class="container">
	<div class="vd_navbar vd_nav-width vd_navbar-tabs-menu vd_navbar-left  ">
		<div class="navbar-menu clearfix">
			<h3 class="menu-title hide-nav-medium hide-nav-small" style="margin-top: 10px">MAIN NAVIGATION</h3>
			<div class="vd_menu">
				<ul>
					<li><a href="${pageContext.request.contextPath }/dashboardSeller.html">
							<span class="menu-icon"><i class="fa fa-dashboard"></i></span> <span
							class="menu-text">Dashboard</span> <span class="menu-badge"></span>
						</a>
					</li>
					<li><a href="${pageContext.request.contextPath }/dashboardSeller/profile.html">
							<span class="menu-icon"><i class="fa fa-user"></i></span> <span
							class="menu-text">Profile</span> <span class="menu-badge"></span>
						</a>
					</li>
					<li><a href="#">
							<span class="menu-icon"><i class="fa fa-shopping-cart"></i></span> <span
							class="menu-text">Package Seller Information</span> <span class="menu-badge"></span>
						</a>
					</li>
					<li>
				    	<a href="javascript:void(0);" data-action="click-trigger" class="">
				        	<span class="menu-icon"><i class="fa fa-cubes"> </i></span> 
				            <span class="menu-text">My Products</span>  
				            <span class="menu-badge"><span class="badge vd_bg-black-30"><i class="fa fa-angle-down"></i></span></span>
				       	</a>
				     	<div class="child-menu" data-action="click-target" style="display: none;">
				            <ul>  
				                <li>
				                    <a href="${pageContext.request.contextPath }/dashboardSeller/products/table.html">
				                        <span class="menu-text">Products Table</span>  
				                    </a>
				                </li> 
				                <li>
				                    <a href="${pageContext.request.contextPath }/dashboardSeller/products/add.html">
				                        <span class="menu-text">Add Product</span>                                  
				                    </a>
				                </li>                                                                                               
				            </ul>   
				      	</div>
   					</li>
					<li><a href="#">
							<span class="menu-icon"><i class="fa fa-comments"></i></span> <span
							class="menu-text">Comments</span> <span class="menu-badge"></span>
						</a>
					</li>
					<li><a href="${pageContext.request.contextPath }/dashboardSeller/settingProfile.html">
							<span class="menu-icon"><i class="fa fa-cog"></i></span> <span
							class="menu-text">Settings Profile</span> <span class="menu-badge"></span>
						</a>
					</li>
				</ul>
				<!-- Head menu search form ends -->
			</div>
		</div>
		<div class="navbar-spacing clearfix"></div>
		<div class="vd_menu vd_navbar-bottom-widget">
			<ul>
				<li><a
					href="http://www.venmond.com/demo/vendroid/pages-logout.php"> <span
						class="menu-icon"><i class="fa fa-sign-out"></i></span> <span
						class="menu-text">Logout</span>
				</a></li>
			</ul>
		</div>
	</div>











				<tiles:insertAttribute name="contentDashboard1"></tiles:insertAttribute>










 </div>
  <!-- .container --> 
</div>
<!-- .content -->

<!-- Footer Start -->
  <footer class="footer-1"  id="footer">      
    <div class="vd_bottom ">
        <div class="container">
            <div class="row">
              <div class=" col-xs-12">
                <div class="copyright">
                  	Copyright &copy;2014 Venmond Inc. All Rights Reserved 
                </div>
              </div>
            </div><!-- row -->
        </div><!-- container -->
    </div>
  </footer>
<!-- Footer END -->
 
</div>

<!-- .vd_body END  -->
<a id="back-top" href="listtables-data-tables.php.html#" data-action="backtop" class="vd_back-top visible"> <i class="fa  fa-angle-up"> </i> </a>

<!--
<a class="back-top" href="#" id="back-top"> <i class="icon-chevron-up icon-white"> </i> </a> -->

<!-- Javascript =============================================== --> 
<!-- Placed at the end of the document so the pages load faster --> 
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/user/diamond/js/jquery.js"></script> 
<!--[if lt IE 9]>
  <script type="text/javascript" src="js/excanvas.js"></script>      
<![endif]-->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/user/diamond/js/bootstrap.min.js"></script> 
<script type="text/javascript" src='${pageContext.request.contextPath }/assets/user/diamond/plugins/jquery-ui/jquery-ui.custom.min.js'></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/user/diamond/plugins/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath }/assets/user/diamond/js/caroufredsel.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/user/diamond/js/plugins.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath }/assets/user/diamond/plugins/breakpoints/breakpoints.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/user/diamond/plugins/dataTables/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/user/diamond/plugins/prettyPhoto-plugin/js/jquery.prettyPhoto.js"></script> 

<script type="text/javascript" src="${pageContext.request.contextPath }/assets/user/diamond/plugins/mCustomScrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/user/diamond/plugins/tagsInput/jquery.tagsinput.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/user/diamond/plugins/bootstrap-switch/bootstrap-switch.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/user/diamond/plugins/blockUI/jquery.blockUI.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/user/diamond/plugins/pnotify/js/jquery.pnotify.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath }/assets/user/diamond/js/theme.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/user/diamond/custom/custom.js"></script>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath }/assets/user/diamond/js/jquery-1.10.1.js"></script> --%>


<!-- Specific Page Scripts Put Here -->

<script type="text/javascript" src="${pageContext.request.contextPath }/assets/user/diamond/plugins/dataTables/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/user/diamond/plugins/dataTables/dataTables.bootstrap.js"></script>
<script type="text/javascript">
		$(document).ready(function() {
				"use strict";
				
				$('#data-tables').dataTable();
		} );
</script>

<!-- Specific Page Scripts END -->




<!-- Google Analytics: Change UA-XXXXX-X to be your site's ID. Go to http://www.google.com/analytics/ for more information. -->

<script>
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-XXXXX-X']);
    _gaq.push(['_trackPageview']);

    (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();
</script> 
</body>
</html>