<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String mahoadon = (String) session.getAttribute("mahoadon");
	
%>
<%if(mahoadon==null){ %>
		<jsp:forward page="index.jsp"></jsp:forward>
	<%} %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title></title>


</head>
<%@include file="menu.jsp"%>
<body>
	<br>
	<br>
	<div class="container" style="margin-left: 200px;">
		<h4>Bạn đã đặt hàng thành công, vào mail để kiểm tra</h4>
		
	</div>

</body>
</html>