<%@page import="com.model.FlowerDTO"%>
<%@page import="com.model.FlowerDAO"%>
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
<link rel="stylesheet" href="css/style.css" type="text/css">
<style type="text/css">
.header{
height: 120px;
background-color: wheat;
}
.spad{
padding-bottom: 0px;
}
.orderImg{
display: inline-block;
    width: 300px;
    height: 400px;}

.container{
margin-left: 320px;
}
.inputJuso{
	
	border-style: none;
	border-bottom : 2px solid wheat;
}
.locationth{

	
	padding-left : 3px;

}
.location-btn {
	font-size: 14px;
	color: #ffffff;
	font-weight: 700;
	text-transform: uppercase;
	display: inline-block;
	/* padding: 13px 30px 12px; */
	background: #9A493C;
	border: none;
	width : 70px;
	height : 25px;
	/* border-radius: 6px 6px 6px 6px; */
}
.location-table{
	border-radius: 6px 6px 6px 6px;
	/* border : "1px"; */
	width : 500px; 
	border-left: 6px solid wheat;
  	margin : 20px 10px;
}
.locationp {
	padding-right: 190px;
	font-size: 22px;
}

</style>
<script>
 
//opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
//document.domain = "abc.go.kr";

function goPopup(){
       // 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
   var pop = window.open("jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes");
  
       // 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
   //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes");
}
/** API 서비스 제공항목 확대 (2017.02) **/
function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn
                                               , detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo){
       // 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
       document.form.roadAddrPart1.value = roadAddrPart1;
       document.form.roadAddrPart2.value = roadAddrPart2;
       document.form.addrDetail.value = addrDetail;
       document.form.zipNo.value = zipNo;
}

 
 </script>
 
<title>주소 입력 샘플</title>
 
 
 
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
					<div class="hsLogo"
						style="position: absolute; width: 40%; top: 15%;">
						<img src="img/logo1.png">
					</div>
					<div class="header__logo">
						<div class="breadcrumb__text">
							<h2 style="position: absolute; left: 190%; color: #323232">Search</h2>
							<!-- <div class="breadcrumb__option"></div> -->
						</div>
					</div>
				</div>
				<div class="col-lg-9 col-md-9">
					<div class="header__nav">
						<nav class="header__menu mobile-menu">
							<ul>
								<li><a href="./home.jsp">Home</a></li>
								<li><a href="./about.jsp">About</a></li>
								<li class="active"><a href="#">Flower</a>
									<ul class="dropdown">
										<li><a href="./index.jsp">Search</a></li>
										<li><a href="./fbti.jsp">FBTI</a></li>
									</ul></li>
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
<!--         <div class="breadcrumb-area set-bg">
                <div class="container">
                        <div class="row">
                                <div class="col-lg-12 text-center">
                                       
                                </div>
                        </div>
                </div>
        </div> -->
        <!-- Breadcrumb End -->
 	<div class="spad"></div>
        <%
        	MemberDTO dto_ses = (MemberDTO) session.getAttribute("dto");
        		String id = dto_ses.getId();
        		FlowerDAO dao = new FlowerDAO();
        		FlowerDTO dto = null;
        		String[] list = request.getParameterValues("select");
        		StringBuilder flower_set = new StringBuilder();
        		for (int i = 0; i < list.length; i++){
        			flower_set.append(list[i]);
        		}
        		String flower_selectid = new String(flower_set);
        		String flower_selectname = "";

        		/*      String flowername = null;
        		        StringBuilder flower_set = new StringBuilder(list[0]);
        		        StringBuilder flower_nameset = null; */
        %>
 
 
        <!-- Listing Details Section Begin -->
        <section class="blog-details spad" style="margin-left: 155px;">
                <div class="container" align="center">
                        <!-- <form action="Search_Order"> -->
                                <div class="seung99" align="center">
                                        <p style="font-size : 30px;"><%=id %>님이 선택하신 꽃은...
                                        </p>
                                        <%
                                                for (int i = 0; i < list.length; i++) {
 
                                                String flower_id = list[i];
                                                dto = dao.select(flower_id);
                                                flower_selectname += dto.getFlower_name();
                                               
                                        %>
                                        <div class="orderImg">
                                                <br> <img src=img/누끼/<%=dto.getFlower_img()%>>
                                                <p style="font-size: 20px;"><%=dto.getFlower_name()%></p>
                                        </div>
                                        <%
                                                }
                                        System.out.println("selectid "+flower_selectid);
                                        System.out.println("selectname "+flower_selectname);
                                        %>
                                </div>
                                <br>
                                <div align="center">
                                        <!-- <button type="submit" class="site-btn">Submit Now</button>
                        </form> -->
 
                        <form action="Search_Order" name="form" id="form" method="post">
                        <p class = "locationp">마음을 전달할 주소를 적어주세요</p>
                                <table class = "location-table">
                                        <colgroup>
                                                <col style="width: 20%">
                                                <col>
                                        </colgroup>
                                        <tbody>
                                                <tr>
                                                        <th class = "locationth">우편번호</th>
                                                        <td><input type="hidden" id="confmKey" name="confmKey"
                                                                value=""> <input type="text" id="zipNo" name="zipNo"
                                                                readonly style="width: 100px" class="inputJuso"> <input type="button"
                                                                value="주소검색" onclick = "goPopup()"  class="location-btn"></td>
                                                </tr>
                                                <tr>
                                                        <th class = "locationth">도로명주소</th>
                                                        <td><input type="text" id="roadAddrPart1" style="width: 320.5px" name = "addr_road" class="inputJuso"></td>
                                                </tr>
                                                <tr>
                                                        <th class = "locationth">상세주소</th>
                                                        <td><input type="text" id="addrDetail" style="width: 40%"
                                                                value="" name = "addr_detail1" class="inputJuso">
                                                                <input type="text" id="roadAddrPart2"
                                                                style="width: 40%" value="" name = "addr_detail2" class="inputJuso"></td>
                                                </tr>
                                        </tbody>
                                </table>
                                <input type="hidden" value="<%=id %>" name = "orderId">
                                <input type="hidden" value="<%=flower_selectid %>" name = "flowerId">
                                <input type="hidden" value="<%=flower_selectname %>" name = "flowerName">
                                <button type="submit" class="site-btn" style="margin-top: 30px;">주문하기</button>
                        </form>
                </div>
