<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
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

<style type="text/css">
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
						<h2 style="position: absolute;left: 190%;">About</h2>
						<!-- <div class="breadcrumb__option"></div> -->
					</div>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                              <%if(dto!=null) {%>
                            <ul>
                                <li ><a href="./home.jsp">Home</a></li>
                                <li class="active"><a href="./about.jsp">About</a></li>
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
                                <li><a href="./home.jsp">Home</a></li>
                                <li class="active"><a href="./about.jsp">About</a></li>
                                <li><a href="#">Flower</a>
                                    <ul class="dropdown">
                                        <li><a href="./index.jsp">Search</a></li>
                                        <li><a href="./fbti.jsp">FBTI</a></li>
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
                        <h2>About</h2>
                        <div class="breadcrumb__option">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->


    <!-- About Section Begin -->
    <section class="about spad">
        <div class="container">
            <div class="row">
            <div class = "text">
            	<div class ="title">
            	<h2>'희상이네' 와 함께 마음을 전달하세요</h2>
            	</div>
            	<div class = "content">
            	<h5>희상이네는 모든 사람들의 마음을 꽃과 향기를 통해 전달하고 소통하는 '마음전달자'입니다.</h5>
                <p>문구를 통하여 소비자가 원하는 꽃들을 제공하여 소비자의 구매결정을 돕고, 소비자 지역 화원과의 연결을 통해
					합리적인 꽃 가격과 지역 화원 성장을 이루는것이 희상이네 사이트의 본질입니다.<br>
					이러한 온라인 꽃 쇼핑의 첫걸음이 되기 위해 희상이네는 모든 핵심역량을 고객만족에 집중하고 있습니다.
            	</div>
            </div>
            </div>
        </div>
    </section>
    <!-- About Section End -->

    <!-- About Video Begin -->
    <div class="about-video">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="about__video set-bg" data-setbg="img/moviecap.PNG" style = "border: solid white 4px;" >
                        <a href="img/2차 프로젝트 시연영상.mp4" class="play-btn video-popup"><i class="fa fa-play"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About Video End -->



    <!-- Footer Section Begin -->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="footer__copyright">
						<div class="footer__copyright__text">
							<p>
								Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | 희상이네 <i
									class="fa fa-heart" aria-hidden="true"></i> by <a
									href="https://colorlib.com" target="_blank">정희상 강누리 김승영 김영재 최유나</a>
							</p>
						</div>
						<div class="footer__copyright__links">
							<!-- <a href="#">Terms</a> <a href="#">Privacy Policy</a> -->
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