<%@page import="com.model.SentenceDAO"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.FlowerDTO"%>
<%@page import="com.model.FlowerDAO"%>
<%@page import="java.util.ArrayList"%>
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
    <style type="text/css">
    .site-btn{
    margin-top: 20px;
    }
    .header{
		background-color: wheat;
	}
	.breadcrumb__text{
	position: absolute;
    left: 190%;
	}
	.hee01 {
	width : 300px;
	height : 300px;
}.seung99 {
width: 1500px;
font-size: 25px;
font-weight: 600;
 }
 #contain{
    margin-left: 290px; 
 }
 .span{
 height: 7%;
 }
    </style>
    
    </script>
</head>

<body>
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
                        <h2>Search</h2>
                        <div class="breadcrumb__option">
                        </div>
                    </div>
                        <a href="./index.html"><img src="img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
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

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-area set-bg" data-setbg="img/search.png">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

 <!-- Blog Details Section Begin -->
 
 <%
  String rs = request.getParameter("rs");
  MemberDTO dto_ses = (MemberDTO) session.getAttribute("dto");
  String id = dto_ses.getId();
  //String rs = "1,2,3,4,5,";
  String[] id_list = rs.split("/");
  FlowerDAO dao = new FlowerDAO();
  FlowerDTO dto = null;

  for (int i = 0; i < id_list.length; i++) {
	  System.out.print(id_list[i]);
  }
  
  dao.insert_flower1(id, id_list[0]);
  dao.insert_flower2(id, id_list[1]);
  dao.insert_flower3(id, id_list[2]);
  dao.insert_flower4(id, id_list[3]);
  dao.insert_flower5(id, id_list[4]);

  String sentence = id_list[5];
  SentenceDAO dao_sen = new SentenceDAO();
  dao_sen.insert(id, sentence);
  %>
 
<div class="span"></div>
    <section class="blog-details spad">
    <div class="blog__details__comment__form" align="center">
      <form action="order.jsp">
        <div class="container" align="center" id="contain">

                    <div class="blog__details__text" align="center">
                       <!--  <div class="blog__details__video set-bg" data-setbg="img/blog/details/blog-video-bg.jpg">
                            <a href="https://www.youtube.com/watch?v=8EJ3zbKTWQ8" class="play-btn video-popup"><i class="fa fa-play"></i></a>
                        </div> -->
                      
                        <div class = "seung99" align="center">
                           
                            <%
	                            for(int i=0; i<5; i++) {
	                            	
	                               String flower_id = id_list[i];
	                               dto = dao.select(flower_id);
	                               
                      		%>
                    	<div>
                              <img src = img/누끼/<%=dto.getFlower_img() %> style="width : 300px;height : 300px;">
                              <br><%=dto.getFlower_name() %>
                              <br><input type = "checkbox" name = "select" value = <%=flower_id %>>
                           </div>
                              <%} %>
                        </div>     
                    </div>  
               </div>                        

          <br>
          <button type="submit" class="site-btn" style="margin-left: 35px;">주문하기</button>
          </form>
       </div>
    </section>
    
    <div class="span"></div>
    
     <!-- Footer Section Begin -->
	<footer class="footer">
		<div class="container" style=" margin-left: 500px;">
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