<%--            </div>
                <br>
                <%      for (int i = 0; i < list.length; i++) {
                               
 
                               
                                if (i == 0) {
                                        FlowerDTO flower_name = dao.select(list[i]);
                                        flowername = flower_name.getFlower_name();
                                        flower_nameset = new StringBuilder(flowername);
                                }else {
                                flower_set.append(list[i]);
                                FlowerDTO flower_name = dao.select(list[i]);
                                flowername = flower_name.getFlower_name();
                                flower_nameset.append(flowername);
                                }
                        }
                        String set = new String(flower_set);
                        String address = request.getParameter("location");
                        String nameset = new String(flower_nameset);
                        int cnt = dao.order_list(id, set, nameset, address);
                        // 주문시에 입력한 주소창에 입력해서 넣기
                        if (cnt > 0) {
                                System.out.println("입력성공!");
                        }else {
                                System.out.println("입력실패!");
                        }
                %>
                <br>
                </div> --%>
        </section>
        <!-- Listing Details Section End -->
 
 
 
        <!-- Footer Section Begin -->
        <footer class="footer" style="margin-top: 45px;">
                <div class="container" style="margin-left: 470px;">
                        <div class="row">
                                <div class="col-lg-12">
                                        <div class="footer__copyright">
                                                <div class="footer__copyright__text">
                                                        <p>
                                                                Copyright ©
                                                                <script>
                                                                        document.write(new Date().getFullYear());
                                                                </script>
                                                                All rights reserved | 희상이네 <i class="fa fa-heart"
                                                                        aria-hidden="true"></i> by <a href="https://colorlib.com"
                                                                        target="_blank">희상이와 친구들</a>
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
        <script src="js/sli.js"></script>
</body>
 
</html>