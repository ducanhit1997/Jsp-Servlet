<%@page import="Model.SoLuongSanPhamCuaNhaXuatBan"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.SanPham"%>
<%@page import="Dao.SanPhamDao"%>
<%@page import="java.util.Map"%>
<%@page import="Dao.HoaDonDao"%>
<%@page import="Model.HoaDon"%>
<%@page import="Dao.NhaXuatBanDao"%>
<%@page import="Dao.ThongKeDao"%>

<%@page import="Model.NhaXuatBan"%>
<%@page import="Model.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
<!-- <script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->

<title>Thống kê</title>

<!-- Bootstrap -->
<link href="../vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link href="../vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
<!-- iCheck -->
<link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
<!-- Datatables -->
<link
	href="../vendors/datatables.net-bs/css/dataTables.bootstrap.min.css"
	rel="stylesheet">
<link
	href="../vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css"
	rel="stylesheet">
<link
	href="../vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css"
	rel="stylesheet">
<link
	href="../vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css"
	rel="stylesheet">
<link
	href="../vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css"
	rel="stylesheet">

<!-- Custom Theme Style -->
<link href="../build/css/custom.min.css" rel="stylesheet">
<script src="../jquery/jquery.min.js"></script>
<script src="../jquery/ajaxupload.js"></script>
<!------ Include the above in your HEAD tag ---------->



</head>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<% ArrayList<SoLuongSanPhamCuaNhaXuatBan> ds = ThongKeDao.SLSPNXB(); %>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          <%for(int i = 0; i < ds.size(); i++){
            	
            	
            	
            	out.print("['"+ds.get(i).getTenNhaXuatBan()+"',"+ds.get(i).getSoLuong()+"],");
            	
            }%>
        ]);

        var options = {
          title: 'Số lượng sản phẩm theo nhà xuất bản',
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
      }
    </script>
<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="index.html" class="site_title"><i class="fa fa-paw"></i>
							<span>Group 22</span></a>
					</div>

					<div class="clearfix"></div>

					<!-- menu profile quick info -->
					<div class="profile clearfix">
						<div class="profile_pic">
							<img src="images/img.jpg" alt="..."
								class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<span>Xin chào,</span>
							<h2>Admin</h2>
						</div>
					</div>
					<!-- /menu profile quick info -->

					<br />

					<!-- sidebar menu -->
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">
						<div class="menu_section">
							<h3>General</h3>
							<ul class="nav side-menu">
								<li><a><i class="fa fa-home"></i> Quản lý <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="quanlikhachhang.jsp">Quản lý khách hàng</a></li>
										<li><a href="quanlinhaxuatban.jsp">Quản lý nhà xuất
												bản</a></li>
										<li><a href="quanlitacgia.jsp">Quản lý tác giả</a></li>
										<li><a href="quanlisanpham.jsp">Quản lý sản phẩm</a></li>

									</ul></li>
								<li><a><i class="fa fa-edit"></i>Thống kê<span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="thongkesoluong.jsp">Thống kê số lượng</a></li>
										<li><a href="thongketacgia.jsp">Thống kê tác giả</a></li>
									</ul></li>

							</ul>
						</div>

					</div>
					<!-- /sidebar menu -->

					<!-- /menu footer buttons -->
					<div class="sidebar-footer hidden-small">
						<a data-toggle="tooltip" data-placement="top" title="Settings">
							<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
							<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
							class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Logout"
							href="login.html"> <span class="glyphicon glyphicon-off"
							aria-hidden="true"></span>
						</a>
					</div>
					<!-- /menu footer buttons -->
				</div>
			</div>

			<!-- top navigation -->
			<div class="top_nav">
				<div class="nav_menu">
					<nav>
						<div class="nav toggle">
							<a id="menu_toggle"><i class="fa fa-bars"></i></a>
						</div>

						<ul class="nav navbar-nav navbar-right">
							<li class=""><a href="javascript:;"
								class="user-profile dropdown-toggle" data-toggle="dropdown"
								aria-expanded="false"> <img src="images/img.jpg" alt="">John
									Doe <span class=" fa fa-angle-down"></span>
							</a>
								<ul class="dropdown-menu dropdown-usermenu pull-right">
									<li><a href="javascript:;"> Profile</a></li>
									<li><a href="javascript:;"> <span
											class="badge bg-red pull-right">50%</span> <span>Settings</span>
									</a></li>
									<li><a href="javascript:;">Help</a></li>
									<li><a href="login.html"><i
											class="fa fa-sign-out pull-right"></i> Log Out</a></li>
								</ul></li>

							<li role="presentation" class="dropdown"><a
								href="javascript:;" class="dropdown-toggle info-number"
								data-toggle="dropdown" aria-expanded="false"> <i
									class="fa fa-envelope-o"></i> <span class="badge bg-green">6</span>
							</a>
								<ul id="menu1" class="dropdown-menu list-unstyled msg_list"
									role="menu">
									<li><a> <span class="image"><img
												src="images/img.jpg" alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>
									<li><a> <span class="image"><img
												src="images/img.jpg" alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>
									<li><a> <span class="image"><img
												src="images/img.jpg" alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>
									<li><a> <span class="image"><img
												src="images/img.jpg" alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>
									<li>
										<div class="text-center">
											<a> <strong>See All Alerts</strong> <i
												class="fa fa-angle-right"></i>
											</a>
										</div>
									</li>
								</ul></li>
						</ul>
					</nav>
				</div>
			</div>
			<!-- /top navigation -->

			<!-- page content -->
			
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">
						<div class="title_left">
							<h3>Thống kê theo số lượng</h3>
						</div>


					</div>

					<div class="clearfix"></div>
					<!-- Modal -->

					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									 <div id="piechart_3d" style="width: 900px; height: 500px;margin-left: 240px;"></div>
								</div>
								<div class="x_content">
									
									






								</div>
							</div>
						</div>
						<!-- /page content -->

						<!-- footer content -->
						<footer>
							<div class="pull-right">
								Gentelella - Bootstrap Admin Template by <a
									href="https://colorlib.com">Colorlib</a>
							</div>
							<div class="clearfix"></div>
						</footer>
						<!-- /footer content -->
					</div>
				</div>

				<!-- jQuery -->
				<script src="../vendors/jquery/dist/jquery.min.js">
					
				</script>
				<!-- Bootstrap -->
				<script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
				<!-- FastClick -->
				<script src="../vendors/fastclick/lib/fastclick.js"></script>
				<!-- NProgress -->
				<script src="../vendors/nprogress/nprogress.js"></script>
				<!-- iCheck -->
				<script src="../vendors/iCheck/icheck.min.js"></script>
				<!-- Datatables -->
				<script src="../vendors/datatables.net/js/jquery.dataTables.min.js"></script>
				<script
					src="../vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
				<script
					src="../vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
				<script
					src="../vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
				<script
					src="../vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
				<script
					src="../vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
				<script
					src="../vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
				<script
					src="../vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
				<script
					src="../vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
				<script
					src="../vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
				<script
					src="../vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
				<script
					src="../vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
				<script src="../vendors/jszip/dist/jszip.min.js"></script>
				<script src="../vendors/pdfmake/build/pdfmake.min.js"></script>
				<script src="../vendors/pdfmake/build/vfs_fonts.js"></script>

				<!-- Custom Theme Scripts -->
				<script src="../build/js/custom.min.js"></script>
				<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</body>
</html>