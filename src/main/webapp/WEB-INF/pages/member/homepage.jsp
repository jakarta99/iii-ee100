<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!--Icon Tags end -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Viewport Meta Tag -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
	

<!-- Page Header -->
      <div class="page-header-section">
        <div class="container">
          <div class="row">
            <div class="page-header-area">
              <div class="page-header-content">
                <h2 style="font-family: '微軟正黑體';">${member.account}的個人首頁</h2>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Header area wrapper ends -->
   </header>
   <!-- Classic Blog Section -->
	<section class="classic-blog-section section">
		<div class="container">
			<div class="row">
			<div class="modal fade" id="exampleModal" tabindex="-1"
					role="dialog" aria-labelledby="exampleModalLabel"
					aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">結帳訊息</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body" id='showReservation'></div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">下次再結</button>
								<button id="checkout" type="button" class="btn btn-common">現在結帳</button>
							</div>
						</div>
					</div>
				</div>
				<!-- Blog Sidebar Section -->
				<div class="col-md-3">

					<div class="sidebar-area">
						<!-- Search Bar -->
						<aside class="widget search-bar wow fadeIn" data-wow-delay="0.3s">
							<div>
								<div class="card mb-3 box-shadow" id="eachdiv2">
									<span> <img class="card-img-top img-circle" width="75px"
										src="${member.images}"  alt="${member.id}">
									</span>
									<div class="card-body" style="margin-bottom: 5px">
<!-- 										<p class="card-text" style="padding: 0px">${member.account}</p> -->
<!-- 										<p class="card-text" style="padding: 0px">暱稱：${member.nickname}</p> -->
<!-- 										<small class="text-muted"></small> -->

										<div class="d-flex justify-content-between align-items-center"
											style="max-height: 100px">
											<div class="btn-group" style="margin: 0px">
<!-- 												<button type="button" onclick="" -->
<!-- 													class="btn btn-common btn-sm mt-10">add</button> -->
											</div>
										</div>
									</div>
								</div>
							</div>
						</aside>
						<!-- Text Widgets -->
						<!-- Recent Post Widgets -->
						<!-- Category -->
						<aside class="widget flickr-widget wow fadeIn"
							data-wow-delay="0.3s">
							<h2 class="widget-title">${member.account}</h2>
							<ul class="category-menu">
							
							<c:if test="${member.id eq currentMember.id}">
								<li><a href="/findOrders/index">訂單查詢</a></li>
								<li><a id="checkOrder" href="#" data-toggle="modal" data-target="#exampleModal">預約查詢</a></li>							
								<li><a href="#">活動紀錄</a></li>
								<li><a href="/update">修改個人資料</a></li>
								<button type="button" class="btn btn-common" data-toggle='modal' data-target="#exampleModalMyFriend" data-whatever='${currentMember.id}' id="myFriendListbtn">好友清單</button>								
							</c:if>
							<sec:authorize access="hasRole('Member')"> 
							<c:if test="${member.id ne currentMember.id}">
								<li id="addFriend" value='${member.id}'>
								<form id="insertFriend" enctype="multipart/form-data">
								<input name="friendId" type="hidden" value="${member.id}"/>
								</form>
								<span id="span">
								</span>
								</li>
							</c:if>
							</sec:authorize>
							</ul>
						</aside>
						<!-- Subscribe Widget -->
						<!-- Tag Cloud -->

					</div>
				</div>
				<!-- End -->
				<!-- BLog Article Section -->
				<div class="col-md-8">
					<!-- Single Blog Post -->
					<!-- 每頁不同的內容從這裡開始 -->
<!-- 從這裡開始 -->
			<h4>發文東西</h4>					
					<div id="portfolio" class="row">
			<c:forEach var="animal" items="${animalls}">
            <div class="col-md-3 col-lg-3 col-sm-3 col-xs-12 mix marketing planning" style="display: inline-block;" data-bound="">
              <div class="portfolio-item">
                <div class="portfolio-img">
                  <img src="/showAnimalImage?fileName=${animal.fileName}" alt="" >                  
                </div> 
                <div class="portfoli-content">
                  <div class="sup-desc-wrap">
                    <div class="sup-desc-inner">
                      <div class="sup-link">
                        <a class="left-link" href="#"><i class="icon-link"></i></a>
                        
                        
                      </div>
                      <div class="sup-meta-wrap">
                        <a class="sup-title" href="/halfway/detail?id=${animal.id}"><h4>${animal.name}</h4></a>
                        <p class="sup-description">${animal.status}</p>
                      </div>
                    </div>
                  </div>
                </div>               
              </div>
            </div>
            </c:forEach>
            </div>
            
					
					
					
					<h4>動物資料</h4>
					<div class="row">
					<c:forEach var="animal" items="${animalls}">
					<div class="col-md-3">
						<div class="card mb-3 box-shadow">
							<img class="card-img-top"
								src="/showAnimalImage?fileName=${animal.fileName}" width="100px"
								alt="待領養小貓">
							<div class="card-body" style="margin-bottom: 5px">
								<p class="card-text" style="padding: 0px">狀態：${animal.status}</p>
								<p class="card-text" style="padding: 0px">綽號：${animal.name}</p>
								<div class="d-flex justify-content-between align-items-center"
									style="max-height: 80px">
									<div class="btn-group" style="margin: 0px">
										<button type="button"
											onclick="location.href='/halfway/detail?id=${animal.id}';"
											class="btn btn-common btn-sm mt-10">詳情</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				</div>				
					<!-- 每頁不同的內容到這裡結束 -->
