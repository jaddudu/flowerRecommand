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
                                    <h1>�αٵα� ù ��������! <br>�� ���� ���� ����� �� �Ƿ����� ���̴µ�...?!</h1>
                                </div>
                                <div class="answer">
                                    <button class="btn1" name="E">13�ð����� �����Ѱ� �Ⱦ�! <br>������� �̾߱⸦ �ϸ� ����</button>
                                    <button class=" btn2" name="I">�� ���ൿ�� ������ �ð��� �������Ѵ�</button>
                                </div>
                            </div>
                        </div>

                        <div class=" outer">
                            <div class="inner">
                                <div id="question">
                                    <h1>���ڱ� ���� �Ϸ��� �ް�! ����</h1>
                                </div>
                                <div class="answer">
                                    <button class="btn1" name="E">ģ���鿡�� �����ؼ� ����� ��´�</button>
                                    <button class=" btn2" name="I">������ ǫ ����</button>
                                </div>
                            </div>
                        </div>


                        <div class=" outer">

                            <div class="inner">
                                <div id="question">
                                    <h1>ȸ�� ���Ƹ��� �������Ѵ�</h1>
                                </div>
                                <div class="answer">
                                    <button class="btn1" name="E">��굿�Ƹ�! <br>��� �� ������ ���ô�
                                        ���ɸ� ũ~</button>
                                    <button class="btn2" name="I">�������Ƹ�! <br>������ �����
                                        �⸣��~</button>
                                </div>
                            </div>
                        </div>

                        <div class="outer">

                            <div class="inner">
                                <div id="question">
                                    <h1>���� ���� �Ĵ��� �ʹ� ���־ ģ������ ��õ�� ���ְ������ <br>����</h1>
                                </div>
                                <div class="answer">
                                    <button class="btn1" name="S">��������� ���������� ���ϰ� �˷��ش�</button>
                                    <button class="btn2" name="N">�Ĵ� ��ó ū �ǹ��� ��ġ�� �˷��ش�<br>(XX��
                                        X��Ʈ ��)</button>
                                </div>
                            </div>
                        </div>

                        <div class="outer">
                            <div class="inner">
                                <div id="question">
                                    <h1>ù ����Ͽ� ���ο��� ���� �����޾Ҵ� <br>ģ������ �ڶ��ϰ� ������?!</h1>
                                </div>
                                <div class="answer">
                                    <button class="btn1" name="S">�� ���� ��� ��̲� �����޾Ҿ�<br>��⵵ ��û
                                        ���ұ� ������
                                        �����?!</button>
                                    <button class="btn2" name="N">�� ���� �� �޾Ҵ�</button>
                                </div>
                            </div>
                        </div>

                        <div class="outer">
                            <div class="inner">
                                <div id="question">
                                    <h1>���࿡�� �������� �߾��� ����� �߾��� �����ϱ� ���� ���̾�� �������� �Ѵ�</h1>
                                </div>
                                <div class="answer">
                                    <button class="btn1" name="S">��ü������ � ���̾����� ���´�!</button>
                                    <button class="btn2" name="N">���� �׶� ���� �������ַ� ���´�</button>
                                </div>
                            </div>
                        </div>


                        <div class="outer">
                            <div class="inner">
                                <div id="question">
                                    <h1>������ ������! ģ������ �ʴ��ߴµ� ���� ���׸���� ��︮�� �ʴ´ٰ� �Ѵ�. �װ� ��� ����</h1>
                                </div>
                                <div class="answer">
                                    <button class="btn1" name="T">�� ������ ��������?</button>
                                    <button class="btn2" name="F">�ٽú��� �׷��� ���⵵..?</button>
                                </div>
                            </div>
                        </div>

                        <div class="outer">
                            <div class="inner">
                                <div id="question">
                                    <h1>���� �춧 ����</h1>
                                </div>
                                <div class="answer">
                                    <button class="btn1" name="T">���� �����ϴ� ��, ������ ������ <br>�����Ѵ�.
                                        '���� ��
                                        ������;;'</button>
                                    <button class="btn2" name="F">���࿡ ���� �����Ѵ�. <br>'������ ī�������
                                        ��������~'</button>
                                </div>
                            </div>
                        </div>

                        <div class="outer">
                            <div class="inner">
                                <div id="question">
                                    <h1>���� �����Ҷ� ����</h1>
                                </div>
                                <div class="answer">
                                    <button class="btn1" name="T">�����Ѵٴ� �ѵ��� ������ ���</button>
                                    <button class="btn2" name="F">�޴� ����� ���׼��� ��� �����Ѵ�</button>
                                </div>
                            </div>
                        </div>

                        <div class="outer">
                            <div class="inner">
                                <div id="question">
                                    <h1>�������� ������ ���̴ּ�</h1>
                                </div>
                                <div class="answer">
                                    <button class="btn1" name="J">�ڷ����, �м�, ����Ʈ�ۼ��� �������� <br>�� ��
                                        ��ȹ�� ������ ������
                                        �ϼ��Ѵ�.</button>
                                    <button class="btn2" name="P">������ ���� 5�ð��� ���Ƽ� �ϴ°�
                                        ����!</button>
                                </div>
                            </div>
                        </div>

                        <div class="outer">
                            <div class="inner">
                                <div id="question">
                                    <h1>���� ����� �ִ�</h1>
                                </div>
                                <div class="answer">
                                    <button class="btn1" name="J">��� ������ ������ ���� ���� <br>�̸�
                                        �ڵ��Ѵ�</button>
                                    <button class="btn2" name="P">���� ��� ���Ͽ� ��� �Դ´�</button>
                                </div>
                            </div>
                        </div>

                        <div class="outer">
                            <div class="inner">
                                <div id="question">
                                    <h1>������ ����� �ױ� ���� å�� �����Ϸ� �Դ�</h1>
                                </div>
                                <div class="answer">
                                    <button class="btn1" name="J">����Ʈ ���� �߿��� �ϳ��� �����ϰų� <br>��հ�
                                        �о��� �۰��� ������
                                        �����Ѵ�</button>
                                    <button class="btn2" name="P">ǥ���� �������̴� å�� �����ϰų� <br>�����۰���
                                        å�� �����Ѵ�</button>
                                </div>
                            </div>
                        </div>

                        <form action="FbtiInsertCon.do" method="POST">
                            <div class="outer">
                                <div class="inner">
                                    <div id="question">
                                        <h1 style="font-size: 41px;">���߹��� �� ��BTI?</h1>
                                    </div>
                                    <div class="answer">
                                        <input type="hidden" id="fbti" name="fbti">
                                        <input type="submit" value="�м��غ���!" id="submit">
                                        <!-- �м��غ��� ��ư ũ������ �ؾ��մϴ�! -->
                                    </div>
                                </div>
                            </div>
                        </form>

                    </div>
                </div>
            </body>

            <script>
                let tra = 0;    //������Ʈ �����ϱ�
                let i = 0; // e�� i ����
                let j = 0; // s�� n ����
                let f = 0; // f�� t ����
                let p = 0; // j�� p ����
                let cnt = 0; // ���ư� Ƚ�� ����;
                

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