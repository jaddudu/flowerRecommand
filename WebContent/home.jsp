<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Directing Template">
    <meta name="keywords" content="Directing, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Directing | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style1.css" type="text/css">
    <link rel="stylesheet" href="css/final.css" type="text/css">
    
    <!-- 슬라이드 -->
	<style>
	* {margin:0;padding:0;box-sizing:border-box;}
	ul, li {list-style:none;}
	
	.slidebox {max-width:1170px;margin:0 auto;}
	.slidebox .slidelist {white-space:nowrap;font-size:0;overflow:hidden;}
	.slidebox .slidelist .slideitem {position:relative;display:inline-block;vertical-align:middle;width:100%;transition:all 1s;}
	.slidebox .slidelist .slideitem > a {display:block;width:auto;position:relative;}
	.slidebox .slidelist .slideitem > a img {max-width:100%;}
	.slidebox .slidelist .slideitem > a label {position:absolute;top:50%;transform:translateY(-50%);padding:20px;border-radius:50%;cursor:pointer;}
	.slidebox .slidelist .slideitem > a label.left {left:20px;background:url('img/left-arrow.png') center center / 50% no-repeat;}
	.slidebox .slidelist .slideitem > a label.right {right:20px;background:url('img/right-arrow.png') center center / 50% no-repeat;}
	
	
	[name="slide"] {display:none;}
	#slide01:checked ~ .slidelist .slideitem {transform:translateX(0);animation:slide01 15s infinite;}
	#slide02:checked ~ .slidelist .slideitem {transform:translateX(-100%);animation:slide02 15s infinite;}
	#slide03:checked ~ .slidelist .slideitem {transform:translateX(-200%);animation:slide03 15s infinite;}
	
	
	@keyframes slide01 {
		0% {left:0%;}
		33% {left:0%;}
		34% {left:-100%}
		66% {left:-100%;}
		67% {left:-200%;}
		99% {left:-200%;}
		100% {left:0%;}
	}
	
	@keyframes slide02 {
		0% {left:0%;}
		33% {left:0%;}
		34% {left:-100%;}
		66% {left:-100%;}
		67% {left:100%;}
		99% {left:100%;}
		100% {left:0%;}
	}
	
	@keyframes slide03 {
		0% {left:0%;}
		33% {left:0%;}
		34% {left:200%;}
		66% {left:200%;}
		67% {left:100%;}
		99% {left:100%;}
		100% {left:0%;}
	}
	.header{
		background-color: wheat;
	}
	</style>
    
</head>

<body>
	<%
	MemberDTO dto = (MemberDTO)session.getAttribute("dto"); 
	%>


    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                <div class="hsLogo" style="
    position: absolute;
    width: 40%;
    top: 15%;
                ">
                    <img src = "img/logo1.png">
                </div>
                    <div class="header__logo">
                        <div class="breadcrumb__text">
						<h2 style="position: absolute;left: 190%;">Home</h2>
						<!-- <div class="breadcrumb__option"></div> -->
						</div>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <%if(dto!=null) {%>
                            <ul>
                                <li class="active"><a href="./home.jsp">Home</a></li>
                                <li><a href="./about.jsp">About</a></li>
                                <li><a href="#">Flower</a>
                                    <ul class="dropdown">
                                        <li><a href="./index.jsp">Search</a></li>
                                        <li><a href="./fbti.jsp">FBTI</a></li>
                                    </ul>
                                </li>
                                <li><a href="myinfo.jsp">내정보</a>
                                
                            </ul>
                            <%}else{ %>
                            <ul>
                                <li class="active"><a href="./home.jsp">Home</a></li>
                                <li><a href="./about.jsp">About</a></li>
                                <li><a href="#">Flower</a>
                                    <ul class="dropdown">
                                        <li><a href="#">Search</a></li>
                                        <li><a href="#">FBTI</a></li>
                                    </ul>
                                </li>
                                
                            </ul>
                            <%} %>
                        </nav>
                        <%if(dto!=null) {%>
                        <div class="header__menu__right">
                            <a href="LogoutServiceCon.do" class="primary-btn">로그아웃</a>
                        </div>
                        <%}else{ %>
                        <div class="header__menu__right">
                            <a href="sam.html" class="primary-btn">회원가입 / 로그인</a>
                        </div>
                        <%} %>
                    </div>
                </div>
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Breadcrumb Begin -->
	<div class="breadcrumb-area set-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Home</h2>
						<!-- <div class="breadcrumb__option"></div> -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb End --> 
    
    <!-- 슬라이드 시작 -->
	<section class="about spad" style="margin-top: 30px;">
		<div class="container" style="
    margin-left: 300px;
">
			<div class="row">
			
				<div class="section">
					<div class="slidebox">
					<input type="radio" name="slide" id="slide01" checked>
					<input type="radio" name="slide" id="slide02">
					<input type="radio" name="slide" id="slide03">
					<ul class="slidelist" style="width: 1500px;">
						<li class="slideitem">
							<a>
								<label for="slide03" class="left"></label>
								<!-- <div class = "text">
									<h3>희상이네</h3>
									<p>희상이네 꽃집입니다...</p>
								</div> -->
								<img src="img/slide1logo.png">
								<label for="slide02" class="right"></label>
							</a>
						</li>
						<li class="slideitem">
							<a>
								<label for="slide01" class="left"></label>
								<!-- <div class = "text">
									<h3>마음을 전달하세요</h3>
									<p>이것은 19세기 영국에서 시작된...</p>
								</div> -->
								<img src="img/slide2logo.png">
								<label for="slide03" class="right"></label>
							</a>
						</li>
						<li class="slideitem">
							<a>
								<label for="slide02" class="left"></label>
								<!-- <div class = "text">
									<h3>희상이네</h3>
									<p>희상이네 꽃집입니다...</p>
								</div> -->
								<img src="img/slide3logo.png">
								<label for="slide01" class="right"></label>
							</a>
						</li>
					</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 슬라이드 끝 -->
        
    <!-- Footer Section Begin -->
	<footer class="footer" style="margin-top: 0px;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="footer__copyright">
						<div class="footer__copyright__text">
							<p>Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | 희상이네 
								<i class="fa fa-heart" aria-hidden="true"></i> by 
								<a href="https://colorlib.com" target="_blank">정희상 강누리 김승영 김영재 최유나</a>
							</p>
						</div>
						<div class="footer__copyright__links">
							<a href="#">지능형반 2차</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.nicescroll.min.js"></script>
    <script src="js/jquery.barfiller.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>