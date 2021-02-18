<%@page import="com.model.MemberDTO" %>
    <%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <link rel="stylesheet" href="./css/slide.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <style type="text/css">
            @font-face {
	font-family: "nanum";
	src : url("../fonts/NANUMMYEONGJO-YETHANGUL.TTF");
}
body{
font-family: "nanum";
background-color: wheat;
}
button,#submit {
	font-family: "nanum";
	font-weight: bolder;

}
#submit{
	    font-size: 35px;
    padding-left: 25px;
    padding-right: 25px;
}
.btn1, .btn2 {
	border-radius: 15px 15px 15px 15px;
}
 #submit{
 border-radius: 10px 10px 10px 10px;
 }

            </style>
        </head>
        <%MemberDTO dto=(MemberDTO)session.getAttribute("dto"); %>

            <body style="margin: 0">



                <div style="overflow: hidden;">
                    <div class="container">
                        <div class="outer">
                            <div class="inner">
                                <div id="question">
                                    <h1>두근두근 첫 유럽여행! <br>내 옆에 앉은 사람도 내 또래같아 보이는데...?!</h1>
                                </div>
                                <div class="answer">
                                    <button class="btn1" name="E">13시간동안 지루한건 싫어! <br>옆사람과 이야기를 하며 간다</button>
                                    <button class=" btn2" name="I">긴 비행동안 나만의 시간을 재정비한다</button>
                                </div>
                            </div>
                        </div>

                        <div class=" outer">
                            <div class="inner">
                                <div id="question">
                                    <h1>갑자기 생긴 하루의 휴가! 나는</h1>
                                </div>
                                <div class="answer">
                                    <button class="btn1" name="E">친구들에게 연락해서 약속을 잡는다</button>
                                    <button class=" btn2" name="I">집에서 푹 쉰다</button>
                                </div>
                            </div>
                        </div>


                        <div class=" outer">

                            <div class="inner">
                                <div id="question">
                                    <h1>회사 동아리에 들어가려고한다</h1>
                                </div>
                                <div class="answer">
                                    <button class="btn1" name="E">등산동아리! <br>등산 후 사람들과 마시는
                                        막걸리 크~</button>
                                    <button class="btn2" name="I">독서동아리! <br>마음의 양식을
                                        기르자~</button>
                                </div>
                            </div>
                        </div>

                        <div class="outer">

                            <div class="inner">
                                <div id="question">
                                    <h1>어제 갔던 식당이 너무 맛있어서 친구에게 추천을 해주고싶은데 <br>나는</h1>
                                </div>
                                <div class="answer">
                                    <button class="btn1" name="S">출발지에서 도착지까지 상세하게 알려준다</button>
                                    <button class="btn2" name="N">식당 근처 큰 건물의 위치를 알려준다<br>(XX동
                                        X마트 옆)</button>
                                </div>
                            </div>
                        </div>

                        <div class="outer">
                            <div class="inner">
                                <div id="question">
                                    <h1>첫 기념일에 애인에게 꽃을 선물받았다 <br>친구에게 자랑하고 싶은데?!</h1>
                                </div>
                                <div class="answer">
                                    <button class="btn1" name="S">나 어제 노란 장미꽃 선물받았어<br>향기도 엄청
                                        좋았구 편지도
                                        써줬다?!</button>
                                    <button class="btn2" name="N">나 어제 꽃 받았다</button>
                                </div>
                            </div>
                        </div>

                        <div class="outer">
                            <div class="inner">
                                <div id="question">
                                    <h1>여행에서 잊지못할 추억이 생겼다 추억을 간직하기 위해 다이어리에 적으려고 한다</h1>
                                </div>
                                <div class="answer">
                                    <button class="btn1" name="S">구체적으로 어떤 일이었는지 적는다!</button>
                                    <button class="btn2" name="N">내가 그때 느낀 감정위주로 적는다</button>
                                </div>
                            </div>
                        </div>


                        <div class="outer">
                            <div class="inner">
                                <div id="question">
                                    <h1>오늘은 집들이! 친구들을 초대했는데 꽃이 인테리어랑 어울리지 않는다고 한다. 그걸 듣고 나는</h1>
                                </div>
                                <div class="answer">
                                    <button class="btn1" name="T">내 눈에는 괜찮은데?</button>
                                    <button class="btn2" name="F">다시보니 그런것 같기도..?</button>
                                </div>
                            </div>
                        </div>

                        <div class="outer">
                            <div class="inner">
                                <div id="question">
                                    <h1>옷을 살때 나는</h1>
                                </div>
                                <div class="answer">
                                    <button class="btn1" name="T">내가 좋아하는 색, 재질을 따져서 <br>구매한다.
                                        '재질 걍
                                        미쳤음;;'</button>
                                    <button class="btn2" name="F">유행에 따라 구매한다. <br>'요즘은 카고바지가
                                        유행이지~'</button>
                                </div>
                            </div>
                        </div>

                        <div class="outer">
                            <div class="inner">
                                <div id="question">
                                    <h1>꽃을 선물할때 나는</h1>
                                </div>
                                <div class="answer">
                                    <button class="btn1" name="T">선물한다는 뿌듯한 감정이 든다</button>
                                    <button class="btn2" name="F">받는 사람의 리액션이 어떨지 예상한다</button>
                                </div>
                            </div>
                        </div>

                        <div class="outer">
                            <div class="inner">
                                <div id="question">
                                    <h1>교수님이 과제를 내주셨다</h1>
                                </div>
                                <div class="answer">
                                    <button class="btn1" name="J">자료수집, 분석, 레포트작성은 언제까지 <br>할 지
                                        계획을 세워서 과제를
                                        완성한다.</button>
                                    <button class="btn2" name="P">과제는 제출 5시간전 몰아서 하는게
                                        제맛!</button>
                                </div>
                            </div>
                        </div>

                        <div class="outer">
                            <div class="inner">
                                <div id="question">
                                    <h1>내일 약속이 있다</h1>
                                </div>
                                <div class="answer">
                                    <button class="btn1" name="J">약속 전날에 다음날 입을 옷을 <br>미리
                                        코디한다</button>
                                    <button class="btn2" name="P">옷은 약속 당일에 골라서 입는다</button>
                                </div>
                            </div>
                        </div>

                        <div class="outer">
                            <div class="inner">
                                <div id="question">
                                    <h1>마음의 양식을 쌓기 위해 책을 구매하러 왔다</h1>
                                </div>
                                <div class="answer">
                                    <button class="btn1" name="J">베스트 셀러 중에서 하나를 구매하거나 <br>재밌게
                                        읽었던 작가의 신작을
                                        구매한다</button>
                                    <button class="btn2" name="P">표지가 예뻐보이는 책을 구매하거나 <br>신인작가의
                                        책을 구매한다</button>
                                </div>
                            </div>
                        </div>

                        <form action="FbtiInsertCon.do" method="POST">
                            <div class="outer">
                                <div class="inner">
                                    <div id="question">
                                        <h1 style="font-size: 41px;">뭐야뭐야 내 꽃BTI?</h1>
                                    </div>
                                    <div class="answer">
                                        <input type="hidden" id="fbti" name="fbti">
                                        <input type="submit" value="분석해보기!" id="submit">
                                        <!-- 분석해보기 버튼 크기조절 해야합니당! -->
                                    </div>
                                </div>
                            </div>
                        </form>

                    </div>
                </div>
            </body>

            <script>
                let tra = 0;    //뷰포인트 조절하기
                let i = 0; // e랑 i 구별
                let j = 0; // s랑 n 구별
                let f = 0; // f랑 t 구별
                let p = 0; // j랑 p 구별
                let cnt = 0; // 돌아간 횟수 구별;
                

                let result1 = null;
                let result2 = null;
                let result3 = null;
                let result4 = null;
                let total = null;

                // $('.btn1').getAttribute('name');

                
                $('.btn1').on('click', function () {
                    tra = tra - 100;
                    document.querySelector('.container').style.transform = 'translate(' + tra + 'vw)';
                    if (cnt < 3) {
                        i++;
                    } else if (cnt < 6) {

                        j++;
                    } else if (cnt < 9) {

                        f++;
                    } else if (cnt < 20) {
                        p++;
                    }
                    cnt++;


                    if (cnt > 11) {
                        if (i > 0) {
                            result1 = "e";
                        } else {
                            result1 = "i";
                        }

                        if (j > 0) {
                            result2 = "s";
                        } else {
                            result2 = "n";
                        }

                        if (f > 0) {
                            result3 = "t";
                        } else {
                            result3 = "f";
                        }

                        if (p > 0) {
                            result4 = "j";
                        } else {
                            result4 = "p";
                        }

                        total = result1 + result2 + result3 + result4;
                        /* alert(total); */

                    }
                    /* document.getElementById('fbti').innerText = total; */
                    document.getElementById('fbti').value = total;
                    /* $('#fbti').val(total); */

                })

                $('.btn2').on('click', function () {
                    tra = tra - 100;
                    document.querySelector('.container').style.transform = 'translate(' + tra + 'vw)';
                    if (cnt < 3) {
                        i--;
                    } else if (cnt < 6) {

                        j--;
                    } else if (cnt < 9) {

                        f--;
                    } else if (cnt < 20) {

                        p--;
                    }
                    // alert(i)
                    cnt++;



                    if (cnt > 11) {
                        if (i > 0) {
                            result1 = "e";
                        } else {
                            result1 = "i";
                        }

                        if (j > 0) {
                            result2 = "s";
                        } else {
                            result2 = "n";
                        }

                        if (f > 0) {
                            result3 = "t";
                        } else {
                            result3 = "f";
                        }

                        if (p > 0) {
                            result4 = "j";
                        } else {
                            result4 = "p";
                        }

                        total = result1 + result2 + result3 + result4;
                       /*  alert(total); */
                    }
                    document.getElementById('fbti').value = total;
                    /* $('#fbti').val(total); */

                })




            </script>

        </html>