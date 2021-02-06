<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%String[] fbtiResult = (String[])session.getAttribute("fbtiResult"); %>
<h1>내타입 : <%=fbtiResult[0] %></h1>
<h1>내 성격 묘사 : <%=fbtiResult[1] %></h1>
<h1>나랑 상극 : <%=fbtiResult[2] %></h1>
<h1>나랑 잘 맞아 : <%=fbtiResult[3] %></h1>
<h1>사진 : <%=fbtiResult[4] %></h1>
</body>
</html>