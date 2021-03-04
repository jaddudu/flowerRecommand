<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MbtiDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	img{
		width: 250px;
		height: 250px;
	}
	.num{
	    width: 50px;
    	font-size: 30px;
    	text-align: center;
    }
    .container{
    	display: flex;
    }
/*     .num1{
    	width: 40%;
    	height: 100%;
    } */
    .type{
    font-size: 25px;
    }
    
    body{ 
    -ms-overflow-style: none; 
    width: 900px;
    height: 600px;
    font-family: "nanum";
    } 
    body::-webkit-scrollbar{ display:none; }

@font-face {
	font-family: "nanum";
	src : url("../fonts/NANUMMYEONGJO-YETHANGUL.TTF");
}
td{
 font-family: "nanum";
}

</style>
</head>
<body  overflow-y: scroll ">
	<%ArrayList<MbtiDTO> mdto = (ArrayList<MbtiDTO>)session.getAttribute("Mdto"); %>
	<div class="container">
	
	<!-- 	<div class="num1"></div> -->
		<div class="num2">
			<table>
				<tr>
					<td class="num"></td>
					<td class="type">결과</td>
					<td class="type" >사진</td>
					<td class="type">날짜</td>
					<%for(int i = 0; i<mdto.size(); i++) {%>
				</tr>
				<tr>
					<td class="num"><%=i+1 %></td>
					<td class="type"><%=mdto.get(i).getMbti_result() %></td>
					<td><img src="img/nukki/<%=mdto.get(i).getImg() %>.png"></td>
					<td><%=mdto.get(i).getDate() %></td>
				</tr>
				<%} %>
		
			</table>
		</div>
 	
 	</div>
	<!-- <input type="submit" value="안녕">
<input type="text" value="안녕"> -->
</body>
</html>