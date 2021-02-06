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
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap"
	rel="stylesheet">

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
<style type="text/css">

#fbti{
position: absolute;
    left: 190%;
}

.spad {
	padding-top: 100px;
	padding-bottom: 50px;
}


.seung101 {
	position : relative;
	width : 1200px;
	height : 100%;
	display: flex;
}
.pic> img {
	width: 350px;
	height: 350px;
}
.footer__copyright {
    margin-top: 140px;
}

</style>
</head>

<body>
<%
	String[] fbtiResult = (String[])session.getAttribute("fbtiResult"); 
	String worstImg = (String)session.getAttribute("worstImg");
	String bestImg = (String)session.getAttribute("bestImg");
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
						<h2 id="fbti">FBTI</h2>
						<div class="breadcrumb__option"></div>
					</div>
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
                                <li><a href="myinfo.jsp">내정보</a>
                                
                            </ul>
                            <%}else{ %>
                            <ul>
                                <li><a href="./home.jsp">Home</a></li>
                                <li><a href="./about.jsp">About</a></li>
                                <li class="active"><a href="#">Flower</a>
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
					
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb End -->

	<div class="spad"></div>
	
	<!-- Listing Details Section Begin -->
	<section class="listing-details spad">
		<div class="container">
			<div class="row">
				
				<div class = "friendBox">
					<div class ="type">
					<p><b>환상의 조합</b></p>
					</div>
					
					<div class = "pic">
					<img src = "img/누끼/<%=bestImg%>" class="friends">
					</div>
					
					<div class ="name">
					<p><b><%=fbtiResult[2] %></b></p>
					</div>
					
				</div>	
				
				
				<div class = "mymbti">
					<div class ="type">
					<h4><b>내 타입 : <%=fbtiResult[0] %></b></h4>
					</div>
					
					<div class = "pic">
					<img src="img/누끼/<%=fbtiResult[4]%>" class="friends">
					</div>
					
					<div class ="name2">
					<h4><b><%=fbtiResult[1] %></b></h4>
					</div>
					
				</div>	
				
			
				<div class = "friendBox">
					<div class ="type">
					<p><b>환장의 조합</b></p>
					</div>
					
					<div class = "pic">
					<img src="img/누끼/<%=worstImg %>" class="friends">
					</div>
					
					<div class ="name">
					<p><b><%=fbtiResult[3] %></b></p>
					</div>
					
				</div>	
			
				<%-- <div class = "seung101" align = "center">
					<div class="friendsBox">
						<img src="img/누끼/<%=bestImg%>" class="friends"> <br>
						<p><b>환상조합 : <%=fbtiResult[3] %></b></p>
					</div>
					<div class="mymbti">
						<h3><b>내타입 : <%=fbtiResult[0] %></b></h3>
						<img src="img/누끼/<%=fbtiResult[4]%>" id="myMbtiImg">
						<p><b><%=fbtiResult[1] %></b></p>
					</div>
					<div class="friendsBox">
						<img src="img/누끼/<%=worstImg %>" class="friends"> <br>
						<p><b>환장조합 : <%=fbtiResult[2] %></b></p>
					</div>
				
				</div --%>
				
			</div>
		</div>
	</section>
	<!-- Listing Details Section End -->



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
							<a href="#">Terms</a> <a href="#">Privacy Policy</a> <a href="#">Cookie
								Policy</a>
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