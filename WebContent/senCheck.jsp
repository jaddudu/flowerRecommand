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
<h1>��Ÿ�� : <%=fbtiResult[0] %></h1>
<h1>�� ���� ���� : <%=fbtiResult[1] %></h1>
<h1>���� ��� : <%=fbtiResult[2] %></h1>
<h1>���� �� �¾� : <%=fbtiResult[3] %></h1>
<h1>���� : <%=fbtiResult[4] %></h1>
</body>
</html>