<!-- 條列文章 -->					
					
					<h3>文章列表</h3>
				<!-- Row Starts -->
			<div class="row">
				<c:forEach var="article" items="${articles}">
				<div class="col-md-5 card mb-5 box-shadow">
<!-- 					<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12"> -->
						<!-- Blog Item Starts -->
						<div class="blog-item-wrapper" style="height: 405px;">
							<div class="blog-item-img">
								<a href="/forum/findOne?id=${article.id}"> <img style="width:320px;height:220px;padding:10px;" src="${article.images}"
									alt="">
								</a>
							</div>
							<div class="blog-item-text">

								<h3 class="small-title" style="height: 60px;">

									<a href="/forum/findOne?id=${article.id}" style="overflow:hidden;display:-webkit-box;-webkit-box-orient:vertical;-webkit-line-clamp:2;line-height:24px;height:48px;"><c:out value="${article.subject}"/></a>

								</h3>

								
								<div class="blog-one-footer">
									<a href="/forum/findOne?id=${article.id}">Read More</a> <a
										href="#"> <i class="icon-heart"></i> 0 Likes
									</a> <a href="/forum/findOne?id=${article.id}#comment"> <i
										class="icon-bubbles"></i> ${article.commentLength} Comments
									</a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
		</div>

				<!-- Blog Item Wrapper Ends-->
		<div class="modal fade" id="exampleModalMyFriend" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document" >
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">My Follow List</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body" id="modal_myFriendList" >
					<c:forEach items='${friendlist}' var='friend'>
<!-- 					<div class='row'> -->
					<div class='col-md-6'>
					<div class="card mb-5 box-shadow ">
					<div style="padding:1px;" >
					<a href='/user/${friend.account}'>
					<div style="width:60px; height:60px;margin:1px;float:left" >
					<img src="${friend.images}" alt="${friend.id}" class="card-img-top img-circle">
					</div>
					<div style="float:left;text-align: center;height:60px"><span>${friend.account}</span></div>
					</a>
					</div>
					</div>
					</div>
<!-- 					</div> -->
					
					</c:forEach>
					
					</div>
					<div class="modal-footer">
					</div>
				</div>
			</div>
		</div>			
				
				<!-- Blog Pagination -->
				<!-- 分頁開始 -->
				<div class="blog-pagination clearfix wow fadeIn"
					data-wow-delay="0.3s"></div>
				<!-- 分頁結束 -->
			</div>
			<!-- End -->
		</div>
		</div>

			</section>
		
	<!-- Classic Blog Section End -->
      
	

	<!-- Footer Section -->
	<footer>
	<jsp:include page="../footer.jsp"></jsp:include>
	</footer>
	<!-- Footer Section End-->

	<!-- Go To Top Link -->
	<a href="#" class="back-to-top"> <i class="fa fa-angle-up"> </i>
	</a>

	<!-- JavaScript & jQuery Plugins -->
	<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
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
<!-- 	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" -->
<!-- 		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" -->
<!-- 		crossorigin="anonymous"></script> -->
 	<script> 
 		window.jQuery
 				|| document
 						.write('<script src="/js/jquery-slim.min.js"><\/script>')
 	</script>
	<script src="/js/popper.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/vendor/holder.min.js"></script>
	<script>
	//預約訂單按鈕
	$('#checkOrder').click(function(){
		$.getJSON('/reservationForms/getServiceCotent', {},
				function(data) {

				});		
		alert('aaa')
	})
	
	 $(document).ready(function () {
 		 var a=$("#addFriend").attr('value');
 		 if(a!=null){
 		$.getJSON('/api/member/all/member/friend/'+a, { }, function (result) { 			
 			
 			$.each(result, function (i, friend) {
 				console.log("friend:"+friend)
                if(friend == true){
               	 $("#span").html('<i class="fa fa-heart icon-default"></i>  my好友');
                }else{
                $("#span").html('<i class="icon-heart"></i> 加好 友 ');
                }
 			});//end .each
 		
 		})//end .json;
 		
 		$("#addFriend").on('click' ,function (event) {
			 console.log("#addFriend:");
			 console.log($(this));
            var formData = new FormData(document.getElementById("insertFriend"));
            console.log(formData);
            $.ajax({
              type: "POST",
              url: "/api/member/all/addfriend",
              data: formData,
              contentType: false,
              processData: false
            })
			 .done(function (data) {
            $.each(data, function (i, friend) {
		           	 console.log("friendstatus");
		                console.log(friend);
		                console.log("friend.id:: "+friend.id)
		                console.log("friend:: "+friend)
		                
		                if(friend == true){
		               	 $("#span").html('<i class="fa fa-heart icon-default"></i>  my好友');
		                }else{
		                $("#span").html('<i class="icon-heart"></i> 加好友 ');
		                }
		              });
		            }); //end .done
		 		})
		 	}//end if
		 });
	 </script>
	 <script>
	$(document).ready(function () {

			$('#exampleModalMyFriend').on('show.bs.modal', function (event) {
				var button = $(event.relatedTarget) // Button that triggered the modal
// 				account = button.data('whatever') // Extract info from data-* attributes
				// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
				// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
				var modal = $(this)
//	 			modal.find('.modal-title').text(account+"'s friends ")
//	 			modal.find('#account').val(account)
			})
			

	})

	
	</script>
	

</body>
</html>