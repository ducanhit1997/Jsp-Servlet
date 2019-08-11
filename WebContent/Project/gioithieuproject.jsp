<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Giới thiệu project</title>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="css/style.css">


</head>
<%@include file="../menu.jsp"%>


<div class="navigation" style="margin-left: 200px;">
	<ul class="breadcrumb">
		<li><a href="../index.jsp">Home</a></li>
		<li>Project</li>
	</ul>
</div>

<body style="padding-top: 70px; height: 100%;">
	<div class="container" style="margin-left: 180px;">

		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#home">Trang
					front-end</a></li>
			<li><a data-toggle="tab" href="#menu1">Trang back-end</a></li>
			<li><a data-toggle="tab" href="#menu2">Implements</a></li>

		</ul>

		<div class="tab-content">
			<div id="home" class="tab-pane fade in active">
				<div class="row">
					<div class="col-md-6" style="padding-top: 20px;">
						<img src="IMG/ok.jpg" width="500px" height="250px">
					</div>
					<div class="col-md-6">

						<h3>Chức năng</h3>
						<p>1. Đăng nhập, đăng ký, đăng xuất, quên mật khẩu, mã hóa mật
							khẩu, gửi mail.</p>
						<p>2. Lọc sản phẩm theo nhà xuất bản, lọc theo giá</p>
						<p>3. Áp dụng captcha vào trang đăng nhập.</p>
						<p>4. Áp dụng đa ngôn ngữ ở trang đăng nhập.</p>
						<p>5. Chức năng giỏ hàng, gửi đơn hàng qua mail</p>
						<p>6. Chức năng phân trang</p>
						<p>7. Áp dụng chatbot vào trang web để hỗ trợ khách hàng</p>
						<p>8. Bình luận facebook</p>
						<center>
							<a href="Webbanhang/index.jsp" target="_blank"><button
									type="button" class="btn btn-info" class="btn btn-info btn-lg">Xem
									trang</button></a>
						</center>
					</div>
				</div>
			</div>
			<div id="menu1" class="tab-pane fade">
				<div class="row">
					<div class="col-md-6" style="padding-top: 20px;">
						<img src="IMG/ok.jpg" width="500px" height="250px">
					</div>
					<div class="col-md-6">

						<h3>Chức năng</h3>
						<p>1. Quản lý nhà xuất bản</p>
						<p>2. Quản lý khách hàng</p>
						<p>3. Quản lý sản phẩm</p>
						<p>3. Quản lý tác giả</p>
						<p>4. Thống kê</p>
						<p>5. Áp dụng công nghệ ajax ở mục thêm sản phẩm</p>
						<p>6. Áp dụng upload hình ảnh ở mục thêm sản phẩm</p>

						<center>
							<a href="Admin/production/dangnhap.jsp" target="_blank"><button
									type="button" class="btn btn-info" class="btn btn-info btn-lg">Xem
									trang</button></a>
						</center>
					</div>
				</div>
			</div>
			<div id="menu2" class="tab-pane fade">
				<div class="row">
					<div class="col-md-6" style="padding-top: 20px;">
						<img src="IMG/ok.jpg" width="500px" height="250px">
					</div>
					<div class="col-md-6">

						<h3>Web bán truyện tranh =))</h3>
						
						
					</div>
				</div>
			</div>
			<div id="menu3" class="tab-pane fade">
				<h3>Menu 3</h3>
				<p>Eaque ipsa quae ab illo inventore veritatis et quasi
					architecto beatae vitae dicta sunt explicabo.</p>
			</div>
		</div>
	</div>

</body>
</html>
<%@include file="../footer.jsp"%>
