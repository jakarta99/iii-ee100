<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true" %>
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

<title>Login</title>
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
<link rel="stylesheet" type="text/css" href="/css/login.css">
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
		-
		<jsp:include page="../navbar.jsp"></jsp:include>
		<!-- Navbar ends -->
	</header>
	<br>
	<!-- Classic Blog Section -->
	<section class="login-content">
		<div class="container">
			<div class="row">
				<!-- Blog Sidebar Section -->
				<!-- 左邊列 -->
				<section></section>
				<!-- End -->

				<!-- BLog Article Section -->
				<section>
					<div class="col-md-9">
						<!-- Single Blog Post -->
						<!-- 每頁不同的內容從這裡開始 -->

						<div></div>
						<!-- 每頁不同的內容到這裡結束 -->

						<div class="login-box">
							<form class="login-form" action="/login" method="POST">
								<h3 class="login-head">
									<i class="fa fa-lg fa-fw fa-user"></i>SIGN IN
								</h3>
								<div class="form-group">
									<label class="control-label">USERNAME</label> <input
										class="form-control" type="text" placeholder="account"
										autofocus="" name="username">
								</div>
								<div class="form-group">
									<label class="control-label">PASSWORD</label> <input
										class="form-control" type="password" placeholder="Password"
										name="password">
								</div>
								<div class="form-group">
									<div class="utility">
										<div class="animated-checkbox">
											<label> <input type="checkbox"><span
												class="label-text">Remember Me</span>
											</label>
										</div>
										<p class="semibold-text mb-2">
											<a href="#" data-toggle="flip">Forgot Password ?</a>
										</p>
									</div>
								</div>
								<div class="form-group btn-container">
									<button class="btn btn-primary btn-block">
										<i class="fa fa-sign-in fa-lg fa-fw"></i>SIGN IN
									</button>
								</div>
							</form>

							<form class="forget-form" action="/forgetpassword" method="post">
								<h3 class="login-head">
									<i class="fa fa-lg fa-fw fa-lock"></i>Forgot Password ?
								</h3>
								<div class="form-group">
									<label class="control-label">Account</label> 
									<input
										class="form-control" type="text" placeholder="Account" id="account" name="account">
								</div>
								<div class="form-group">
									<label class="control-label">EMAIL</label> <input
										class="form-control" type="text" placeholder="Email" id="email" name="email">
								</div>
<%-- 		<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION.message}"> --%>
<%-- 			<div class='error'><c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/>.</div> --%>
<%-- 		</c:if> --%>

								<div class="form-group btn-container">
									<button class="btn btn-primary btn-block">
										<i class="fa fa-unlock fa-lg fa-fw"></i>RESET
									</button>
								</div>
								<div class="form-group mt-3">
									<p class="semibold-text mb-0">
										<a href="#" data-toggle="flip"><i
											class="fa fa-angle-left fa-fw"></i> Back to Login</a>
									</p>
								</div>
							</form>
						</div>
				</section>
				<!-- Blog Pagination -->
				<!-- 燈入頁面不需要頁碼 -->
			</div>
			<!-- End -->
		</div>
		</div>
	</section>
	<!-- Classic Blog Section End -->


	<!-- Footer Section -->
	<!-- (footer.jsp) -->
	<jsp:include page="../footer.jsp"></jsp:include>

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


	<script src="/js/pace.min.js"></script>
	<script type="text/javascript">
		// Login Page Flipbox control
		$('.login-content [data-toggle="flip"]').click(function() {
			$('.login-box').toggleClass('flipped');
			return false;
		});
	</script>
</body>
</html>