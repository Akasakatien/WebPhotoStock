<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@page session="true"%>
<section class="wrapper" id="content">
	<div class="container clearfix">
		


		<section id="image_grid" class="image_grid_full clearfix">

			<div id="stocky_downloads_list"
				class="edd_downloads_list edd_download_columns_0 masonry"
				style="position: relative; height: 1192.61px;">

				<c:forEach items="${items }" var="item">
					<div itemscope itemtype="http://schema.org/Product"
						class="edd_download masonry-brick" id="edd_download_169"
						style="position: absolute; left: 0px; top: 0px;">

						<div class="edd_download_inner">

							<div class="edd_download_image">
								<%-- <c:forEach items="${items }" var="item">
									<img alt="" src="${pageContext.request.contextPath }/assets/user/images/items/${item.itemCode }" width="200px" height="200px">
								</c:forEach> --%>
								<a href="${pageContext.request.contextPath }/product.html"
									title="Coffee &amp; Code"> <img width="548" height="548"
									src="${pageContext.request.contextPath }/assets/user/images/items/${item.itemCode }"
									class="attachment-product_main size-product_main wp-post-image"
									alt=""
									<%-- srcset="http://themes.designcrumbs.com/stocky/files/edd/2014/06/${item.itemCode } 548w, http://themes.designcrumbs.com/stocky/files/edd/2014/06/${item.itemCode } 150w, http://themes.designcrumbs.com/stocky/files/edd/2014/06/${item.itemCode } 300w, http://themes.designcrumbs.com/stocky/files/edd/2014/06/${item.itemCode } 280w, http://themes.designcrumbs.com/stocky/files/edd/2014/06/${item.itemCode } 245w, http://themes.designcrumbs.com/stocky/files/edd/2014/06/${item.itemCode } 797w"
									sizes="(max-width: 548px) 100vw, 548px" --%>>

								</a>
								<div class="stocky_hover_details stocky_wish_list_on">

									<div class="stocky_hover_lines">

										<a
											href="${pageContext.request.contextPath }/product.html?idItm=${item.id}"
											title="Coffee &amp; Code" class="dcs_view_details">Details</a>

										<a href="#"
											class="edd-wl-button  edd-wl-open-modal edd-wl-action before glyph-left "
											data-action="edd_wl_open_modal" data-download-id="169"
											data-price-option="0"><i
											class="glyphicon glyphicon-heart"></i><span class="label">Add
												to wish list</span><span class="edd-loading"><i
												class="edd-icon-spinner edd-icon-spin"></i></span></a>
									</div>

								</div>

							</div>

						</div>

					</div>
				</c:forEach>
			</div>
	</div>

</section>

</div>
</section>
<section id="home_cta" class="home_cta wrapper">
	<div class="container clearfix">
		<h1>
			<span style="color: #ffffff;">Create a Marketplace or Sell
				Your Own Photos</span>
		</h1>
		<p style="color: #ffffff;">Stocky makes it easy to create a site
			to sell your own photos using the Easy Digital Downloads plugin. Or
			you can create a marketplace and let anybody sell their photos with
			help from the Frontend Submissions extension for Easy Digital
			Downloads.</p>
		<p style="color: #ffffff;">Ready to see the rest of the theme?</p>
		<a class="button button_center" style="text-align: center;"
			href="downloads/index.html">Shop Now</a>
		<div
			style="position: absolute; bottom: 5px; right: 5px; font-size: .7em; color: #9f9f9f;">
			Photo Credit: lube / <a style="color: #9f9f9f;"
				href="http://www.photocase.com/photo/276763-stock-photo-human-being-youth-young-adults-adults-landscape-feminine-mountain">photocase.com</a>
		</div>
	</div>
</section>
<section id="home_latest_posts" class="wrapper">
	<div class="container clearfix">



		<article
			class="post-180 post type-post status-publish format-standard hentry category-edd tag-stocky-perks"
			id="post-180">

			<div class="latest_bg_img"
				style="background-image: url('${pageContext.request.contextPath }/assets/user/images/stockypromo.jpg');"></div>

			<div class="post_content">

				<div class="latest_content">

					<div class="latest_date">June 18, 2014</div>

					<h3 class="latest_post_title">
						<a href="sell-your-photos-create-a-marketplace/index.html"
							title="Sell Your Photos, Create A Marketplace">Sell Your
							Photos, Create A Marketplace</a>
					</h3>

					<p>Stocky and Easy Digital Downloads helps you sell your photos
						or create a full featured marketplace; Complete with vendors and
						commission payouts.</p>

				</div>

			</div>
		</article>


		<article
			class="post-176 post type-post status-publish format-standard has-post-thumbnail hentry category-thoughts"
			id="post-176">

			<div class="latest_bg_img"
				style="background-image: url('${pageContext.request.contextPath }/assets/user/images/DSCF0554.jpg');"></div>

			<div class="post_content">

				<div class="latest_content">

					<div class="latest_date">June 18, 2014</div>

					<h3 class="latest_post_title">
						<a href="you-can-write-things-here/index.html"
							title="You Can Write Things Here">You Can Write Things Here</a>
					</h3>

					<p>Don’t just sell things with Stocky, you can blog too. A lot
						of time and love went into the design and development of stocky to
						bring you a full featured theme.</p>

				</div>

			</div>
		</article>


		<article
			class="post-185 post type-post status-publish format-standard has-post-thumbnail hentry category-stories"
			id="post-185">

			<div class="latest_bg_img"
				style="background-image: url('${pageContext.request.contextPath }/assets/user/images/jellyfish.jpg');"></div>

			<div class="post_content">

				<div class="latest_content">

					<div class="latest_date">June 15, 2014</div>

					<h3 class="latest_post_title">
						<a href="the-art-of-being-pulled-apart/index.html"
							title="The Art of Being Pulled Apart">The Art of Being Pulled
							Apart</a>
					</h3>

					<p>The perfect soundtrack to a day of hiking and snapping
						nature photos, Jellyfish Brigade helps bring everything together
						and pulls it apart.</p>

				</div>

			</div>
		</article>

	</div>
</section>