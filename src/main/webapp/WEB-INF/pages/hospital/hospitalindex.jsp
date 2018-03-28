<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Animour</title>
<!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
<!-- Main Style -->
<link rel="stylesheet" type="text/css" href="/css/main.css">
<!-- Slicknav Css -->
<link rel="stylesheet" type="text/css" href="/css/slicknav.css">

<!-- Responsive Style -->
<link rel="stylesheet" type="text/css" href="/css/responsive.css">
<!--Fonts-->
<link rel="stylesheet" media="screen"
	href="/fonts/font-awesome/font-awesome.min.css">
<link rel="stylesheet" media="screen"
	href="/fonts/simple-line-icons.css">

<!-- Extras -->
<link rel="stylesheet" type="text/css"
	href="/extras/owl/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="/extras/owl/owl.theme.css">
<link rel="stylesheet" type="text/css" href="/extras/animate.css">
<link rel="stylesheet" type="text/css" href="/extras/normalize.css">
<!-- Color CSS Styles  -->
<link rel="stylesheet" type="text/css" href="/css/colors/green.css"
	media="screen" />
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js">
    </script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js">
    </script>
    <![endif]-->
    
<!-- style/css -->
<style>
.table {
	width: 100%;
	max-width: 100%;
	margin-bottom: 1rem;
	background-color: transparent
}

.table td, .table th {
	padding: .75rem;
	vertical-align: top;
	border-top: 1px solid #dee2e6
}

.table thead th {
	vertical-align: bottom;
	border-bottom: 2px solid #dee2e6
}

.table tbody+tbody {
	border-top: 2px solid #dee2e6
}

.table .table {
	background-color: #fff
}

.table-sm td, .table-sm th {
	padding: .3rem
}

.table-bordered {
	border: 1px solid #dee2e6
}

.table-bordered td, .table-bordered th {
	border: 1px solid #dee2e6
}

.table-bordered thead td, .table-bordered thead th {
	border-bottom-width: 2px
}

.table-striped tbody tr:nth-of-type(odd) {
	background-color: rgba(0, 0, 0, .05)
}

.table-hover tbody tr:hover {
	background-color: rgba(0, 0, 0, .075)
}

.table-primary, .table-primary>td, .table-primary>th {
	background-color: #b8daff
}

.table-hover .table-primary:hover {
	background-color: #9fcdff
}

.table-hover .table-primary:hover>td, .table-hover .table-primary:hover>th
	{
	background-color: #9fcdff
}

.table-secondary, .table-secondary>td, .table-secondary>th {
	background-color: #d6d8db
}

.table-hover .table-secondary:hover {
	background-color: #c8cbcf
}

.table-hover .table-secondary:hover>td, .table-hover .table-secondary:hover>th
	{
	background-color: #c8cbcf
}

.table-success, .table-success>td, .table-success>th {
	background-color: #c3e6cb
}

.table-hover .table-success:hover {
	background-color: #b1dfbb
}

.table-hover .table-success:hover>td, .table-hover .table-success:hover>th
	{
	background-color: #b1dfbb
}

.table-info, .table-info>td, .table-info>th {
	background-color: #bee5eb
}

.table-hover .table-info:hover {
	background-color: #abdde5
}

.table-hover .table-info:hover>td, .table-hover .table-info:hover>th {
	background-color: #abdde5
}

.table-warning, .table-warning>td, .table-warning>th {
	background-color: #ffeeba
}

.table-hover .table-warning:hover {
	background-color: #ffe8a1
}

.table-hover .table-warning:hover>td, .table-hover .table-warning:hover>th
	{
	background-color: #ffe8a1
}

.table-danger, .table-danger>td, .table-danger>th {
	background-color: #f5c6cb
}

.table-hover .table-danger:hover {
	background-color: #f1b0b7
}

.table-hover .table-danger:hover>td, .table-hover .table-danger:hover>th
	{
	background-color: #f1b0b7
}

.table-light, .table-light>td, .table-light>th {
	background-color: #fdfdfe
}

.table-hover .table-light:hover {
	background-color: #ececf6
}

