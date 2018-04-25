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

</style>
<!-- style/css:end -->    
</head>

<body>
	<!-- Header area wrapper starts -->
	<header id="header-wrap">
		<!-- Navbar Starts -->
	<jsp:include page="../navbar.jsp"></jsp:include>
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
            <!-- Recent Post Widgets -->
            
            <!-- Category -->
            <aside class="widget flickr-widget wow fadeIn" data-wow-delay="0.3s">
              <h2 class="widget-title">Category</h2>
              <ul class="category-menu">
                <li>
                  <a href="#"></a>
                </li>
                <li>
                  <a href="#">個人收藏</a>
                </li>
                <li>
                  <a href="#">修改個人資料</a>
                </li>
                <li>
                  <a href="#">登出</a>
                </li>
              </ul>
            </aside>
            <!-- Subscribe Widget -->
            <!-- Tag Cloud -->
            
          </div>
        </div>
        <!-- End -->

        <!-- BLog Article Section -->
        <div class="col-md-9">
          <!-- Single Blog Post -->
					<!-- 每頁不同的內容從這裡開始 -->

	<h3>個人主頁</h3>
	
	
	<table id="table1"
						class="table table-bordered table-striped table-hover">
						
		<tbody>
			<tr>
				<td></td>帳號
				<td id="acco">${profile.account}</td>
				<td></td>
			</tr>
			
<!-- 			<tr><td></td>   -->
<%-- 				<td>${profile.nickname}</td> --%>
<!-- 				<td></td> -->
<!-- 				 暱稱 <tr> -->
<!-- 			<tr><td>登入次數</td> -->
<!-- 				<td></td> -->
<!-- 				<td></td> -->
<!-- 				</tr> -->

		</tbody>
	</table>
					<!-- 每頁不同的內容到這裡結束 -->

        </div>
 <!-- Blog Pagination -->
 <!-- 分頁開始 -->
          <div class="blog-pagination clearfix wow fadeIn" data-wow-delay="0.3s">

          </div>
 <!-- 分頁結束 -->          
        </div>
        <!-- End -->
      </div>
    </div>
  </section>
  <!-- Classic Blog Section End -->

	
	<!-- Footer Section -->
	<!-- (footer.jsp) -->
			<jsp:include page="../footer.jsp"></jsp:include>	<!-- Footer Section End-->

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


	<script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
	<script src="/js/jquery-3.3.1.min.js"></script>

<script>
var account=$("#acco").text();
console.log(account);
$(document).ready(function() {
	$.getJSON('/rest_users/'+account, {}, function (data) {
		console.log(data);
	})
})
	
</script>
</body>
</html>