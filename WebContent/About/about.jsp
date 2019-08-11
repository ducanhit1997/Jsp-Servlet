<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<title>About</title>
<style type="text/css">
.wrapper {
	font-family: 'Open Sans', sans-serif;
	font-weight: 400;
	color: black;
	font-size: 15px;
}

.button {
	background-color: #33c4b6;
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}

.package {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	width: 320px;
	height: 400px;
	border: 3px solid #c0c0c0;
	border-radius: 7px;
	display: inline-block;
	padding: 24px;
	text-align: center;
	float: left;
	-webkit-transition: margin-top 0.5s linear;
	transition: margin-top 0.5s linear;
	position: relative;
	margin-right: 11px;
}

.tan {
	margin-left: 120px;
	margin-top: 20px;
	margin-bottom: 20px
}

.anh {
	margin-top: 20px;
}

.price {
	margin-top: 2px;
	font-weight: bold;
}

.price::after {
	font-weight: normal;
}

hr {
	background-color: #dedede;
	border: none;
	height: 1px;
}

.trial {
	font-size: 1.5rem !important;
	font-weight: 600 !important;
	padding: 2px 21px 2px 21px !important;
	color: #33c4b6;
	border: 1px solid #e4e4e4 !important;
	display: inline-block !important;
	border-radius: 15px !important;
	background-color: white !important;
	position: relative !important;
	bottom: -20px !important;
}

ul {
	list-style: none;
	padding: 0;
	text-align: left;
	margin-top: 9px;
}

.cv {
	text-align: left;
	padding-top: 5px;
}

li {
	margin-bottom: 15px;
}

.checkIcon {
	font-family: "FontAwesome";
	content: "\f00c";
}

.congviec li::before {
	font-family: "FontAwesome";
	content: "\f00c";
	font-size: 1.3rem;
	color: #33c4b6;
	margin-right: 3px;
}

.brilliant {
	border-color: #33c4b6;
}
/* Triangle */
.brilliant::before {
	width: 0;
	height: 0;
	border-style: solid;
	border-width: 64px 64px 0 0;
	border-color: #3bc6b8 transparent transparent transparent;
	position: absolute;
	left: 0;
	top: 0;
	content: "";
}

.brilliant::after {
	font-family: "FontAwesome";
	content: "\f00c";
	color: white;
	position: absolute;
	left: 9px;
	top: 6px;
	text-shadow: 0 0 2px #37c5b6;
	font-size: 1.4rem;
}
</style>
</head>

<%@include file="../menu.jsp"%>
<div class="navigation" style="padding-top: 50px;">
	<ul class="breadcrumb">
		<li><a href="../index.jsp">Home</a></li>
		<li>About</li>
	</ul>
</div>
<body>
	<div class="row" style="padding-bottom: 20px; padding-top: 40px;">


		<div class='wrapper'>
			<div class="col-md-3">
				<div class='package'>
					<h3>Phan Đức Anh</h3>
					<div class='price'>Team leader</div>
					<div class='trial'>DH15DTB</div>
					<hr>

					<ul class="congviec">
						<li>Sinh nhật: 08/04/1997</li>
						<li>Quê quán: Quảng Nam</li>
						<li>SĐT: 0981878012</li>
						<li>15130008@st.hcmuaf.edu.vn</li>
						<li>Web cá nhân: <a href="https://phanducanh.azurewebsites.net" target="_blank"> Đi tới trang</a></li>

					</ul>
					<div>
						<a href="https://fb.com" target="_blank" class="btn btn-social-icon btn-facebook"> <span class="fa fa-facebook"></span></a> 
						<a href="https://www.youtube.com" class="btn btn-social-icon btn-google">
    					<span class="fa fa-google"></span></a>
					</div>
				</div>
			</div>

			<div class="col-md-3">

				<div class='package'>
					<h3>Huỳnh Trọng Tuấn</h3>
					<div class='price'>Member</div>
					<div class='trial'>DH16DTC</div>
					<hr>

					<ul class="congviec">
						<li>Sinh nhật: 21/10/1998</li>
						<li>Quê quán: Quảng Nam</li>
						<li>SĐT: 0981878012</li>
						<li>16130642@st.hcmuaf.edu.vn</li>
						<li>Web cá nhân: <a href="https://trongtuan.azurewebsites.net" target="_blank"> Đi tới trang</a></li>

					</ul>
					<div>
						<a href="https://fb.com" target="_blank" class="btn btn-social-icon btn-facebook"> <span class="fa fa-facebook"></span></a> 
						<a href="https://www.youtube.com" class="btn btn-social-icon btn-google">
    					<span class="fa fa-google"></span></a>


					</div>
				</div>
			</div>

			<div class="col-md-3">

				<div class='package'>
					<h3>Hà Thị Thanh Như</h3>
					<div class='price'>Member</div>
					<div class='trial'>DH16DTA</div>
					<hr>
					<ul class="congviec">
						<li>Sinh nhật: 27/05/1998</li>
						<li>Quê quán: Đồng Tháp</li>
						<li>SĐT: 0981878012</li>
						<li>16130505@st.hcmuaf.edu.vn</li>
						<li>Web cá nhân: <a href="https://hathithanhnhu98.azurewebsites.net" target="_blank"> Đi tới trang</a></li>
						

					</ul>
					<div>
						<a href="https://fb.com" target="_blank" class="btn btn-social-icon btn-facebook"> <span class="fa fa-facebook"></span></a> 
						<a href="https://www.youtube.com" class="btn btn-social-icon btn-google">
    					<span class="fa fa-google"></span></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class='package'>
					<h3>Trương Thị Thu Thảo</h3>
					<div class='price'>Member</div>
					<div class='trial'>DH16DTA</div>
					<hr>
					<ul class="congviec">
						<li>Sinh nhật: 01/01/1998</li>
						<li>Quê quán: Quảng Ngãi</li>
						<li>SĐT: 0981878012</li>
						<li>16130585@st.hcmuaf.edu.vn</li>
						<li>Web cá nhân: <a href="https://thaotruong.azurewebsites.net" target="_blank"> Đi tới trang</a></li>
						
					</ul>
					<div>
					<a href="https://fb.com" target="_blank" class="btn btn-social-icon btn-facebook"> <span class="fa fa-facebook"></span></a> 
						<a href="https://www.youtube.com" class="btn btn-social-icon btn-google">
    					<span class="fa fa-google"></span></a>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>

</html>
<%@include file="../footer.jsp"%>