.table-hover .table-light:hover>td, .table-hover .table-light:hover>th {
	background-color: #ececf6
}

.table-dark, .table-dark>td, .table-dark>th {
	background-color: #c6c8ca
}

.table-hover .table-dark:hover {
	background-color: #b9bbbe
}

.table-hover .table-dark:hover>td, .table-hover .table-dark:hover>th {
	background-color: #b9bbbe
}

.table-active, .table-active>td, .table-active>th {
	background-color: rgba(0, 0, 0, .075)
}

.table-hover .table-active:hover {
	background-color: rgba(0, 0, 0, .075)
}

.table-hover .table-active:hover>td, .table-hover .table-active:hover>th
	{
	background-color: rgba(0, 0, 0, .075)
}

.table .thead-dark th {
	color: #fff;
	background-color: #212529;
	border-color: #32383e
}

.table .thead-light th {
	color: #495057;
	background-color: #e9ecef;
	border-color: #dee2e6
}

.table-dark {
	color: #fff;
	background-color: #212529
}

.table-dark td, .table-dark th, .table-dark thead th {
	border-color: #32383e
}

.table-dark.table-bordered {
	border: 0
}

.table-dark.table-striped tbody tr:nth-of-type(odd) {
	background-color: rgba(255, 255, 255, .05)
}

.table-dark.table-hover tbody tr:hover {
	background-color: rgba(255, 255, 255, .075)
}
</style>
<!-- style/css:end -->    
</head>

<body>
	<!-- Header area wrapper starts -->
	<header id="header-wrap">
		<!-- Navbar Starts -->
		<nav class="navbar navbar-expand-md fixed-top scrolling-navbar nav-bg">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<a class="navbar-brand" href="/"> <img style="position: left"
						src="/images/logo.png" alt="">
					</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#main-menu" aria-controls="main-menu"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse" id="main-menu">
					<ul class="navbar-nav mr-auto w-100 justify-content-end">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle active" href="index.jsp"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								首頁 </a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">最新消息</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="">認養活動</a> <a
									class="dropdown-item" href="">寵物保健</a> <a class="dropdown-item"
									href="">演講座談</a>

							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">寵物市集</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="">新品上市</a> <a
									class="dropdown-item" href="l">好康優惠</a> <a
									class="dropdown-item" href="l">寵物飲食</a> <a
									class="dropdown-item" href="">寵物用品</a>
							</div></li>
<!-- 						</li> -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">寵物旅店</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="">旅店簡介</a> <a
									class="dropdown-item" href="">房型價格</a> <a class="dropdown-item"
									href="">特色設備</a> <a class="dropdown-item" href="">線上訂房</a>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">寵物醫院</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="">各區醫院</a> <a
									class="dropdown-item" href="">線上掛號</a> <a class="dropdown-item"
									href="">看診進度查詢</a>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">部落格分享</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="">本周最新</a> <a
									class="dropdown-item" href="">熱門文章</a> <a class="dropdown-item"
									href="">精選圖文</a>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">會員登入/註冊</a></li>
					</ul>
					<form class="form-inline">
						<div class="top_search_con">
							<input class=" mr-sm-2" type="text" placeholder="站內搜尋 ...">
							<span class="top_search_icon"> <i class="icon-magnifier"></i>
							</span>
						</div>
					</form>
				</div>

				<!-- Mobile Menu Start -->
				<ul class="wpb-mobile-menu">
					<li><a class="active" href="index.jsp">首頁</a></li>
					<li><a href="#">最新消息</a>
						<ul>
							<li><a href="">認養活動</a></li>
							<li><a href="">寵物保健</a></li>
							<li><a href="">演講座談</a></li>
						</ul></li>
					<li><a href="#">寵物市集</a>
						<ul>
							<li><a href="">新品上市</a></li>
							<li><a href="">好康優惠</a></li>
							<li><a href="">寵物飲食</a></li>
							<li><a href="">寵物用品</a></li>
						</ul></li>
					<li><a href="#">寵物旅店</a>
						<ul>
							<li><a href="">旅店簡介</a></li>
							<li><a href="">房型價格</a></li>
							<li><a href="">特色設備</a></li>
							<li><a href="">線上訂房</a></li>
						</ul></li>
					<li><a href="#">寵物醫院</a>
						<ul>
							<li><a href="">各區醫院</a></li>
							<li><a href="">線上掛號</a></li>
							<li><a href="">看診進度查詢</a></li>
						</ul></li>
					<li><a href="#">部落格分享</a>
						<ul>
							<li><a href="">本周最新</a></li>
							<li><a href="">熱門文章</a></li>
							<li><a href="">精選圖文</a></li>
						</ul></li>
					<li><a href="#">會員登入/註冊</a></li>
				</ul>
				<!-- Mobile Menu End -->
			</div>
		</nav>
		<!-- Navbar ends -->
	</header>

