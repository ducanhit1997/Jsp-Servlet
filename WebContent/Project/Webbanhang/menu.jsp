<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="Model.KhachHang"%>
<%@page import="Dao.SanPhamDao"%>
<%@page import="Model.SanPham"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css"
	media="all" />
<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro"
	rel="stylesheet">
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<!-- //font -->
<%@page import="Model.KhachHang"%>
<%@page import="Dao.KhachHangDao"%>
<%@page import="java.util.ArrayList"%>
<title>Insert title here</title>

</head>
<body>
	<div class="header-top-w3layouts">
		<div class="container">
			<div class="col-md-6 logo-w3">
				<a href="index.jsp"><img src="images/logo2.png" alt=" " />
					<h1>
						Groupp<span>22</span>
					</h1></a>
			</div>




			<div class="col-md-6 phone-w3l">
				<ul>
					<%
						KhachHang kh = (KhachHang) session.getAttribute("khachHang");
						if (kh != null) {
					%>
					<p>
						Xin chào: <%=kh.getTenDangNhap()%></p>
					<p>
						<a href="../../xulydangxuat">Đăng xuất</a>
					</p>
					<%
						} else {
					%>
					<a href="" data-toggle="modal" data-target="#myModal">Đăng nhập</a>
					<%
						}
					%>

					<div class="modal fade" id="myModal" role="dialog">
						<div class="modal-dialog">

							<!-- Modal content-->
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">Mời bạn chọn ngôn ngữ</h4>
								</div>
								<div class="modal-body">
									<center>
										<a href="<%=request.getContextPath()%>/DaNgonNgu?lang=English""><button type="button" class="btn btn-success">Tiếng Anh</button></a>
										<a href="<%=request.getContextPath()%>/DaNgonNgu?lang=Vietnamese""><button type="button" class="btn btn-success">Tiếng Việt</button></a>
									</center>

								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Đóng</button>
								</div>
							</div>

						</div>
					</div>

				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="header-bottom-w3ls">
		<div class="container">
			<div class="col-md-7 navigation-agileits">
				<nav class="navbar navbar-default">
				<div class="navbar-header nav_2">
					<button type="button"
						class="navbar-toggle collapsed navbar-toggle1"
						data-toggle="collapse" data-target="#bs-megadropdown-tabs">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
					<ul class="nav navbar-nav ">
						<li><a href="index.jsp" class="hyper "><span>Home</span></a></li>
						

					</ul>
				</div>
				</nav>
			</div>
			<script>
				$(document).ready(
						function() {
							$(".dropdown").hover(
									function() {
										$('.dropdown-menu', this).stop(true,
												true).slideDown("fast");
										$(this).toggleClass('open');
									},
									function() {
										$('.dropdown-menu', this).stop(true,
												true).slideUp("fast");
										$(this).toggleClass('open');
									});
						});
			</script>
			<div class="col-md-4 search-agileinfo">
				<form action="#" method="post">
					<input type="search" name="Search"
						placeholder="Search for a Product..." required="">
					<button type="submit" class="btn btn-default search"
						aria-label="Left Align">
						<i class="fa fa-search" aria-hidden="true"> </i>
					</button>
				</form>
			</div>
			<div class="col-md-1 cart-wthree">
				<div class="cart">
					
						<a href="giohangcuaban.jsp">
							
								<i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
							
						</a>
						
					</form>
				</div>
			</div>

		</div>
	</div>

</body>