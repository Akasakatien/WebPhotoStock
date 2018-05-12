<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@page session="true"%>
<section class="wrapper" id="content">
	<div class="container clearfix">
		<div id="single_product_page">
			<span itemscope="" itemtype="http://schema.org/Product">
				<div
					class="post-169 type-download status-publish format-standard has-post-thumbnail hentry download_category-around-the-house download_category-business download_category-electronics download_tag-coffee download_tag-laptop download_tag-work edd-download edd-download-cat-around-the-house edd-download-cat-business edd-download-cat-electronics edd-download-tag-coffee edd-download-tag-laptop edd-download-tag-work">

					<div id="single_item_wrap" class="clearfix">

						<div class="posts-wrap">

							<div id="product_images">


								<a id="main_product_image"
									href="${pageContext.request.contextPath }/assets/user/images/${item.itemName}"
									class="lightbox" rel="gallery"> <span class="preview"></span>
									<img width="797" height="797"
									src="${pageContext.request.contextPath }/assets/user/images/items/${item.itemCode}"
									class="attachment-product_page_image size-product_page_image wp-post-image"
									alt="" sizes="(max-width: 797px) 100vw, 797px">
								</a>



							</div>
							<!-- end #product_images -->
						</div>

						<div id="sidebar" class="clearfix">

							<div id="product_info" class="clearfix">
								<div class="clearfix">
									<img alt=""
										src="${pageContext.request.contextPath }/assets/user/images/akasaka.png?s=100&amp;d=mm&amp;r=g"
										srcset="http://1.gravatar.com/avatar/a8a9894ffd8c2fba693dad564bcac6d9?s=200&amp;d=mm&amp;r=g 2x"
										class="avatar avatar-100 photo" height="100" width="100">
									<div id="post_user">
										<div>
											<em>by</em> <a href="#">${item.seller.firstName }
												${item.seller.lastName }</a>
										</div>
									</div>
								</div>

							</div>

							<div id="product_pricing">

								<form id="edd_purchase_169"
									class="edd_download_purchase_form edd_purchase_169"
									method="post">

									<div class="edd_price_options edd_single_mode">
										<ul>
											<li>Name: <strong><span itemprop="name">${item.itemName }
												</span></strong></li>
											<li>Code: <strong><span itemprop="name">${item.itemCode }
												</span></strong></li>
											<li>Price: <strong><span itemprop="name">${item.itemPrice }
												</span></strong></li>

										</ul>
									</div>
									<!--end .edd_price_options-->

								</form>
								<c:if test="${buyer.username == null}">
									<a href="${pageContext.request.contextPath }/account/buyerLogin.html"
										title="Member Login" id="stocky_login">
											Login To Buy</a>
								</c:if>
						
								<%-- <c:if test="${buyer.username != null}">
									<a href="${pageContext.request.contextPath }/account.html"
										title="Member Login" id="stocky_login"> Member
											Login</a>
								</c:if> --%>
								<c:if test="${buyer.username != null}">
								<!--end #edd_purchase_169-->
								<form action="${initParam['posturl']}" method="post">	
								
									<!-- Saved buttons are identified by their button IDs -->
									<input type="hidden" name="upload" value="1">
									<input type="hidden" name="cmd" value="_cart"/>
									 <input type="hidden" name="business" value="${item.seller.paypalBusiness }"/> 
									<input type="hidden" name="item_name_1" value="hinh" />
									<input type="hidden" name="amount_1" value="3.00" />
									<input type="hidden" name="quantity_1" value="1">									
									
									<!-- Saved buttons display an appropriate button image. -->
									<input type="hidden" name="cancel_return"
										value="${initParam['cancelurl']}" />
										 <input type="hidden" name="return" value="${initParam['returnurl']}" />
														
										 <input	type="submit" name="submit" value="Buy Now" />
								</form>
								</c:if>
							</div>


							<div itemprop="reviewRating" class="reviewRating clearfix">
								<div class="edd_reviews_rating_box stars4 clearfix">
									<div>Average Rating</div>
									<span class="icon-star icon-star-full"></span> <span
										class="icon-star icon-star-full"></span> <span
										class="icon-star icon-star-full"></span> <span
										class="icon-star icon-star-full"></span> <span
										class="icon-star icon-star-empty"></span>
								</div>
								<div style="display: none">
									<meta itemprop="worstRating" content="1">
									<span itemprop="ratingValue">4</span> <span
										itemprop="bestRating">5</span>
								</div>
							</div>


							<div id="product_exif" class="clearfix">

								<div class="single-product-meta clearfix">

									<span>#EXIF data</span>
									<div class="image-meta-aperture">
										<span class="label">Aperture</span> <span class="value">2</span>
									</div>
									<div class="image-meta-camera">
										<span class="label">Camera</span> <span class="value">FinePix
											X100</span>
									</div>
									<div class="image-meta-credit">
										<span class="label">Created</span> <span class="value">16-04-2012</span>
									</div>
									<div class="image-meta-focal_length">
										<span class="label">Focal length</span> <span class="value">23</span>
									</div>
									<div class="image-meta-iso">
										<span class="label">ISO</span> <span class="value">320</span>
									</div>
									<div class="image-meta-shutter-speed">
										<span class="label">Shutter speed</span> <span class="value">0.0167</span>
									</div>
									<div class="image-meta-orientation">
										<span class="label">Orientation</span> <span class="value">1</span>
									</div>
								</div>

							</div>
							<div id="product_meta_wrap">
								<div class="single-product-meta">
									<span>#Categories</span> <a
										href="../category/around-the-house/index.html" rel="tag">Around
										The House</a><a href="../category/business/index.html" rel="tag">Business</a><a
										href="../category/electronics/index.html" rel="tag">Electronics</a>
								</div>

								<div class="single-product-meta">
									<span>#Tags</span> <a href="../tag/coffee/index.html" rel="tag">coffee</a><a
										href="../tag/laptop/index.html" rel="tag">laptop</a><a
										href="../tag/work/index.html" rel="tag">work</a>
								</div>

							</div>




							<div id="stocky_portfolio_link_wrap">
								<a href="../../vendor/demo/index.html" id="portfolio_link"
									title="More From This User">More From This User</a>
							</div>


						</div>

					</div>

					<div id="product_content" class="entry-content clearfix">
						<div style="display: none" class="edd-review-microdata"
							itemprop="aggregateRating" itemscope=""
							itemtype="http://schema.org/AggregateRating">
							<span itemprop="ratingValue">4.90</span> <span
								itemprop="reviewCount">3</span>
						</div>
						<div itemprop="description">
							<p>This is a whole bunch of extra text that shows up in the
								body of this product. (Just to test product description field)</p>
						</div>
						<div id="edd-reviews" class="edd-reviews-area">
							<ul class="edd-reviews-list">
								<h2 class="edd-reviews-title" id="edd-reviews-title">Reviews</h2>

								<div class="edd-review-list">

									<li id="edd-review-20959"
										class="edd_review byuser comment-author-demo bypostauthor even thread-even depth-1 parent">
										<div id="div-edd-review-20959" class="edd-review-body">
											<div class="edd-review-meta">
												<div class="edd-review-author vcard">
													<img alt=""
														src="http://1.gravatar.com/avatar/a8a9894ffd8c2fba693dad564bcac6d9?s=48&amp;d=mm&amp;r=g"
														srcset="http://1.gravatar.com/avatar/a8a9894ffd8c2fba693dad564bcac6d9?s=96&amp;d=mm&amp;r=g 2x"
														class="avatar avatar-48 photo" height="48" width="48">
													<b>david</b> <span class="edd-review-meta-rating"><span
														class="dashicons dashicons-star-filled"></span><span
														class="dashicons dashicons-star-filled"></span><span
														class="dashicons dashicons-star-filled"></span><span
														class="dashicons dashicons-star-filled"></span><span
														class="dashicons dashicons-star-filled"></span></span>
												</div>
												<!-- .comment-author -->

												<div class="edd-review-metadata">
													<p>
														<span class="author">By Demo User</span> on <a
															href="index.html#edd-review-20959"> <time
																datetime="2016-08-14T19:36:36+00:00"> August 14,
																2016 at 7:36 pm </time>
														</a>
													</p>
												</div>
												<!-- .comment-metadata -->


											</div>
											<!-- .comment-meta -->

											<div class="edd-review-content">
												<p>123213213123</p>
											</div>
											<!-- .comment-content -->


											<div class="edd-review-review-helpful">
												<div class="edd-review-vote" style="display: block;">
													<p class="edd-review-voting-feedback">4566 of 9150
														people found this review helpful.</p>
													<p>Help other customers find the most helpful reviews</p>
													<p>
														Did you find this review helpful? <span
															class="edd-reviews-voting-buttons"> <a
															class="vote-yes" data-edd-reviews-comment-id="20959"
															data-edd-reviews-vote="yes" rel="nofollow"
															href="indexaf9e.html?edd_review_vote=yes&amp;edd_c=20959">Yes</a>&nbsp;<a
															class="vote-no" data-edd-reviews-comment-id="20959"
															data-edd-reviews-vote="no" rel="nofollow"
															href="indexc415.html?edd_review_vote=no&amp;edd_c=20959">No</a>
														</span>
													</p>
												</div>
											</div>


											<div class="reply"></div>
										</div> <!-- .comment-body -->
										<ul class="children">

											<li id="edd-review-20964"
												class="edd_review byuser comment-author-demo bypostauthor odd alt depth-2">
												<div id="div-edd-review-20964" class="edd-review-body">
													<div class="edd-review-meta">
														<div class="edd-review-author vcard">
															<img alt=""
																src="http://1.gravatar.com/avatar/a8a9894ffd8c2fba693dad564bcac6d9?s=48&amp;d=mm&amp;r=g"
																srcset="http://1.gravatar.com/avatar/a8a9894ffd8c2fba693dad564bcac6d9?s=96&amp;d=mm&amp;r=g 2x"
																class="avatar avatar-48 photo" height="48" width="48">
														</div>
														<!-- .comment-author -->

														<div class="edd-review-metadata">
															<p>
																<span class="author">By demo</span> on <a
																	href="index.html#edd-review-20964"> <time
																		datetime="2016-08-18T11:07:43+00:00"> August
																		18, 2016 at 11:07 am </time>
																</a>
															</p>
														</div>
														<!-- .comment-metadata -->


													</div>
													<!-- .comment-meta -->

													<div class="edd-review-content">
														<p>fdhgfjf dfgdsfasdfgdfgdsg</p>
													</div>
													<!-- .comment-content -->


													<div class="edd-review-review-helpful">
														<div class="edd-review-vote" style="display: block;">
															<p class="edd-review-voting-feedback">4588 of 9163
																people found this review helpful.</p>
															<p>Help other customers find the most helpful reviews</p>
															<p>
																Did you find this review helpful? <span
																	class="edd-reviews-voting-buttons"> <a
																	class="vote-yes" data-edd-reviews-comment-id="20964"
																	data-edd-reviews-vote="yes" rel="nofollow"
																	href="index98dc.html?edd_review_vote=yes&amp;edd_c=20964">Yes</a>&nbsp;<a
																	class="vote-no" data-edd-reviews-comment-id="20964"
																	data-edd-reviews-vote="no" rel="nofollow"
																	href="indexcc22.html?edd_review_vote=no&amp;edd_c=20964">No</a>
																</span>
															</p>
														</div>
													</div>


													<div class="reply"></div>
												</div> <!-- .comment-body -->
											</li>
											<!-- #comment-## -->
										</ul> <!-- .children -->
									</li>
									<!-- #comment-## -->

									<li id="edd-review-11213"
										class="edd_review byuser comment-author-demo bypostauthor even thread-odd thread-alt depth-1">
										<div id="div-edd-review-11213" class="edd-review-body">
											<div class="edd-review-meta">
												<div class="edd-review-author vcard">
													<img alt=""
														src="http://2.gravatar.com/avatar/e128316bf106ddc2fabc022baf973e9e?s=48&amp;d=mm&amp;r=g"
														srcset="http://2.gravatar.com/avatar/e128316bf106ddc2fabc022baf973e9e?s=96&amp;d=mm&amp;r=g 2x"
														class="avatar avatar-48 photo" height="48" width="48">
													<b>Five Stars!</b> <span class="edd-review-meta-rating"><span
														class="dashicons dashicons-star-filled"></span><span
														class="dashicons dashicons-star-filled"></span><span
														class="dashicons dashicons-star-filled"></span><span
														class="dashicons dashicons-star-filled"></span><span
														class="dashicons dashicons-star-filled"></span></span>
												</div>
												<!-- .comment-author -->

												<div class="edd-review-metadata">
													<p>
														<span class="author">By Demo User</span> on <a
															href="index.html#edd-review-11213"> <time
																datetime="2015-02-12T12:06:14+00:00"> February
																12, 2015 at 12:06 pm </time>
														</a>
													</p>
												</div>
												<!-- .comment-metadata -->


											</div>
											<!-- .comment-meta -->

											<div class="edd-review-content">
												<p>This is a five star review. I gave this item five
													stars.</p>
											</div>
											<!-- .comment-content -->


											<div class="edd-review-review-helpful">
												<div class="edd-review-vote" style="display: block;">
													<p class="edd-review-voting-feedback">31731 of 63427
														people found this review helpful.</p>
													<p>Help other customers find the most helpful reviews</p>
													<p>
														Did you find this review helpful? <span
															class="edd-reviews-voting-buttons"> <a
															class="vote-yes" data-edd-reviews-comment-id="11213"
															data-edd-reviews-vote="yes" rel="nofollow"
															href="indexc472.html?edd_review_vote=yes&amp;edd_c=11213">Yes</a>&nbsp;<a
															class="vote-no" data-edd-reviews-comment-id="11213"
															data-edd-reviews-vote="no" rel="nofollow"
															href="index0c67.html?edd_review_vote=no&amp;edd_c=11213">No</a>
														</span>
													</p>
												</div>
											</div>


											<div class="reply"></div>
										</div> <!-- .comment-body -->
									</li>
									<!-- #comment-## -->

									<li id="edd-review-10424"
										class="edd_review byuser comment-author-demo bypostauthor odd alt thread-even depth-1 parent">
										<div id="div-edd-review-10424" class="edd-review-body">
											<div class="edd-review-meta">
												<div class="edd-review-author vcard">
													<img alt=""
														src="http://2.gravatar.com/avatar/e128316bf106ddc2fabc022baf973e9e?s=48&amp;d=mm&amp;r=g"
														srcset="http://2.gravatar.com/avatar/e128316bf106ddc2fabc022baf973e9e?s=96&amp;d=mm&amp;r=g 2x"
														class="avatar avatar-48 photo" height="48" width="48">
													<b>This is an awesome coffee</b> <span
														class="edd-review-meta-rating"><span
														class="dashicons dashicons-star-filled"></span><span
														class="dashicons dashicons-star-filled"></span><span
														class="dashicons dashicons-star-filled"></span><span
														class="dashicons dashicons-star-filled"></span><span
														class="dashicons dashicons-star-empty"></span></span>
												</div>
												<!-- .comment-author -->

												<div class="edd-review-metadata">
													<p>
														<span class="author">By Demo User</span> on <a
															href="index.html#edd-review-10424"> <time
																datetime="2015-01-20T02:12:48+00:00"> January 20,
																2015 at 2:12 am </time>
														</a>
													</p>
												</div>
												<!-- .comment-metadata -->


											</div>
											<!-- .comment-meta -->

											<div class="edd-review-content">
												<p>Coffee is pretty</p>
											</div>
											<!-- .comment-content -->


											<div class="edd-review-review-helpful">
												<div class="edd-review-vote" style="display: block;">
													<p class="edd-review-voting-feedback">31701 of 63416
														people found this review helpful.</p>
													<p>Help other customers find the most helpful reviews</p>
													<p>
														Did you find this review helpful? <span
															class="edd-reviews-voting-buttons"> <a
															class="vote-yes" data-edd-reviews-comment-id="10424"
															data-edd-reviews-vote="yes" rel="nofollow"
															href="indexe6ce.html?edd_review_vote=yes&amp;edd_c=10424">Yes</a>&nbsp;<a
															class="vote-no" data-edd-reviews-comment-id="10424"
															data-edd-reviews-vote="no" rel="nofollow"
															href="indexdab3.html?edd_review_vote=no&amp;edd_c=10424">No</a>
														</span>
													</p>
												</div>
											</div>


											<div class="reply"></div>
										</div> <!-- .comment-body -->
										<ul class="children">

											<li id="edd-review-10425"
												class="edd_review byuser comment-author-demo bypostauthor even depth-2">
												<div id="div-edd-review-10425" class="edd-review-body">
													<div class="edd-review-meta">
														<div class="edd-review-author vcard">
															<img alt=""
																src="http://2.gravatar.com/avatar/e128316bf106ddc2fabc022baf973e9e?s=48&amp;d=mm&amp;r=g"
																srcset="http://2.gravatar.com/avatar/e128316bf106ddc2fabc022baf973e9e?s=96&amp;d=mm&amp;r=g 2x"
																class="avatar avatar-48 photo" height="48" width="48">
														</div>
														<!-- .comment-author -->

														<div class="edd-review-metadata">
															<p>
																<span class="author">By demo</span> on <a
																	href="index.html#edd-review-10425"> <time
																		datetime="2015-01-20T02:13:42+00:00"> January
																		20, 2015 at 2:13 am </time>
																</a>
															</p>
														</div>
														<!-- .comment-metadata -->


													</div>
													<!-- .comment-meta -->

													<div class="edd-review-content">
														<p>Response</p>
													</div>
													<!-- .comment-content -->


													<div class="edd-review-review-helpful">
														<div class="edd-review-vote" style="display: block;">
															<p class="edd-review-voting-feedback">31711 of 63393
																people found this review helpful.</p>
															<p>Help other customers find the most helpful reviews</p>
															<p>
																Did you find this review helpful? <span
																	class="edd-reviews-voting-buttons"> <a
																	class="vote-yes" data-edd-reviews-comment-id="10425"
																	data-edd-reviews-vote="yes" rel="nofollow"
																	href="indexc3d9.html?edd_review_vote=yes&amp;edd_c=10425">Yes</a>&nbsp;<a
																	class="vote-no" data-edd-reviews-comment-id="10425"
																	data-edd-reviews-vote="no" rel="nofollow"
																	href="index7b13.html?edd_review_vote=no&amp;edd_c=10425">No</a>
																</span>
															</p>
														</div>
													</div>


													<div class="reply"></div>
												</div> <!-- .comment-body -->
											</li>
											<!-- #comment-## -->
										</ul> <!-- .children -->
									</li>
									<!-- #comment-## -->
								</div>
							</ul>

							<div class="edd-reviews-form" id="edd-reviews-respond">

								<p class="edd-reviews-not-allowed">You must log in to submit
									a review.</p>

								<form name="loginform" id="loginform"
									action="http://themes.designcrumbs.com/stocky/wp-login.php"
									method="post">

									<p class="login-username">
										<label for="user_login">Username or Email Address</label> <input
											type="text" name="log" id="user_login" class="input" value=""
											size="20">
									</p>
									<p class="login-password">
										<label for="user_pass">Password</label> <input type="password"
											name="pwd" id="user_pass" class="input" value="" size="20">
									</p>

									<p class="login-remember">
										<label><input name="rememberme" type="checkbox"
											id="rememberme" value="forever"> Remember Me</label>
									</p>
									<p class="login-submit">
										<input type="submit" name="wp-submit" id="wp-submit"
											class="button button-primary" value="Log In"> <input
											type="hidden" name="redirect_to" value="index.html">
									</p>

								</form>

							</div>
							<!-- /.edd-reviews-form -->
						</div>
						<!-- /#edd-reviews -->
						<div id="edd-reviews-reply" style="display: none">
							<div class="edd-reviews-form" id="edd-reviews-reply-form">
								<h3 id="edd-reviews-reply-heading" class="edd-reviews-heading">
									Leave a reply <small><a rel="nofollow"
										id="cancel-comment-reply-link" href="#">Cancel reply</a></small>
								</h3>


								<form
									action="http://themes.designcrumbs.com/stocky/downloads/coffee-code/?review_submitted=1"
									method="post" name="edd-reviews-form" id="edd-reviews-form"
									class="">
									<fieldset>
										<p class="edd-reviews-review-form-review">
											<label for="edd-reviews-review">Comment <span
												class="required">*</span></label>
											<textarea id="edd-reviews-reply" name="edd-reviews-reply"
												cols="45" rows="8" aria-required="true" required="required"></textarea>
										</p>
										<!-- /.edd-reviews-review-form-review -->

										<p class="edd-reviews-review-form-submit">
											<input type="submit" class="edd-reviews-review-form-submit"
												id="edd-reviews-reply-form-submit"
												name="edd-reviews-reply-form-submit" value="Post Reply">
										</p>
										<!-- /.edd-reviews-review-form-submit -->

										<input type="hidden" name="edd-reviews-review-post-ID"
											value="169"> <input type="hidden" name="edd_action"
											value="reviews_process_reply"> <input type="hidden"
											name="comment_post_ID" value="169" id="comment_post_ID">
										<input type="hidden" name="comment_parent" id="comment_parent"
											value="0"> <input type="hidden"
											name="edd_reviews_reply_nonce" value="1627da4b84">
									</fieldset>
								</form>
								<!-- /#edd-reviews-reply-form -->
							</div>
							<!-- /.edd-reviews-form -->
						</div>
						<!-- /#edd-reviews-reply -->
					</div>
					<!-- end #product_info -->




					<div id="stocky_reviews">
						<div class="box_title comments_title">
							<h3 id="comments">1,291 Comments</h3>
						</div>
						<div id="comments_wrap">
							<ul class="commentlist">
								<!-- display omments -->
								<li
									class="comment byuser comment-author-demo bypostauthor even thread-even depth-1"
									id="comment-14001">
									<div class="the_comment clearfix">
										<img alt=""
											src="http://1.gravatar.com/avatar/a8a9894ffd8c2fba693dad564bcac6d9?s=120&amp;d=mm&amp;r=g"
											srcset="http://1.gravatar.com/avatar/a8a9894ffd8c2fba693dad564bcac6d9?s=240&amp;d=mm&amp;r=g 2x"
											class="avatar avatar-120 photo" height="120" width="120">
										<div class="the_comment_author">
											<span>newvendor1</span> says
										</div>
										<div class="the_comment_text">
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
												elit. Morbi commodo, ipsum sed pharetra gravida, orci magna
												rhoncus neque, id pulvinar odio lorem non turpis. Nullam sit
												amet enim. Suspendisse id velit vitae ligula volutpat
												condimentum. Aliquam erat volutpat. Sed quis velit. Nulla
												facilisi. Nulla libero. Vivamus pharetra posuere sapien.</p>
										</div>
										<small class="commentmetadata"> <a
											href="index.html#comment-14001" class="comment_permalink"><i
												class="fa fa-clock-o"></i>April 25, 2015 - 5:30 pm</a>
										</small>
										<div class="reply"></div>
									</div>
								</li>
								<!-- #comment-## -->
								<li
									class="comment byuser comment-author-demo bypostauthor odd alt thread-odd thread-alt depth-1"
									id="comment-14887">
									<div class="the_comment clearfix">
										<img alt=""
											src="http://1.gravatar.com/avatar/a8a9894ffd8c2fba693dad564bcac6d9?s=120&amp;d=mm&amp;r=g"
											srcset="http://1.gravatar.com/avatar/a8a9894ffd8c2fba693dad564bcac6d9?s=240&amp;d=mm&amp;r=g 2x"
											class="avatar avatar-120 photo" height="120" width="120">
										<div class="the_comment_author">
											<span>Demo Vendor</span> says
										</div>
										<div class="the_comment_text">
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
												elit. Morbi commodo, ipsum sed pharetra gravida, orci magna
												rhoncus neque, id pulvinar odio lorem non turpis. Nullam sit
												amet enim. Suspendisse id velit vitae ligula volutpat
												condimentum. Aliquam erat volutpat. Sed quis velit. Nulla
												facilisi. Nulla libero. Vivamus pharetra posuere sapien.</p>
										</div>
										<small class="commentmetadata"> <a
											href="index.html#comment-14887" class="comment_permalink"><i
												class="fa fa-clock-o"></i>May 30, 2015 - 8:47 am</a>
										</small>
										<div class="reply"></div>
									</div>
									<ul class="children">
										<li
											class="comment byuser comment-author-demo bypostauthor even depth-2"
											id="comment-14939">
											<div class="the_comment clearfix">
												<img alt=""
													src="http://1.gravatar.com/avatar/a8a9894ffd8c2fba693dad564bcac6d9?s=120&amp;d=mm&amp;r=g"
													srcset="http://1.gravatar.com/avatar/a8a9894ffd8c2fba693dad564bcac6d9?s=240&amp;d=mm&amp;r=g 2x"
													class="avatar avatar-120 photo" height="120" width="120">
												<div class="the_comment_author">
													<span>demo</span> says
												</div>
												<div class="the_comment_text">
													<p>This is a comment.</p>
												</div>
												<small class="commentmetadata"> <a
													href="index.html#comment-14939" class="comment_permalink"><i
														class="fa fa-clock-o"></i>June 1, 2015 - 11:13 am</a>
												</small>
												<div class="reply"></div>
											</div>
											<ul class="children">
												<li
													class="comment byuser comment-author-demo bypostauthor odd alt depth-3"
													id="comment-21042">
													<div class="the_comment clearfix">
														<img alt=""
															src="http://1.gravatar.com/avatar/a8a9894ffd8c2fba693dad564bcac6d9?s=120&amp;d=mm&amp;r=g"
															srcset="http://1.gravatar.com/avatar/a8a9894ffd8c2fba693dad564bcac6d9?s=240&amp;d=mm&amp;r=g 2x"
															class="avatar avatar-120 photo" height="120" width="120">
														<div class="the_comment_author">
															<span>Demo User</span> says
														</div>
														<div class="the_comment_text">
															<p>did not understand what we are giving stars to?</p>
														</div>
														<small class="commentmetadata"> <a
															href="index.html#comment-21042" class="comment_permalink"><i
																class="fa fa-clock-o"></i>September 2, 2016 - 10:14 am</a>
														</small>
														<div class="reply"></div>
													</div>
												</li>
												<!-- #comment-## -->
											</ul> <!-- .children -->
										</li>
										<!-- #comment-## -->
									</ul> <!-- .children -->
								</li>
								<!-- #comment-## -->
								<li
									class="comment byuser comment-author-demo bypostauthor even thread-even depth-1"
									id="comment-18124">
									<div class="the_comment clearfix">
										<img alt=""
											src="http://1.gravatar.com/avatar/a8a9894ffd8c2fba693dad564bcac6d9?s=120&amp;d=mm&amp;r=g"
											srcset="http://1.gravatar.com/avatar/a8a9894ffd8c2fba693dad564bcac6d9?s=240&amp;d=mm&amp;r=g 2x"
											class="avatar avatar-120 photo" height="120" width="120">
										<div class="the_comment_author">
											<span>Demo User</span> says
										</div>
										<div class="the_comment_text">
											<p>Testsetsets</p>
										</div>
										<small class="commentmetadata"> <a
											href="index.html#comment-18124" class="comment_permalink"><i
												class="fa fa-clock-o"></i>October 5, 2015 - 11:20 am</a>
										</small>
										<div class="reply"></div>
									</div>
								</li>
								<!-- #comment-## -->
								<li
									class="comment byuser comment-author-demo bypostauthor odd alt thread-odd thread-alt depth-1"
									id="comment-19202">
									<div class="the_comment clearfix">
										<img alt=""
											src="http://1.gravatar.com/avatar/a8a9894ffd8c2fba693dad564bcac6d9?s=120&amp;d=mm&amp;r=g"
											srcset="http://1.gravatar.com/avatar/a8a9894ffd8c2fba693dad564bcac6d9?s=240&amp;d=mm&amp;r=g 2x"
											class="avatar avatar-120 photo" height="120" width="120">
										<div class="the_comment_author">
											<span>Demo User</span> says
										</div>
										<div class="the_comment_text">
											<p>helllo1!!!!helllo1!!!!helllo1!!!!helllo1!!!!helllo1!!!!</p>
										</div>
										<small class="commentmetadata"> <a
											href="index.html#comment-19202" class="comment_permalink"><i
												class="fa fa-clock-o"></i>February 13, 2016 - 2:22 pm</a>
										</small>
										<div class="reply"></div>
									</div>
									<ul class="children">
										<li
											class="comment byuser comment-author-demo bypostauthor even depth-2"
											id="comment-19203">
											<div class="the_comment clearfix">
												<img alt=""
													src="http://1.gravatar.com/avatar/a8a9894ffd8c2fba693dad564bcac6d9?s=120&amp;d=mm&amp;r=g"
													srcset="http://1.gravatar.com/avatar/a8a9894ffd8c2fba693dad564bcac6d9?s=240&amp;d=mm&amp;r=g 2x"
													class="avatar avatar-120 photo" height="120" width="120">
												<div class="the_comment_author">
													<span>Demo User</span> says
												</div>
												<div class="the_comment_text">
													<p>hello2222</p>
												</div>
												<small class="commentmetadata"> <a
													href="index.html#comment-19203" class="comment_permalink"><i
														class="fa fa-clock-o"></i>February 13, 2016 - 2:22 pm</a>
												</small>
												<div class="reply"></div>
											</div>
											<ul class="children">
												<li
													class="comment byuser comment-author-demo bypostauthor odd alt depth-3"
													id="comment-19242">
													<div class="the_comment clearfix">
														<img alt=""
															src="http://1.gravatar.com/avatar/a8a9894ffd8c2fba693dad564bcac6d9?s=120&amp;d=mm&amp;r=g"
															srcset="http://1.gravatar.com/avatar/a8a9894ffd8c2fba693dad564bcac6d9?s=240&amp;d=mm&amp;r=g 2x"
															class="avatar avatar-120 photo" height="120" width="120">
														<div class="the_comment_author">
															<span>demo</span> says
														</div>
														<div class="the_comment_text">
															<p>ok</p>
														</div>
														<small class="commentmetadata"> <a
															href="index.html#comment-19242" class="comment_permalink"><i
																class="fa fa-clock-o"></i>February 21, 2016 - 8:52 am</a>
														</small>
														<div class="reply"></div>
													</div>
												</li>
												<!-- #comment-## -->
											</ul> <!-- .children -->
										</li>
										<!-- #comment-## -->
										<li
											class="comment byuser comment-author-demo bypostauthor even depth-2"
											id="comment-19243">
											<div class="the_comment clearfix">
												<img alt=""
													src="http://1.gravatar.com/avatar/a8a9894ffd8c2fba693dad564bcac6d9?s=120&amp;d=mm&amp;r=g"
													srcset="http://1.gravatar.com/avatar/a8a9894ffd8c2fba693dad564bcac6d9?s=240&amp;d=mm&amp;r=g 2x"
													class="avatar avatar-120 photo" height="120" width="120">
												<div class="the_comment_author">
													<span>demo</span> says
												</div>
												<div class="the_comment_text">
													<p>ok</p>
												</div>
												<small class="commentmetadata"> <a
													href="index.html#comment-19243" class="comment_permalink"><i
														class="fa fa-clock-o"></i>February 21, 2016 - 8:52 am</a>
												</small>
												<div class="reply"></div>
											</div>
										</li>
										<!-- #comment-## -->
									</ul> <!-- .children -->
								</li>
								<!-- #comment-## -->
								<li
									class="comment byuser comment-author-demo bypostauthor odd alt thread-even depth-1"
									id="comment-21149">
									<div class="the_comment clearfix">
										<img alt=""
											src="http://1.gravatar.com/avatar/a8a9894ffd8c2fba693dad564bcac6d9?s=120&amp;d=mm&amp;r=g"
											srcset="http://1.gravatar.com/avatar/a8a9894ffd8c2fba693dad564bcac6d9?s=240&amp;d=mm&amp;r=g 2x"
											class="avatar avatar-120 photo" height="120" width="120">
										<div class="the_comment_author">
											<span>Demo User</span> says
										</div>
										<div class="the_comment_text">
											<p>sadsa</p>
										</div>
										<small class="commentmetadata"> <a
											href="index.html#comment-21149" class="comment_permalink"><i
												class="fa fa-clock-o"></i>September 22, 2016 - 6:24 am</a>
										</small>
										<div class="reply"></div>
									</div>
								</li>
								<!-- #comment-## -->
							</ul>
						</div>
					</div>

					<div class="navigation comment-nav">
						<div class="nav-prev"></div>
						<div class="nav-next"></div>
						<div class="clear"></div>
					</div>





					<div class="related_products_wrap">
						<div class="box_title">
							<h3>Related Products</h3>
						</div>
						<div class="related_products clearfix">
							<div class="single_related">
								<a href="../co-work/index.html" title="Co-Work"> <img
									width="150" height="150"
									src="../../files/edd/2014/06/1cHlp7N-150x150.jpg"
									class="attachment-thumbnail size-thumbnail wp-post-image"
									alt=""
									srcset="http://themes.designcrumbs.com/stocky/files/edd/2014/06/1cHlp7N-150x150.jpg 150w, http://themes.designcrumbs.com/stocky/files/edd/2014/06/1cHlp7N-300x300.jpg 300w, http://themes.designcrumbs.com/stocky/files/edd/2014/06/1cHlp7N-1024x1024.jpg 1024w, http://themes.designcrumbs.com/stocky/files/edd/2014/06/1cHlp7N-200x200.jpg 200w, http://themes.designcrumbs.com/stocky/files/edd/2014/06/1cHlp7N-280x280.jpg 280w, http://themes.designcrumbs.com/stocky/files/edd/2014/06/1cHlp7N-1560x1560.jpg 1560w"
									sizes="(max-width: 150px) 100vw, 150px">
								</a>
							</div>

							<div class="single_related">
								<a href="../make-your-mark/index.html" title="Make Your Mark">
									<img width="150" height="150"
									src="../../files/edd/2014/06/DSCF0492-150x150.jpg"
									class="attachment-thumbnail size-thumbnail wp-post-image"
									alt=""
									srcset="http://themes.designcrumbs.com/stocky/files/edd/2014/06/DSCF0492-150x150.jpg 150w, http://themes.designcrumbs.com/stocky/files/edd/2014/06/DSCF0492-280x280.jpg 280w"
									sizes="(max-width: 150px) 100vw, 150px">
								</a>
							</div>

							<div class="single_related">
								<a href="../electronic-grid/index.html" title="Electronic Grid">
									<img width="150" height="150"
									src="../../files/edd/2014/06/13UUIs4-150x150.jpg"
									class="attachment-thumbnail size-thumbnail wp-post-image"
									alt=""
									srcset="http://themes.designcrumbs.com/stocky/files/edd/2014/06/13UUIs4-150x150.jpg 150w, http://themes.designcrumbs.com/stocky/files/edd/2014/06/13UUIs4-200x200.jpg 200w"
									sizes="(max-width: 150px) 100vw, 150px">
								</a>
							</div>

							<div class="single_related">
								<a href="../time-to-work/index.html" title="Time To Work"> <img
									width="150" height="150"
									src="../../files/edd/2014/06/1j5JfNg-150x150.jpg"
									class="attachment-thumbnail size-thumbnail wp-post-image"
									alt=""
									srcset="http://themes.designcrumbs.com/stocky/files/edd/2014/06/1j5JfNg-150x150.jpg 150w, http://themes.designcrumbs.com/stocky/files/edd/2014/06/1j5JfNg-200x200.jpg 200w"
									sizes="(max-width: 150px) 100vw, 150px">
								</a>
							</div>
						</div>
					</div>
				</div> <!-- end .post_class -->

				<div class="clear"></div>
			</span>
		</div>
		<!-- end #single_product_page -->

	</div>
</section>