<!-- Classic Blog Section -->
  <section class="classic-blog-section section">
    <div class="container">
      <div class="row">
        <!-- Blog Sidebar Section -->
        <div class="col-md-3">
          <div class="sidebar-area">
            <!-- Search Bar -->
            <aside class="widget search-bar wow fadeIn" data-wow-delay="0.3s">
              <form>
                <input type="text" placeholder="Search" class="form-control">
                <button type="submit">
                  <i class="fa fa-search"></i>
                </button>
              </form>
            </aside>
            <!-- Text Widgets -->
            <aside class="widget text-widgets wow fadeIn" data-wow-delay="0.3s">
              <h2 class="widget-title">Text Widget</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur dolorem fuga ad corrupti, ullam, eos natus,
                repellat officiis sit labore a aspernatur quisquam. In, unde.</p>
            </aside>
            <!-- Recent Post Widgets -->
            <aside class="widget popular-post wow fadeIn" data-wow-delay="0.3s">
              <h2 class="widget-title">Popular Post</h2>
              <ul>
                <li>
                  <div class="media">
                    <div class="media-left">
                      <a href="#">
                        <img class="img-responsive" src="assets/img/blog/avatar/avatar1.jpg" alt="">
                      </a>
                    </div>
                    <div class="media-body">
                      <h4>
                        <a href="#">Principles of UX Design</a>
                      </h4>
                      <span class="published-time">
                        <i class="fa fa-calendar"></i> 18 hrs ago</span>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="media">
                    <div class="media-left">
                      <a href="#">
                        <img class="img-responsive" src="assets/img/blog/avatar/avatar2.jpg" alt="">
                      </a>
                    </div>
                    <div class="media-body">
                      <h4>
                        <a href="#">The unknown mystery of Momy</a>
                      </h4>
                      <span class="published-time">
                        <i class="fa fa-calendar"></i> 5 Days ago</span>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="media">
                    <div class="media-left">
                      <a href="#">
                        <img class="img-responsive" src="assets/img/blog/avatar/avatar3.jpg" alt="">
                      </a>
                    </div>
                    <div class="media-body">
                      <h4>
                        <a href="#">IMDM top 250 Movies</a>
                      </h4>
                      <span class="published-time">
                        <i class="fa fa-calendar"></i> 6 Days ago</span>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="media">
                    <div class="media-left">
                      <a href="#">
                        <img class="img-responsive" src="assets/img/blog/avatar/avatar4.jpg" alt="">
                      </a>
                    </div>
                    <div class="media-body">
                      <h4>
                        <a href="#">Meteor.JS Fundamentals</a>
                      </h4>
                      <span class="published-time">
                        <i class="fa fa-calendar"></i> 7 Days ago</span>
                    </div>
                  </div>
                </li>
              </ul>
            </aside>
            <!-- Category -->
            <aside class="widget flickr-widget wow fadeIn" data-wow-delay="0.3s">
              <h2 class="widget-title">Category</h2>
              <ul class="category-menu">
                <li>
                  <a href="#">UX Design (21)</a>
                </li>
                <li>
                  <a href="#">Photography (19)</a>
                </li>
                <li>
                  <a href="#">Video Editing (16)</a>
                </li>
                <li>
                  <a href="#">Works (7)</a>
                </li>
              </ul>
            </aside>
            <!-- Subscribe Widget -->
            <aside class="widget subscribe-widget wow fadeIn" data-wow-delay="0.3s">
              <h2 class="widget-title">Subscribe</h2>
              <div class="subscribe-area">
                <p>Subscribe to our news latter to get regular update and blog posts.</p>
                <form class="form-group">
                  <div class="input-group">
                    <input type="email" class="form-control input-block-level" placeholder="hello@youremail.com">
                  </div>
                  <button type="submit" class="mt-10 btn btn-common btn-block">Subscribe</button>
                </form>
              </div>
            </aside>
            <!-- Tag Cloud -->
            <aside class="widget tag-cloud wow fadeIn" data-wow-delay="0.3s">
              <h2 class="widget-title">Tag clouds</h2>
              <div class="clearfix">
                <ul>
                  <li>
                    <a href="#">Download</a>
                  </li>
                  <li>
                    <a href="#">PSD</a>
                  </li>
                  <li>
                    <a href="#">Coding</a>
                  </li>
                  <li>
                    <a href="#">UI</a>
                  </li>
                  <li>
                    <a href="#">Sublime</a>
                  </li>
                  <li>
                    <a href="#">Web Design</a>
                  </li>
                  <li>
                    <a href="#">Hosting</a>
                  </li>
                  <li>
                    <a href="#">Design</a>
                  </li>
                  <li>
                    <a href="#">Arts</a>
                  </li>
                  <li>
                    <a href="#">Marketing</a>
                  </li>
                  <li>
                    <a href="#">Technology</a>
                  </li>
                </ul>
              </div>
            </aside>
          </div>
        </div>
        <!-- End -->

        <!-- BLog Article Section -->
        <div class="col-md-9">
          <!-- Single Blog Post -->
					<!-- 每頁不同的內容從這裡開始 -->
					<table id="table1"
						class="table table-bordered table-striped table-hover">
						<thead>
							<tr>
								<th>醫院ID</th>
								<th>醫院Name</th>
								<th>醫院TEL</th>
								<th>醫院ADDR</th>
							</tr>
						</thead>
						<tbody>
					<c:forEach var="hosp" items="${alllist}">
					<tr>
					<td>${hosp.id}</td>
					<td>${hosp.name}</td>
					<td>${hosp.tel}</td>
					<td>${hosp.addr}</td>
					</tr>
			</c:forEach>
						</tbody>
					</table>
					<!-- 每頁不同的內容到這裡結束 -->

        </div>
 <!-- Blog Pagination -->
          <div class="blog-pagination clearfix wow fadeIn" data-wow-delay="0.3s">
            <nav aria-label="..." class="">
              <ul class="pagination">
                <li class="page-item disabled">
                  <a class="page-link" href="#" tabindex="-1" aria-label="Previous">
                    <i class="fa fa-angle-left"></i>
                    Prev
                    <span class="sr-only">Previous</span>
                  </a>
                </li>
                <li class="page-item active">
                  <a class="page-link" href="#">1
                    <span class="sr-only">(current)</span>
                  </a>
                </li>
                <li class="page-item">
                  <a class="page-link" href="#">2</a>
                </li>
                <li class="page-item">
                  <a class="page-link" href="#">3</a>
                </li>
                <li class="page-item">
                  <a class="page-link" href="#">4</a>
                </li>
                <li class="page-item">
                  <a class="page-link" href="#" aria-label="Next">
                    Next
                    <i class="fa fa-angle-right"></i>
                    <span class="sr-only">Next</span>
                  </a>
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- End -->
      </div>
    </div>
  </section>
  <!-- Classic Blog Section End -->

	
	<!-- Footer Section -->
	<footer>
		<!-- Container Starts -->
		<div class="container">
			<!-- Row Starts -->
			<div class="row section">
				<!-- Footer Widget Starts -->
				<div class="footer-widget col-md-6 col-lg-3 col-xs-12">
					<h3 class="small-title">About Us</h3>
					<p></p>
					<ul class="mb-3">
						<!-- 						<li><i class="fa fa-map-marke"></i></li> -->
						<!-- 						<li><i class="fa fa-phone"></i></li> -->
						<!-- 						<li><i class="fa fa-phone"></i></li> -->
					</ul>
				</div>
				<!-- Footer Widget Ends -->

				<!-- Footer Widget Starts -->
				<div class="footer-widget col-md-6 col-lg-3 col-xs-12">
					<h3 class="small-title">Quick Links</h3>
					<ul class="menu">
						<li><a href="#">首頁</a></li>
						<li><a href="#">中途專區</a></li>
						<li><a href="#">最新活動專區</a></li>
						<li><a href="#">寵物市集</a></li>
						<li><a href="#">最新空房</a></li>
						<li><a href="#">醫院資訊專區</a></li>
						<li><a href="#">THE BLOG</a></li>
					</ul>
				</div>
				<!-- Footer Widget Ends -->

				<!-- Footer Widget Starts -->
				<div class="footer-widget col-md-6 col-lg-3 col-xs-12">
					<h3 class="small-title">Popular Posts</h3>
					<ul class="image-list">
						<li>
							<figure class="overlay">
								<img class="img-fluid" src="" alt="">
							</figure>
							<div class="post-content">
								<h6 class="post-title">
									<a href="blog-single.html"></a>
								</h6>
								<div class="meta">
									<span class="date"></span>
								</div>
							</div>
						</li>
						<li>
							<figure class="overlay">
								<img class="img-fluid" src="" alt="">
							</figure>
							<div class="post-content">
								<h6 class="post-title">
									<a href="blog-single.html"></a>
								</h6>
								<div class="meta">
									<span class="date"></span>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<!-- Footer Widget Ends -->

				<!-- Footer Widget Starts -->
				<div class="footer-widget col-md-6 col-lg-3 col-xs-12">
					<h3 class="small-title">EMail Us</h3>
					<form>
						<input type="text" placeholder="Email here">
						<button type="submit">
							<i class="fa fa-paper-plane-o"></i>
						</button>
					</form>
					<div class="flicker-gallery">
						<h3 class="small-title">Social Media Link</h3>
						<a href="#" title="Pan Masala"> <img
							src="/images/flicker/img1.jpg" alt="">
						</a> <a href="#" title="Sports Template for Joomla"> <img
							src="/images/flicker/img2.jpg" alt="">
						</a> <a href="" title="Apple Keyboard"> <img
							src="/images/flicker/img3.jpg" alt="">
						</a>
					</div>
				</div>
				<!-- Footer Widget Ends -->
			</div>
			<!-- Row Ends -->
		</div>
		<!-- Container Ends -->

		<!-- Copyright -->
		<div id="copyright">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-6">
						<p class="copyright-text">
							© 2018 Animour All right reserved, Designed by <a href="#">iii-ee100</a>
						</p>
					</div>
					<div class="col-md-6 col-sm-6">
						<div class="social-footer text-right">
							<a href="#"> <i class="fa fa-facebook icon-round"></i>
							</a> <a href="#"> <i class="fa fa-twitter icon-round"></i>
							</a> <a href="#"> <i class="fa fa-linkedin icon-round"></i>
							</a> <a href="#"> <i class="fa fa-google-plus icon-round"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Copyright  End-->

	</footer>
	<!-- Footer Section End-->

	<!-- Go To Top Link -->
	<a href="#" class="back-to-top"> <i class="fa fa-angle-up"> </i>
	</a>

	<!-- JavaScript & jQuery Plugins -->
	<script src="/js/jquery-min.js"></script>
	<script src="/js/popper.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/jquery.mixitup.js"></script>
	<script src="/js/smoothscroll.js"></script>
	<script src="/js/wow.js"></script>
	<script src="/js/owl.carousel.js"></script>
	<script src="/js/waypoints.min.js"></script>
	<script src="/js/jquery.counterup.min.js"></script>
	<script src="/js/jquery.slicknav.js"></script>
	<script src="/js/jquery.appear.js"></script>
	<script src="/js/form-validator.min.js"></script>
	<script src="/js/contact-form-script.min.js"></script>
	<script src="/js/main.js"></script>
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="/js/jquery-slim.min.js"><\/script>')
	</script>
	<script src="/js/popper.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/vendor/holder.min.js"></script>

</body>
</html>