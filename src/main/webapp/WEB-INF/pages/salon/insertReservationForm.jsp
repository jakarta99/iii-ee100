﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
			<!doctype html>
			<html lang="en">

			<head>
				<!--Icon Tags start -->
				<link rel="apple-touch-icon" sizes="57x57" href="/images/icon/apple-icon-57x57.png">
				<link rel="apple-touch-icon" sizes="60x60" href="/images/icon/apple-icon-60x60.png">
				<link rel="apple-touch-icon" sizes="72x72" href="/images/icon/apple-icon-72x72.png">
				<link rel="apple-touch-icon" sizes="76x76" href="/images/icon/apple-icon-76x76.png">
				<link rel="apple-touch-icon" sizes="114x114" href="/images/icon/apple-icon-114x114.png">
				<link rel="apple-touch-icon" sizes="120x120" href="/images/icon/apple-icon-120x120.png">
				<link rel="apple-touch-icon" sizes="144x144" href="/images/icon/apple-icon-144x144.png">
				<link rel="apple-touch-icon" sizes="152x152" href="/images/icon/apple-icon-152x152.png">
				<link rel="apple-touch-icon" sizes="180x180" href="/images/icon/apple-icon-180x180.png">
				<link rel="icon" type="image/png" sizes="192x192" href="/images/icon/android-icon-192x192.png">
				<link rel="icon" type="image/png" sizes="32x32" href="/images/icon/favicon-32x32.png">
				<link rel="icon" type="image/png" sizes="96x96" href="/images/icon/favicon-96x96.png">
				<link rel="icon" type="image/png" sizes="16x16" href="/images/icon/favicon-16x16.png">
				<link rel="manifest" href="/manifest.json">


				<!--Icon Tags end -->
				<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
				<!-- Viewport Meta Tag -->
				<meta name="viewport" content="width=device-width, initial-scale=1">
				<title>RESERVATION</title>
				<!-- calendar css -->
				<!-- Bootstrap -->
				<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
				<!-- Main Style -->
				<link rel="stylesheet" type="text/css" href="/css/main.css">
				<!-- Slicknav Css -->
				<link rel="stylesheet" type="text/css" href="/css/slicknav.css">

				<!-- Responsive Style -->
				<link rel="stylesheet" type="text/css" href="/css/responsive.css">
				<!--Fonts-->
				<link rel="stylesheet" media="screen" href="/fonts/font-awesome/font-awesome.min.css">
				<link rel="stylesheet" media="screen" href="/fonts/simple-line-icons.css">

				<!-- Extras -->
				<link rel="stylesheet" type="text/css" href="/extras/owl/owl.carousel.css">
				<link rel="stylesheet" type="text/css" href="/extras/owl/owl.theme.css">
				<link rel="stylesheet" type="text/css" href="/extras/animate.css">
				<link rel="stylesheet" type="text/css" href="/extras/normalize.css">


				<!-- Color CSS Styles  -->
				<link rel="stylesheet" type="text/css" href="/css/colors/green.css" media="screen" />

				<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
				<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js">
    </script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js">
    </script>
	<![endif]-->
				<style>
					.calendar {
						width: 450px;
						height: 350px;
						background: #fff;
						box-shadow: 0px 1px 1px rgba(0, 0, 0, 0.1);
					}

					.body-list ul {
						width: 100%;
						font-family: arial;
						font-weight: bold;
						font-size: 14px;
					}

					.body-list ul li {
						width: 14.28%;
						height: 36px;
						line-height: 36px;
						list-style-type: none;
						display: block;
						box-sizing: border-box;
						float: left;
						text-align: center;
					}

					.lightgrey {
						color: #a8a8a8;
						/*浅灰色*/
					}

					.darkgrey {
						color: #565656;
						/*深灰色*/
					}

					.green {
						color: #6ac13c;
						/*绿色*/
					}

					.greenbox {
						border: 1px solid #6ac13c;
						background: #e9f8df;
						/*浅绿色背景*/
					}
				</style>
			</head>

			<body>
				<!-- Header area wrapper starts -->
				<header id="header-wrap">
					<!-- Navbar Starts -->
					<jsp:include page="../navbar.jsp"></jsp:include>
					<!-- Navbar ends -->
				</header>
				<!-- Header-wrap Section End -->
				<!-- Page Header -->
				<div class="page-header-section">
					<div class="container">
						<div class="row">
							<div class="page-header-area">
								<div class="page-header-content">
									<h2>RESERVATION</h2>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Page Header End -->
				<!-- Classic Blog Section -->
				<section class="classic-blog-section section">
					<div class="container">
						<div class="row">
							<!-- End -->

							<!-- <div id="loginbox" style="margin-top: 50px; margin: auto" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
								<div class="panel panel-info" style="border: 1px">
									<div class="panel-heading" style="padding: 10px 15px; border-bottom: 1px solid transparent; border-top-right-radius: 3px; border-top-left-radius: 3px; border-bottom: 0; color: #FFFFFF; background-color: #9C3; border-color: #ddd">
										<div class="panel-title">新增預約</div>
										<div style="float: right; font-size: 80%; position: relative; top: -10px">
											<a href="#"></a>
										</div>
									</div>

									<div style="padding-top: 30px" class="panel-body">
										<div style="display: none" id="login-alert" class="alert alert-danger col-sm-12"></div>
										<div class="calendar">
											<div class="title">
												<h1 class="green" id="calendar-title">Month</h1>
												<h2 class="green small" id="calendar-year">Year</h2>
												<a href="" id="prev">Prev Month</a>
												<a href="" id="next">Next Month</a>
											</div>
											<div class="body">
												<div class="lightgrey body-list">
													<ul>
														<li>MON</li>
														<li>TUE</li>
														<li>WED</li>
														<li>THU</li>
														<li>FRI</li>
														<li>SAT</li>
														<li>SUN</li>
													</ul>
												</div>
												<div class="darkgrey body-list">
													<ul id="days">
													</ul>
												</div>
											</div>
										</div>
										<br> -->


							<form id="myform" style="margin-top: 50px; margin: auto">
								<!-- <ul>
												<li>
													<span></span>
													<select></select>
												</li>
											</ul> -->
								預約日期
								<input class="form-group col-md-8" id="meeting" type="date" name="reservationDate" />


								<div class="form-group col-md-8">
									美容師:
									<select id="designer" class="form-control" name="designer">
										<option value="designer" label="請選擇美容師" />
									</select>
								</div>
								<div class="form-group col-md-8">
									服務類別:
									<select id="content" class="form-control" name="content">
										<option value="content" label="請選擇類別" />

									</select>
									時段:
									<select id="frontTime" class="form-control" name="frontTime">
										<option value="frontTime" label="請選擇時段" />

									</select>


									價位：
									<select id="price" class="form-control" name="price">
										<option value="price" label="請選擇價位" />

									</select>
								</div>


								<br>
								<!-- <form action="/" id="searchForm">
													<input type="text" name="s" placeholder="Search...">
													<input type="submit" value="Search">
												</form>
												<!-- the result of the search will be rendered inside this div -->
								<!-- <div id="result"></div> -->
								<div>
									<input id="response" type="submit" class="btn btn-common" value="預約">
									<input id="" type="reset" class="btn btn-common" value="清除">
								</div>
							</form>


						</div>
					</div>
					</div>
				</section>
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
									<li>
										<a href="#">首頁</a>
									</li>
									<li>
										<a href="#">中途專區</a>
									</li>
									<li>
										<a href="#">最新活動專區</a>
									</li>
									<li>
										<a href="#">寵物市集</a>
									</li>
									<li>
										<a href="#">Salon</a>
									</li>
									<li>
										<a href="#">醫院資訊專區</a>
									</li>
									<li>
										<a href="#">THE BLOG</a>
									</li>
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
									<a href="#" title="Pan Masala">
										<img src="/images/flicker/img1.jpg" alt="">
									</a>
									<a href="#" title="Sports Template for Joomla">
										<img src="/images/flicker/img2.jpg" alt="">
									</a>
									<a href="" title="Apple Keyboard">
										<img src="/images/halfway/halfwayindex.jpg" alt="">
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
										© 2018 Animour All right reserved, Designed by
										<a href="#">iii-ee100</a>
									</p>
								</div>
								<div class="col-md-6 col-sm-6">
									<div class="social-footer text-right">
										<a href="#">
											<i class="fa fa-facebook icon-round"></i>
										</a>
										<a href="#">
											<i class="fa fa-twitter icon-round"></i>
										</a>
										<a href="#">
											<i class="fa fa-linkedin icon-round"></i>
										</a>
										<a href="#">
											<i class="fa fa-google-plus icon-round"></i>
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
				<a href="#" class="back-to-top">
					<i class="fa fa-angle-up"> </i>
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
				<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
				 crossorigin="anonymous"></script>
				<script>
					window.jQuery
						|| document
							.write('<script src="/js/jquery-slim.min.js"><\/script>')
				</script>
				<script src="/js/popper.min.js"></script>
				<script src="/js/bootstrap.min.js"></script>
				<!-- 	<script src="/js/vendor/holder.min.js"></script> -->

				<script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
				<script src="/js/jquery-3.3.1.min.js"></script>
				<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
				<!-- 	<different content from here> -->

				<script>
					$(document).ready(function () {
						$.getJSON('/reservationForms/getServiceCotent', {}, function (data) {
							console.log(data);
							$.each(data, function (i, a) {
								var cell1 = $("<option></option>").text(a.content);
								var cell2 = $("<option></option>").text(a.price);
								$('#content').append(cell1);

								$('#price').append(cell2);

							});


						}
						)
					});
					$(document).ready(function () {
						$.getJSON('/reservationForms/getTimeSection', {}, function (data) {
							console.log(data);
							$.each(data, function (i, a) {
								var cell1 = $("<option></option>").text(a.frontTime);
								$('#frontTime').append(cell1);
							});

						}
						)
					});
					$(document).ready(function () {
						$.getJSON('/reservationForms/getDesigner', {}, function (data) {
							console.log(data);
							$.each(data, function (i, a) {
								var cell1 = $("<option></option>").text(a.designer);

								$('#designer').append(cell1);
							});

						}
						)
					});
					$("#response").click(function () {

						var data1 = new FormData(document.getElementById("myform"));
						console.log(toJson(data1));
						$.ajax({
							url: '/reservationForms',
							type: 'POST',
							data: toJson(data1),
							contentType: "application/json",
							dataType: "json",


						}).done(function (data) {
							alert("插入成功")
							window.location.href = "http://localhost:8080/reservation";
						});

						function toJson(formData) {
							var object = {};
							formData.forEach(function (value, key) {
								// if (key == 'city') {
								// 	var object1 = {};
								// 	object1['id'] = value;
								// 	object[key] = object1;
								// } else {
								object[key] = value;
								// }
							});
							var json = JSON.stringify(object, null);
							console.log(json);
							return json;
						};


					});

				</script>
				<!-- <script>
					var month_olympic = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
					var month_normal = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
					var month_name = ["January", "Febrary", "March", "April", "May", "June", "July", "Auguest", "September", "October", "November", "December"];

					var holder = document.getElementById("days");
					var prev = document.getElementById("prev");
					var next = document.getElementById("next");
					var ctitle = document.getElementById("calendar-title");
					var cyear = document.getElementById("calendar-year");

					var my_date = new Date();
					var my_year = my_date.getFullYear();
					var my_month = my_date.getMonth();
					var my_day = my_date.getDate();

					function dayStart(month, year) {
						var tmpDate = new Date(year, month, 1);
						return (tmpDate.getDay());
					}

					function daysMonth(month, year) {
						var tmp = year % 4;
						if (tmp == 0) {
							return (month_olympic[month]);
						} else {
							return (month_normal[month]);
						}
					}
					function refreshDate() {
						var str = "";
						var totalDay = daysMonth(my_month, my_year); //获取该月总天数
						var firstDay = dayStart(my_month, my_year); //获取该月第一天是星期几
						var myclass;
						for (var i = 1; i < firstDay; i++) {
							str += "<li></li>"; //为起始日之前的日期创建空白节点
						}
						for (var i = 1; i <= totalDay; i++) {
							if ((i < my_day && my_year == my_date.getFullYear() && my_month == my_date.getMonth()) || my_year < my_date.getFullYear() || (my_year == my_date.getFullYear() && my_month < my_date.getMonth())) {
								myclass = " class='lightgrey'"; //当该日期在今天之前时，以浅灰色字体显示
							} else if (i == my_day && my_year == my_date.getFullYear() && my_month == my_date.getMonth()) {
								myclass = " class='green greenbox'"; //当天日期以绿色背景突出显示
							} else {
								myclass = " class='darkgrey'"; //当该日期在今天之后时，以深灰字体显示
							}
							str += "<li" + myclass + ">" + i + "</li>"; //创建日期节点
						}
						holder.innerHTML = str; //设置日期显示
						ctitle.innerHTML = month_name[my_month]; //设置英文月份显示
						cyear.innerHTML = my_year; //设置年份显示
					}
					refreshDate();
					prev.onclick = function (e) {
						e.preventDefault();
						my_month--;
						if (my_month < 0) {
							my_year--;
							my_month = 11;
						}
						refreshDate();
					}
					next.onclick = function (e) {
						e.preventDefault();
						my_month++;
						if (my_month > 11) {
							my_year++;
							my_month = 0;
						}
						refreshDate();
					}

				</script> -->


			</body>

			</html>