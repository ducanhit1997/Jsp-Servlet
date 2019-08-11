<%@page import="Dao.TacGiaDao"%>
<%@page import="Model.NhaXuatBan"%>
<%@page import="Dao.NhaXuatBanDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Model.MyConnectDB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="Model.SanPham"%>
<%@page import="Dao.SanPhamDao"%>
<%@page import="java.util.ArrayList"%>

<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>Mua truyện tranh online</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Fashion Club Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css"
	media="all" />
<!--// css -->
<!-- font -->
<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro"
	rel="stylesheet">
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<!-- //font -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
        <script src="https://code.jquery.com/jquery-3.2.1.js" ></script>
        <!-- JS tạo nút bấm di chuyển trang start -->
        <script src="http://1892.yn.lt/blogger/JQuery/Pagging/js/jquery.twbsPagination.js" type="text/javascript"></script>

	
        <style>
            ///** CSS căn id pagination ra giữa màn hình **///
            #pagination {
                display: flex;
                display: -webkit-flex; /* Safari 8 */
                flex-wrap: wrap;
                -webkit-flex-wrap: wrap; /* Safari 8 */
                justify-content: center;
                -webkit-justify-content: center;
            }
        </style>
</head>
<%@include file="menu.jsp"%>
<%
	
	
	if(session.getAttribute("giohang")==null){
		session.setAttribute("giohang", new ArrayList<>());
	}
	
