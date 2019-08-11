<%@page import="Model.SanPhamTrongGioHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
    	KhachHang kh1 =(KhachHang) session.getAttribute("khachHang");
    %>
   
	
	<%if(kh1==null){ %>
		<jsp:forward page="dangnhap.jsp"></jsp:forward>
	<%} %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đặt hàng</title>
</head>
<body>
	<%@include file="menu.jsp"%>
						<br><br><div class="container">
							 <%
								KhachHang k = (KhachHang) session.getAttribute("khachHang");
								if (kh != null) {
							%> 
							<form class="form-horizontal"
								action="<%=request.getContextPath()%>/DatHangController"
								method="post" id="myForm">
								<!-- <div style="display: none">
									<input type="text" class="form-control" id="action"
										name="action" value="them" onkeydown="">
								</div> -->

								<div class="form-group">
									<label class="control-label col-sm-4" for="pwd">Tên
										khách hàng:</label>
									<div class="col-sm-4">
										<input type="text" class="form-control" id="tenkhachhang"
											placeholder="Nhập tên khách hàng" name="tenkhachhang"
											value="<%out.print(k.getTenDangNhap());%>" readonly="readonly">
										<p id="error_tenkhachhang" style="color: red;"></p>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-4" for="pwd">Email:</label>
									<div class="col-sm-4">
										<input type="text" class="form-control" id="email"
											placeholder="Nhập tên khách hàng" name="email"
											value="<%out.print(k.getEmail());%>" readonly="readonly">
										<p id="error_tenkhachhang" style="color: red;"></p>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-4" for="pwd">Số điện
										thoại:</label>
									<div class="col-sm-4">
										<input type="number" class="form-control" id="sdt"
											placeholder="Nhập số điện thoại" name="sdt" value="0981878012">
										<p id="error_sdt" style="color: red;"></p>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-4" for="pwd">Địa chỉ</label>
									<div class="col-sm-4">
										<input type="text" class="form-control" id="diachi"
											placeholder="Nhập số điện thoại" name="diachi" value="Cư Xá A Đại Học Nông Lâm">
										<p id="error_sdt" style="color: red;"></p>
        								<p id="error_tentruso" style="color: red;"></p>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-4" for="pwd"></label>
									<div class="col-sm-4">
										<button type="submit" class="btn btn-success">
											<span class="glyphicon glyphicon-plus"></span>Hoàn tất
										</button>

									</div>
								</div>


							</form>
							<%
								}
							%>
						</div>

</body>
</html>