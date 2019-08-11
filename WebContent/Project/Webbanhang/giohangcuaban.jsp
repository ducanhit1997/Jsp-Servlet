<%@page import="Model.SanPhamTrongGioHang"%>
<%@page import="Model.KhachHang"%>
<%@page import="Dao.GioHangDao"%>
<%@page import="Model.SanPham"%>
<%@page import="java.util.ArrayList"%>
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
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Giỏ hàng của bạn</title>
</head>

<body>
	<%@include file="menu.jsp"%>

	

	
	<div class="container">
		<div class="col-sm-6">
			<br><br>
			<a href="index.jsp"><button type="button" class="btn btn-primary">Tiếp
					tục mua hàng</button></a>
			<br><br>
		</div>


	</div>


	<table class="table table-hover">
		<thead>

			<tr>
				<th>Stt</th>
				<th>Tên sản phẩm</th>
				<th>Hình ảnh</th>
				<th>Số lượng</th>
				<th>Đơn giá</th>
				<th>Thao tác</th>
			</tr>
		</thead>
		<tbody>
		
			<%
				ArrayList<SanPhamTrongGioHang> giohang = GioHangDao.getGioHang();
				session.setAttribute("giohang", giohang);
				int count = 0;
				for (int i = 0; i < giohang.size(); i++) {
					count++;
					
			%>
			<tr>
				<td><%=count%></td>
				<td><%=giohang.get(i).getSanPham().getTenTruyen()%></td>
				<td><img src="<%=giohang.get(i).getSanPham().getHinhAnh()%>"
					class="img-responsive" alt="Image"
					style="width: 50px !important; height: 50px !important"></td>
				<td><%=giohang.get(i).getSoLuong()%></td>
				
				<td><%=giohang.get(i).getSanPham().getGia()%>đ
					
					</td>
				<%-- <td id="tonggiasl<%=giohang.get(i).getMaTruyen()%>"><%=giohang.get(i).getGia()%></td> --%>
				<td><a class="btn btn-danger xoa" data-toggle="modal"
					data-target="#Xoa<%=giohang.get(i).getSanPham().getMaTruyen()%>"
					title="Xóa sản phẩm này"><i class="fa fa-times"
						aria-hidden="true"></i></a></td>
			</tr>

			<%} %>
		</tbody>
	</table>
	<% 	int sum=0;
	for (int i = 0; i < giohang.size(); i++) {
		sum+=giohang.get(i).getSanPham().getGia()*giohang.get(i).getSoLuong();
		session.setAttribute("sum", sum);
		
	%>

	<div id="Xoa<%=giohang.get(i).getSanPham().getMaTruyen()%>"
		class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Thông báo</h4>
				</div>
				<div class="modal-body" style="text-align: center;">
					Bạn có chắc chắn xóa truyện
					<%
					out.print(giohang.get(i).getSanPham().getTenTruyen());
				%>
					khỏi giỏ hàng?
				</div>
				<div class="modal-footer">
					<a
						href="<%=request.getContextPath()%>/GioHangController?action=xoa&matruyen=<%out.print(giohang.get(i).getSanPham().getMaTruyen());%>">
						<button type="button" class="btn btn-danger">Có</button>
					</a>
					<button type="button" class="btn btn-default" data-dismiss="modal">Hủy</button>
				</div>
			</div>
		</div>
	</div>
	<%} %>
	<p style="margin-left: 960px;">Tổng đơn hàng: <%out.print(sum); %></p>
	
			
	
	
	<% if(giohang.size()!=0){ %>
	
		<div style="margin-left: 960px;">
		<a href="dathang.jsp"><button type="button" class="btn btn-primary">Đặt hàng</button></a>
		</div>
	<%} %> 
		
</body>
</html>