%>
<body>
	<div class="content">
		<div class="container">
			<div class="col-md-4 w3ls_dresses_grid_left">
				<div class="w3ls_dresses_grid_left_grid">
					<h3>TRUYỆN THEO GIÁ</h3>
					<div class="w3ls_dresses_grid_left_grid_sub">
						<div class="ecommerce_dres-type">
							<ul>
								<li><a href="<%=request.getContextPath()%>/loctheogia?gia1=100&gia2=400">Từ 100 ngàn đến 400 ngàn</a></li>
								<li><a href="<%=request.getContextPath()%>/loctheogia?gia1=400&gia2=700">Từ 400 ngàn đến 700 ngàn</a></li>
								<li><a href="<%=request.getContextPath()%>/loctheogia?gia1=400&gia2=1000">Từ 700 ngàn đến 1 triệu</a></li>
								<li><a href="<%=request.getContextPath()%>/loctheogia?gia">Trên 1 triệu</a></li>
							</ul>
						</div>
					</div> 
				</div> 
				<div class="w3ls_dresses_grid_left_grid">
					<h3>TRUYỆN THEO NXB</h3>
					<div class="w3ls_dresses_grid_left_grid_sub">
						<div class="ecommerce_color">
							<ul>
								<%ArrayList<NhaXuatBan> l = NhaXuatBanDao.getList();%>
								<%
									for(int i=0;i<l.size();i++) {
								%>
								<li><a
									href="<%=request.getContextPath()%>/loc?nxb=<%=l.get(i).getMaNhaXuatBan()%>">NXB
										<%=l.get(i).getTenNhaXuatBan()%></a></li>
								<%
									}
								%>
								<li><a href="<%=request.getContextPath()%>/loc?all=0">Xem
										tất cả</a></li>
							</ul>
						</div>
					</div>
				</div>


			</div>
		<%-- 	<%
				ArrayList<SanPham> list = null;
				if (session.getAttribute("list") == null) {
					list = SanPhamDao.getList();
				} else {
					list = (ArrayList<SanPham>)session.getAttribute("list");
				}
			%>
 --%>			<div class="col-md-8 col-sm-8 women-dresses">
				<div class="women-set1">
					<%-- <%
						for (int i = 0; i < list.size(); i++) {
					%> --%> 
					<div class="col-md-4 women-grids wp1 animated wow slideInUp"
						data-wow-delay=".5s">
						<div class="contentPage">
						aaaaaaaaaaaaaaa
						<%-- <a
							href="<%=request.getContextPath()%>/XuLyXemSanPham?maTruyen=<%out.print(list.get(i).getMaTruyen());%>"><div
								class="product-img">
								<img src="<%=list.get(i).getHinhAnh()%>" alt="" />
								<div >
									<center>
										<p style="color: red;">Nhà xuất bản: <%=NhaXuatBanDao.name(list.get(i).getMaNhaSanXuat()) %></p>
										<p style="color: red;">Giá:<%out.print(list.get(i).getGia());%> đ</p>
										<p>
											<a
												href="<%=request.getContextPath()%>/XuLyXemSanPham?maTruyen=<%out.print(list.get(i).getMaTruyen());%>"><button
													class="btn btn-success">Chi tiết</button></a>
											<a
												href="<%=request.getContextPath()%>/XuLyMua?masp=<%out.print(list.get(i).getMaTruyen());%>"><button
													class="btn btn-success">Mua ngay</button></a>			
										</p>
									</center>
								</div>
							</div></a> <i class="fa fa-star yellow-star" aria-hidden="true"></i> <i
							class="fa fa-star yellow-star" aria-hidden="true"></i> <i
							class="fa fa-star yellow-star" aria-hidden="true"></i> <i
							class="fa fa-star yellow-star" aria-hidden="true"></i> <i
							class="fa fa-star gray-star" aria-hidden="true"></i>
						<h4>
							<%
								out.print(list.get(i).getTenTruyen());
							%>
						</h4> --%>
						<%-- //<h5><%=rs.getString(5)%>VND</h5>  --%>
						</div>
						<div class="contentPage">
					bbbbbbbbbbbbbbbbbbbbbbbbbbbbb
						<%-- <a
							href="<%=request.getContextPath()%>/XuLyXemSanPham?maTruyen=<%out.print(list.get(i).getMaTruyen());%>"><div
								class="product-img">
								<img src="<%=list.get(i).getHinhAnh()%>" alt="" />
								<div >
									<center>
										<p style="color: red;">Nhà xuất bản: <%=NhaXuatBanDao.name(list.get(i).getMaNhaSanXuat()) %></p>
										<p style="color: red;">Giá:<%out.print(list.get(i).getGia());%> đ</p>
										<p>
											<a
												href="<%=request.getContextPath()%>/XuLyXemSanPham?maTruyen=<%out.print(list.get(i).getMaTruyen());%>"><button
													class="btn btn-success">Chi tiết</button></a>
											<a
												href="<%=request.getContextPath()%>/XuLyMua?masp=<%out.print(list.get(i).getMaTruyen());%>"><button
													class="btn btn-success">Mua ngay</button></a>			
										</p>
									</center>
								</div>
							</div></a> <i class="fa fa-star yellow-star" aria-hidden="true"></i> <i
							class="fa fa-star yellow-star" aria-hidden="true"></i> <i
							class="fa fa-star yellow-star" aria-hidden="true"></i> <i
							class="fa fa-star yellow-star" aria-hidden="true"></i> <i
							class="fa fa-star gray-star" aria-hidden="true"></i>
						<h4>
							<%
								out.print(list.get(i).getTenTruyen());
							%>
						</h4> --%>
						<%-- //<h5><%=rs.getString(5)%>VND</h5>  --%>
						</div>
					</div>
					<%-- <%
						}
					%> --%>
				</div>
			</div>
				
			<div class="row">
				<div class="col-md-6"></div>
				<div class="col-md-6">
					<div class="product-pagination text-center">
						<nav>
							<ul id="pagination">ssssssss</ul>
								
						
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- newsletter -->
	<div class="newsletter">
		<div class="container">
			<div class="col-md-6 w3agile_newsletter_left">
				<h2>Newsletter</h2>
				<p>Excepteur sint occaecat cupidatat non proident, sunt.</p>
			</div>
			<div class="col-md-6 w3agile_newsletter_right">
				<form action="#" method="post">
					<input type="email" name="Email" value="Email"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Email';}" required="">
					<input type="submit" value="Subscribe" />
				</form>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //newsletter -->
	<div class="footer">
		<div class="container">
			<div class="col-md-3 footer-grids fgd1">
				<a href="index.html"><img src="images/logo2.png" alt=" " />
				<h3>
						FASHION<span>CLUB</span>
					</h3></a>
				<ul>
					<li>1234k Avenue, 4th block,</li>
					<li>New York City.</li>
					<li><a href="mailto:info@example.com">info@example.com</a></li>
					<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
					<a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
					<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
					<a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
				</ul>
			</div>
			<div class="col-md-3 footer-grids fgd2">
				<h4>Information</h4>
				<ul>
					<li><a href="contact.html">Contact Us</a></li>
					<li><a href="icons.html">Web Icons</a></li>
					<li><a href="typography.html">Typography</a></li>
					<li><a href="faq.html">FAQ's</a></li>
				</ul>
			</div>
			<div class="col-md-3 footer-grids fgd3">
				<h4>Shop</h4>
				<ul>
					<li><a href="jewellery.html">Jewellery</a></li>
					<li><a href="cosmetics.html">Cosmetics</a></li>
					<li><a href="Shoes.html">Shoes</a></li>
					<li><a href="deos.html">Deos</a></li>
				</ul>
			</div>
			<div class="col-md-3 footer-grids fgd4">
				<h4>My Account</h4>
				<ul>

					<li><a href="login.html">Login</a></li>
					<li><a href="register.html">Register</a></li>
					<li><a href="recommended.html">Recommended </a></li>
					<li><a href="payment.html">Payments</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
			<p class="copy-right">
				© 2016 Fashion Club . All rights reserved | Design by <a
					href="http://w3layouts.com"> W3layouts.</a>
			</p>
		</div>
	</div>
	<!-- cart-js -->
	<script src="js/minicart.js"></script>
	<script>
		w3ls1.render();

		w3ls1.cart.on('w3sb1_checkout', function(evt) {
			var items, len, i;

			if (this.subtotal() > 0) {
				items = this.items();

				for (i = 0, len = items.length; i < len; i++) {
					items[i].set('shipping', 0);
					items[i].set('shipping2', 0);
				}
			}
		});
	</script>
	<script type="text/javascript">
            $(function () {
                var pageSize = 6; // Hiển thị 6 sản phẩm trên 1 trang
                showPage = function (page) {
                    $(".contentPage").hide();
                    $(".contentPage").each(function (n) {
                        if (n >= pageSize * (page - 1) && n < pageSize * page)
                            $(this).show();
                    });
                }
                showPage(1);
                ///** Cần truyền giá trị vào đây **///
                var totalRows = 40; // Tổng số sản phẩm hiển thị
                var btnPage = 5; // Số nút bấm hiển thị di chuyển trang
                var iTotalPages = Math.ceil(totalRows / pageSize);
				
                var obj = $('#pagination').twbsPagination({
                    totalPages: iTotalPages,
                    visiblePages: btnPage,
                    onPageClick: function (event, page) {
                        console.info(page);
                        showPage(page);
                    }
                });
                console.info(obj.data());
            });
        </script>
	<!-- //cart-js -->
</body>
</html>
