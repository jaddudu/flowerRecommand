<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
    <link rel="stylesheet" href="css/mbtiRes.css">
    <link rel="stylesheet" href="css/infoCss.css">
<style type="text/css">
.header{
		background-color: wheat;
	}
	.middle{
	width: 1200px;
    display: flex;
    left: 15%;
}
</style>
</head>

<body>

<%MemberDTO dto = (MemberDTO)session.getAttribute("dto"); %>

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
						<h2 style="position: absolute;left: 190%;">myinfo</h2>
						<!-- <div class="breadcrumb__option"></div> -->
						</div>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <li ><a href="./home.jsp">Home</a></li>
                                <li><a href="./about.html">About</a></li>
                                <li><a href="#">Flower</a>
                                    <ul class="dropdown">
                                        <li><a href="./index.jsp">Search</a></li>
                                        <li><a href="./fbti.jsp">FBTI</a></li>
                                    </ul>
                                </li>
                                <li class="active"><a href="myinfo.jsp">내정보</a>

                            </ul>
                        </nav>
                        <div class="header__menu__right">
                            <a href="LogoutServiceCon.do" class="primary-btn">로그아웃</a>
                        </div>
                    </div>
                </div>
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>
    <!-- Header Section End -->

    <div class="middle">
        <div class="menuMainholder">
            <menu>
                <div class="menu">
                    <ul>
                        <li><a href="#" style="text-decoration: none; color: black;">내정보 수정하기</a></li>
                        <li><a href="#" style="text-decoration: none; color: black;">주문목록</a></li>
                        <li onclick="ch1()" id="ch1">FBTI 결과</a></li>
                        <li onclick="ch2()">문구 검색 목록</a></li>
                    </ul>
                </div>
            </menu>
            <main>
                <div class="main">
                    <iframe frameborder="0" id="mainFrame"></iframe>
                </div>
            </main>
        </div>
    </div>

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
                                All rights reserved | 희상이네 <i class="fa fa-heart" aria-hidden="true"></i> by <a
                                    href="https://colorlib.com" target="_blank">정희상 강누리 김승영 김영재 최유나</a>
                            </p>
                        </div>
                        <div class="footer__copyright__links">
                            <a href="#">Terms</a> <a href="#">Privacy Policy</a> <a href="#">Cookie
                                Policy</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->
    <script>
        // document.getElementById('fbti').onclick(function () {
        //     document.getElementById('mainFrame').src = "http://localhost:8085/directing/fbtiCheck.jsp";
        // })
        function ch1() {
        	let ch1 = document.getElementById('ch1')
            ch1.style.color = '#9A493C';
        	ch1.style.borderBottom = '1px, solid, grey';
            document.getElementById('mainFrame').src = "FbtiSelectCon.do";
        }

    </script>




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