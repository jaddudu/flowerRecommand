<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <style>
    .header__menu ul li a {color: #ffffff !important;}
    .header{
    	background: none;
    }
    </style>
</head>

<body>
	<%MemberDTO dto = (MemberDTO)session.getAttribute("dto"); 
	String id = dto.getId();
	session.setAttribute("id", id);
	if(dto!=null){
		System.out.println("세션가져오기 성공!");
	}%>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="header__logo">
                        <a href="./index.html"><img src="img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                             <%if(dto!=null) {%>
                            <ul>
                                <li><a href="./home.jsp">Home</a></li>
                                <li><a href="./about.jsp">About</a></li>
                                <li class="active"><a href="#">Flower</a>
                                    <ul class="dropdown">
                                        <li><a href="./index.jsp">Search</a></li>
                                        <li><a href="./fbti.jsp">FBTI</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">내정보</a>
                                
                            </ul>
                             <%}else{ %>
                             <ul>
                                <li class="active"><a href="./home.jsp">Home</a></li>
                                <li><a href="./about.jsp">About</a></li>
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

    <!-- Hero Section Begin -->
    <section class="hero set-bg" data-setbg="img/search.jpg" style="height: 1041px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="hero__text">
                        <div class="section-title">
                            <h2>희상이네 입니다</h2>
                            <p>당신의 마음을 전달하세요</p>
                        </div>
                        <div class="hero__search__form">
                            <form action="http://localhost:9000/test">
                                <input type="text" placeholder="ex) 존경하는 아버지의 은퇴식입니다 " name="review">
                                
                                
                                <button type="submit">편지보내기</button>
                            </form>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->  
       

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