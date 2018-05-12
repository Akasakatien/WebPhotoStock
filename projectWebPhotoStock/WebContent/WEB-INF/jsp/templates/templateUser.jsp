<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html lang="en-US">

<!-- Mirrored from themes.designcrumbs.com/stocky/downloads/category/abstract/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 23 Jan 2018 18:59:16 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0" />
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="../../../xmlrpc.php">

<link rel="shortcut icon" href="../../../files/edd/2014/06/favicon.png" />

<title>${title }&#8211;Stocky</title>
<link rel='dns-prefetch' href='http://platform-api.sharethis.com/' />
<link rel='dns-prefetch' href='http://fonts.googleapis.com/' />
<link rel='dns-prefetch' href='http://netdna.bootstrapcdn.com/' />
<link rel='dns-prefetch' href='http://s.w.org/' />
<link rel="alternate" type="application/rss+xml"
	title="Stocky &raquo; Feed" href="../../../feed/index.html" />
<link rel="alternate" type="application/rss+xml"
	title="Stocky &raquo; Comments Feed"
	href="../../../comments/feed/index.html" />
<link rel="alternate" type="application/rss+xml"
	title="Stocky &raquo; Abstract Download Category Feed"
	href="feed/index.html" />
<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.3\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.3\/svg\/","svgExt":".svg","source":{"concatemoji":"http:\/\/22430-presscdn.pagely.netdna-cdn.com\/stocky\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.9.2"}};
			!function(a,b,c){function d(a,b){var c=String.fromCharCode;l.clearRect(0,0,k.width,k.height),l.fillText(c.apply(this,a),0,0);var d=k.toDataURL();l.clearRect(0,0,k.width,k.height),l.fillText(c.apply(this,b),0,0);var e=k.toDataURL();return d===e}function e(a){var b;if(!l||!l.fillText)return!1;switch(l.textBaseline="top",l.font="600 32px Arial",a){case"flag":return!(b=d([55356,56826,55356,56819],[55356,56826,8203,55356,56819]))&&(b=d([55356,57332,56128,56423,56128,56418,56128,56421,56128,56430,56128,56423,56128,56447],[55356,57332,8203,56128,56423,8203,56128,56418,8203,56128,56421,8203,56128,56430,8203,56128,56423,8203,56128,56447]),!b);case"emoji":return b=d([55358,56794,8205,9794,65039],[55358,56794,8203,9794,65039]),!b}return!1}function f(a){var c=b.createElement("script");c.src=a,c.defer=c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var g,h,i,j,k=b.createElement("canvas"),l=k.getContext&&k.getContext("2d");for(j=Array("flag","emoji"),c.supports={everything:!0,everythingExceptFlag:!0},i=0;i<j.length;i++)c.supports[j[i]]=e(j[i]),c.supports.everything=c.supports.everything&&c.supports[j[i]],"flag"!==j[i]&&(c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&c.supports[j[i]]);c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&!c.supports.flag,c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.everything||(h=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",h,!1),a.addEventListener("load",h,!1)):(a.attachEvent("onload",h),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),g=c.source||{},g.concatemoji?f(g.concatemoji):g.wpemoji&&g.twemoji&&(f(g.twemoji),f(g.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
<style type="text/css">
img.wp-smiley, img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>
<link rel='stylesheet' id='edd-styles-css'
	href="${pageContext.request.contextPath }/assets/user/css/edd.min9fe3.css?ver=2.8.17"
	type='text/css' media='all' />
<link rel='stylesheet' id='dashicons-css'
	href="${pageContext.request.contextPath }/assets/user/css/dashicons.min20fd.css?ver=4.9.2"
	type='text/css' media='all' />
<link rel='stylesheet' id='edd-reviews-css'
	href="${pageContext.request.contextPath }/assets/user/css/edd-reviews.min6b25.css?ver=2.1.4"
	type='text/css' media='all' />
<link rel='stylesheet' id='edd-slg-public-style-css'
	href="${pageContext.request.contextPath }/assets/user/css/style-public41a5.css?ver=1.7.6"
	type='text/css' media='all' />
<link rel='stylesheet' id='css-stocky-css'
	href="${pageContext.request.contextPath }/assets/user/css/style20fd.css?ver=4.9.2"
	type='text/css' media='all' />
<link rel='stylesheet' id='jquery-fancybox-css'
	href="${pageContext.request.contextPath }/assets/user/css/jquery.fancybox20fd.css?ver=4.9.2"
	type='text/css' media='all' />
<link rel='stylesheet' id='font-Roboto-css'
	href="http://fonts.googleapis.com/css?family=Roboto%3A300%2C400%2C400italic%2C700%2C700italic&amp;ver=4.9.2"
	type='text/css' media='all' />
<link rel='stylesheet' id='font-awesome-css'
	href="${pageContext.request.contextPath }/assets/user/css/font-awesome.min20fd.css?ver=4.9.2"
	type='text/css' media='all' />
<link rel='stylesheet' id='edd-wl-styles-css'
	href="${pageContext.request.contextPath }/assets/user/css/edd-wl.min5a2c.css?ver=1.1.7"
	type='text/css' media='screen' />
<script type='text/javascript'
	src="${pageContext.request.contextPath }/assets/user/js/jquery/jqueryb8ff.js?ver=1.12.4"></script>
<script type='text/javascript'
	src="${pageContext.request.contextPath }/assets/user/js/jquery/jquery-migrate.min330a.js?ver=1.4.1"></script>
<script type='text/javascript'
	src="${pageContext.request.contextPath }/assets/user/js/jquery/jquery.fancybox.pack20fd.js?ver=4.9.2"></script>
<script type='text/javascript'
	src="${pageContext.request.contextPath }/assets/user/js/jquery/jquery.stellar20fd.js?ver=4.9.2"></script>
<script type='text/javascript'
	src="${pageContext.request.contextPath }/assets/user/js/jquery/jquery.mobilemenu20fd.js?ver=4.9.2"></script>
<script type='text/javascript'
	src="${pageContext.request.contextPath }/assets/user/js/jquery/jquery.fitvids20fd.js?ver=4.9.2"></script>
<script type='text/javascript'
	src="${pageContext.request.contextPath }/assets/user/js/sharethis.js#product=ga"></script>
<link rel='https://api.w.org/' href='../../../wp-json/index.html' />
<link rel="EditURI" type="application/rsd+xml" title="RSD"
	href="../../../xmlrpc0db0.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml"
	href="http://22430-presscdn.pagely.netdna-cdn.com/stocky/wp-includes/wlwmanifest.xml" />
<meta name="generator" content="WordPress 4.9.2" />

<meta name="generator" content="Easy Digital Downloads v2.8.17" />
<meta name="generator" content="EDD FES v2.5.7" />
<style type="text/css">
a {
	color: #1e73be;
}

a:hover, .meta_block a:hover {
	color: #3470DC;
}

input[type="submit"], button[type="submit"], .btn, div.fes-form .fes-submit input[type="submit"],
	a.button, a.more-link, .widget .cart_item.edd_checkout a,
	.stocky_navigation a, .fes-product-list-pagination-container a,
	.edd-reviews-voting-buttons a.vote-yes, .edd-reviews-voting-buttons a.vote-no,
	#edd-purchase-button, .edd-submit, input.edd-submit[type="submit"],
	.edd-submit.button, .edd-submit.button:visited, .navigation a,
	.navigation span.current, a.insert-file-row {
	border-color: #1e73be !important;
	color: #1e73be !important;
}

input[type="submit"]:hover, button[type="submit"]:hover, .btn:hover, div.fes-form .fes-submit input[type="submit"]:hover,
	a.button:hover, a.more-link:hover, .widget .cart_item.edd_checkout a:hover,
	.stocky_navigation a:hover, .fes-product-list-pagination-container a:hover,
	.edd-reviews-voting-buttons a.vote-yes:hover,
	.edd-reviews-voting-buttons a.vote-no:hover, #edd-purchase-button:hover,
	.edd-submit:hover, input.edd-submit[type="submit"]:hover, .edd-submit.button:hover,
	.navigation a:hover, .navigation span.current, a.insert-file-row:hover,
	.sweet-alert button {
	background-color: #1e73be !important;
}

#header, body.page-template-page-login-php {
	background-image:
		url("${pageContext.request.contextPath }/assets/user/images/headerimage.jpg");
}

#home_cta {
	background-image:
		url("${pageContext.request.contextPath }/assets/user/images/photographer.jpg");
}
</style>
<script type="text/javascript">
/* <![CDATA[  */


jQuery(document).ready(function($){

	// load mobile menu
	$('#main_menu ul.menu').mobileMenu();
    $('select.select-menu').each(function(){
        var title = $(this).attr('title');
        if( $('option:selected', this).val() != ''  ) title = $('option:selected',this).text();
        $(this)
            .css({'z-index':10,'opacity':0,'-khtml-appearance':'none'})
            .after('<span class="select">' + title + '</span>')
            .change(function(){
                val = $('option:selected',this).text();
                $(this).next().text(val);
            })
    });

	/* Masonry */
	var $container = $('.edd_downloads_list');
	// initialize Masonry after all images have loaded
	$container.imagesLoaded( function() {
		$container.masonry( { itemSelector: '.edd_download' } );
	});
	
	// Moving the pagination up a div
	var $edd_pagination = $('#edd_download_pagination');
	$edd_pagination.parent().after($edd_pagination);

	/* Parallax */
	(function(){
		var ua = navigator.userAgent,
		isMobileWebkit = /WebKit/.test(ua) && /Mobile/.test(ua);

		/* only show if not on mobile */
		if (isMobileWebkit) {
// 			$('html').addClass('stocky_mobile');
		} else {
			$.stellar({
				horizontalScrolling: false,
				verticalOffset: 0
			});
		}

	})();

	// FitVids
	$("#content").fitVids();

	/* Menu Toggle */
	$('#menu_toggle').click(function() {
		$('#main_menu').slideToggle('fast');
	});

	/* Search Toggle */
	$('#search_toggle').click(function() {
		$('#search_wrap').slideToggle('fast');
	});

	/* Ratings */
	$( '.comment_form_rating .edd_reviews_rating_box' ).find('a').on('click', function (e) {
		e.preventDefault();
		$( '.comment_form_rating .edd_reviews_rating_box' ).find('a').removeClass( 'active' );
		$( this ).addClass( 'active' );
	});

	/* Add span within comment reply title, move the <small> outside of it */
	$('#reply-title').wrapInner('<span>').append( $('#reply-title small') );

	// Increase counter on add to cart
	$('.purAddToCart').ajaxComplete(function(event,request, settings) {
		if(JSON.parse(request.responseText).msgId == 0) {
			var currentCount = parseInt($('#header_cart_count').text());
			var newCount = currentCount + 1;
			$('#header_cart_count').text(newCount);
		}
	});

	// Fancybox
	if( $('.lightbox').length ) {
		$(".lightbox").attr('rel', 'gallery').fancybox({
			'transitionIn'		: 'fade',
			'transitionOut'		: 'fade',
			'showNavArrows' 	: 'true'
		});
	}


});
/* ]]> */
</script>
</head>
<body
	class="archive tax-download_category term-abstract term-28 button_light content_left edd-test-mode">
	<section id="site_wrap">


		<header class="wrapper dark_scheme" id="header"
			data-stellar-background-ratio="0.5">
			<div class="container">

				<div id="menu_wrap" class="clearfix">


					<div id="logo_wrap">
						<h1 class="sitename_logo">
							<a href="${pageContext.request.contextPath }/home.html"
								title="Stocky">T2LC Stock</a>
						</h1>
					</div>


					<a href="#" id="menu_toggle"></a> <a href="#" id="search_toggle"></a>

					<div id="cart_links" class="clearfix">
						<ul>
								<c:if test="${pageContext.request.userPrincipal.name != null}">
									<li><a href=" <c:url value="/account/profile.html?us=${pageContext.request.userPrincipal.name }"></c:url> ">${pageContext.request.userPrincipal.name }</a> |
									<a id="stocky_login" href="<c:url value="home/process-logout.html"></c:url>">Logout</a></li>
								</c:if>
								<c:if test="${sessionScope.seller != null}">
									<li><a href="${pageContext.request.contextPath }/dashboardSeller.html">${sessionScope.seller.username }</a> |
									<a id="stocky_login" href="${pageContext.request.contextPath }/account/logout.html">Logout</a></li>
								</c:if>
							
								
								<c:if test="${pageContext.request.userPrincipal.name == null && sessionScope.seller == null}">
								<li>	<a href="${pageContext.request.contextPath }/account/buyerLogin.html"
										title="Member Login" id="stocky_login"> Buyer Login</a>
								</li>
								<li>	<a href="${pageContext.request.contextPath }/account/sellerLogin.html"
										title="Member Login" id="stocky_login"> Seller Login</a>
								</li>
								</c:if> 
								
								<%-- <li>	<a href="${pageContext.request.contextPath }/account.html"
										title="Member Login" id="stocky_login"> Member
											Login</a>
								</li> --%>
						</ul>
					</div>

					<div id="search_wrap">
						<form method="get" class="searchform"
							action="http://themes.designcrumbs.com/stocky/">
							<div>
								<input type="text" class="search_input" value="Search Products"
									name="s"
									onfocus="if (this.value == 'Search Products') {this.value = '';}"
									onblur="if (this.value == '') {this.value = 'Search Products';}" />
								<input type="hidden" id="searchsubmit" value="Search" /> <input
									type="hidden" name="post_type" value="download" />
							</div>
						</form>
					</div>

				</div>

				<nav id="main_menu" class="clearfix ">
					<div id="stocky_menu_container" class="menu-main-container">
						<ul id="stocky_menu" class="menu">
							<li id="menu-item-144"
								class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home menu-item-144"><a
								href="${pageContext.request.contextPath }/home.html">Home</a></li>
							<li id="menu-item-296"
								class="menu-item menu-item-type-custom menu-item-object-custom menu-item-296"><a
								href="../../../blog/index.html">Blog</a></li>
							<li id="menu-item-198"
								class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-198"><a
								href="#">Stocky Pages</a>
								<ul class="sub-menu">
									<li id="menu-item-199"
										class="menu-item menu-item-type-post_type menu-item-object-page menu-item-199"><a
										href="${pageContext.request.contextPath }/account/login.html">Login</a></li>
									<li id="menu-item-200"
										class="menu-item menu-item-type-post_type menu-item-object-page menu-item-200"><a
										href="${pageContext.request.contextPath }/account/registerToBuy.html">Register
											to Buy</a></li>
									<li id="menu-item-201"
										class="menu-item menu-item-type-post_type menu-item-object-page menu-item-201"><a
										href="${pageContext.request.contextPath }/account/registerToSale.html">Register
											to Sale</a></li>
									<li id="menu-item-158"
										class="menu-item menu-item-type-post_type menu-item-object-page menu-item-158"><a
										href="../../../kitchen-sink/index.html">Kitchen Sink</a></li>
									<li id="menu-item-211"
										class="menu-item menu-item-type-post_type menu-item-object-page menu-item-211"><a
										href="../../../full-width/index.html">Full Width</a></li>
								</ul></li>
							<li id="menu-item-146"
								class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-146"><a
								href="../../../wish-lists/index.html">Wish Lists</a>
								<ul class="sub-menu">
									<li id="menu-item-147"
										class="menu-item menu-item-type-post_type menu-item-object-page menu-item-147"><a
										href="../../../wish-lists/view/95/index.html">11Edit</a></li>
									<li id="menu-item-148"
										class="menu-item menu-item-type-post_type menu-item-object-page menu-item-148"><a
										href="../../../wish-lists/edit/index.html">Edit</a></li>
									<li id="menu-item-149"
										class="menu-item menu-item-type-post_type menu-item-object-page menu-item-149"><a
										href="../../../wish-lists/view/index.html">View</a></li>
								</ul></li>
							<li id="menu-item-150"
								class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-150"><a
								href="#">Popular Categories</a>
								<ul class="sub-menu">
									<li id="menu-item-151"
										class="menu-item menu-item-type-taxonomy menu-item-object-download_category menu-item-151"><a
										href="../nature/index.html">Nature</a></li>
									<li id="menu-item-152"
										class="menu-item menu-item-type-taxonomy menu-item-object-download_category menu-item-152"><a
										href="../landscapes/index.html">Landscapes</a></li>
									<li id="menu-item-153"
										class="menu-item menu-item-type-taxonomy menu-item-object-download_category menu-item-153"><a
										href="../people/index.html">People</a></li>
									<li id="menu-item-154"
										class="menu-item menu-item-type-taxonomy menu-item-object-download_category menu-item-154"><a
										href="../travel/index.html">Travel</a></li>
									<li id="menu-item-155"
										class="menu-item menu-item-type-taxonomy menu-item-object-download_category menu-item-155"><a
										href="../electronics/index.html">Electronics</a></li>
								</ul></li>
							<li id="menu-item-162"
								class="menu-item menu-item-type-post_type menu-item-object-page menu-item-162"><a
								href="${pageContext.request.contextPath }/contact.html">Contact</a>
							</li>
							<c:if test="${sessionScope.seller != null }">
								<li id="menu-item-162"
										class="menu-item menu-item-type-post_type menu-item-object-page menu-item-162"><a
										href="${pageContext.request.contextPath }/dashboardSeller.html">Dashboard</a>
								</li>
							</c:if>
						</ul>
					</div>
				</nav>

				<tiles:insertAttribute name="header_iner"></tiles:insertAttribute>

			</div>
		</header>


		<tiles:insertAttribute name="content"></tiles:insertAttribute> 


		<footer id="footer" class="wrapper">
			<div class="container clearfix">

				<div id="footer_widgets" class="footer_widget_count4 clearfix">
					<div class="footer_widget widget">
						<div class="box_title">
							<h4>Latest From The Blog</h4>
						</div>
						<ul>
							<li><a
								href="../../../sell-your-photos-create-a-marketplace/index.html">Sell
									Your Photos, Create A Marketplace</a></li>
							<li><a href="../../../you-can-write-things-here/index.html">You
									Can Write Things Here</a></li>
							<li><a
								href="../../../the-art-of-being-pulled-apart/index.html">The
									Art of Being Pulled Apart</a></li>
							<li><a href="../../../we-write-and-look-good/index.html">We
									Write and Look Good</a></li>
						</ul>
					</div>
					<div class="footer_widget widget">
						<div class="box_title">
							<h4>This Is Stocky</h4>
						</div>
						<div class="textwidget">
							<p>You're viewing the demo for Stocky by Design Crumbs.
								Stocky is a theme designed to be a digital marketplace for any
								type of digital goods, but especially photos. Powered by
								WordPress and Easy Digital Downloads, Stocky helps get your
								products to the masses.</p>
							<p>
								<a href="http://themes.designcrumbs.com/" class="button"
									style="display: inline-block;">Buy Stocky Now</a>
							</p>
						</div>
					</div>
					<div class="footer_widget widget">
						<div class='featured_user'>
							<div class="box_title">
								<h4>Behind The Lens</h4>
							</div>
							<!--Now we print out speciifc user informations to screen!-->
							<div class='specific_user clearfix'>
								<img alt=''
									src='http://0.gravatar.com/avatar/02cdeec360274d7d9f1aa85761f95dc8?s=200&amp;d=mm&amp;r=g'
									srcset='http://0.gravatar.com/avatar/02cdeec360274d7d9f1aa85761f95dc8?s=400&#038;d=mm&#038;r=g 2x'
									class='avatar avatar-200 photo' height='200' width='200' />
								<h4 class='featured_user_name'>
									<a href='../../../vendor/jake/index.html' title='Jake Caputo'>
										Jake Caputo </a>
								</h4>
								I&#039;m a web designer and developer currently living just
								outside of Chicago, IL. I like coffee, comic books, and cats.
								I&#039;m also a big fan of The Beach Boys and the Chicago Bears.
							</div>
							<!--end-->

						</div>
					</div>
					<div class="footer_widget widget">
						<div class="box_title">
							<h4>Recent Posts</h4>
						</div>
						<ul>
							<li><a
								href="../../../sell-your-photos-create-a-marketplace/index.html">Sell
									Your Photos, Create A Marketplace</a></li>
							<li><a href="../../../you-can-write-things-here/index.html">You
									Can Write Things Here</a></li>
							<li><a
								href="../../../the-art-of-being-pulled-apart/index.html">The
									Art of Being Pulled Apart</a></li>
							<li><a href="../../../we-write-and-look-good/index.html">We
									Write and Look Good</a></li>
						</ul>
					</div>
				</div>

				<div id="post_footer">

					<div id="socnets_wrap">
						<div id="socnets">
							<a href="http://twitter.com/jakecaputo" title="Twitter"><i
								class="fa fa-twitter"></i></a> <a href="#" title="Facebook"><i
								class="fa fa-facebook"></i></a> <a href="#" title="Google+"><i
								class="fa fa-google"></i></a> <a href="#" title="Flickr"><i
								class="fa fa-flickr"></i></a> <a href="#" title="Tumblr"><i
								class="fa fa-tumblr"></i></a> <a href="#" title="Vimeo"><i
								class="fa fa-vimeo-square"></i></a> <a href="#" title="YouTube"><i
								class="fa fa-youtube"></i></a> <a href="#" title="Pinterest"><i
								class="fa fa-pinterest"></i></a>
						</div>
						<div class="clear"></div>
					</div>

					<div id="footer_copy">
						&copy; 2018 Stocky <span id="credit_space">&mdash;</span> Built
						with <a href="http://themes.designcrumbs.com/">Stocky</a> and <a
							href="http://easydigitaldownloads.com/">Easy Digital
							Downloads</a>
					</div>

				</div>

			</div>
		</footer>


	</section>
	<script type="text/javascript">
  (function() {
    window._pa = window._pa || {};
    _pa.productId = "dcs_stocky";
    var pa = document.createElement('script'); pa.type = 'text/javascript'; pa.async = true;
    pa.src = ('https:' == document.location.protocol ? 'https:' : 'http:') + "//tag.perfectaudience.com/serve/53ef64f22e4ef322e0000047.js";
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(pa, s);
  })();
</script>
	<div id="fb-root"></div>
	<script>
    jQuery(document).ready(function () {
		jQuery.post('http://themes.designcrumbs.com/stocky?ga_action=googleanalytics_get_script', {action: 'googleanalytics_get_script'}, function(response) {
			var F = new Function ( response );
			return( F() );
		});
    });
</script>
	<script type='text/javascript'>
/* <![CDATA[ */
var edd_scripts = {"ajaxurl":"http:\/\/themes.designcrumbs.com\/stocky\/wp-admin\/admin-ajax.php","position_in_cart":"","has_purchase_links":"","already_in_cart_message":"You have already added this item to your cart","empty_cart_message":"Your cart is empty","loading":"Loading","select_option":"Please select an option","is_checkout":"0","default_gateway":"paypal","redirect_to_checkout":"0","checkout_page":"http:\/\/themes.designcrumbs.com\/stocky\/checkout\/","permalinks":"1","quantities_enabled":"","taxes_enabled":"0"};
/* ]]> */
</script>
	<script type='text/javascript'
		src="${pageContext.request.contextPath }/assets/user/js/edd-ajax.min9fe3.js?ver=2.8.17"></script>
	<script type='text/javascript'
		src="${pageContext.request.contextPath }/assets/user/js/imagesloaded.min55a0.js?ver=3.2.0"></script>
	<script type='text/javascript'
		src="${pageContext.request.contextPath }/assets/user/js/masonry.mind617.js?ver=3.3.2"></script>
	<script type='text/javascript'
		src="${pageContext.request.contextPath }/assets/user/js/jquery.masonry.minef70.js?ver=3.1.2b"></script>
	<script type='text/javascript'>
/* <![CDATA[ */
var edd_wl_scripts = {"ajaxurl":"http:\/\/themes.designcrumbs.com\/stocky\/wp-admin\/admin-ajax.php","wish_list_page":"http:\/\/themes.designcrumbs.com\/stocky\/wish-lists\/","wish_list_add":"http:\/\/themes.designcrumbs.com\/stocky\/wish-lists\/view\/95\/","ajax_nonce":"6600d7c323"};
/* ]]> */
</script>
	<script type='text/javascript'
		src="${pageContext.request.contextPath }/assets/user/js/edd-wl.min5a2c.js?ver=1.1.7"></script>
	<script type='text/javascript'
		src="${pageContext.request.contextPath }/assets/user/js/modal.min5a2c.js?ver=1.1.7"></script>
	<script type='text/javascript'
		src="${pageContext.request.contextPath }/assets/user/js/wp-embed.min20fd.js?ver=4.9.2"></script>
	<div class="modal fade" id="edd-wl-modal" tabindex="-1" role="dialog"
		aria-labelledby="edd-wl-modal-label" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content"></div>
		</div>
	</div>

</body>

<!-- Mirrored from themes.designcrumbs.com/stocky/downloads/category/abstract/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 23 Jan 2018 18:59:16 GMT -->
</html>