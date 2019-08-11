<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="Model.NhaXuatBan"%>
<%@page import="Dao.NhaXuatBanDao"%>
<%@page import="Dao.SanPhamDao"%>
<%@page import="Model.SanPham"%>
<%@page import="Model.Admin"%>
<%@page import="Dao.KhachHangDao"%>
<%@page import="Model.KhachHang"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/from.css">
<link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
  <script src="js/jquery-1.10.2.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<title>Thêm sản phẩm</title>
<script>
$(document).ready(function() {
    $('#myForm').bind({
    	
        'submit': function() {
            if ($('#tentruyen').val()=='') {

                $('#error_tentruyen').html('Bạn chưa nhập tên truyện');
                return false;
            }
            if ($('#socuon').val()=='') {
                $('#error_socuon').html('Bạn chưa nhập số cuốn');
                return false;
            }
            if ($('#hinhanh').val()=='') {
                $('#error_hinhanh').html('Bạn chưa chọn ảnh');
                return false;
            }
            if ($('#gia').val()=='') {
                $('#error_gia').html('Bạn chưa nhập giá');
                return false;
            }
            
            if ($('#manhaxuatban').val()=='Chọn nhà xuất bản') {
                $('#error_manhaxuatban').html('Bạn chưa chọn nhà xuất bản');
                return false;
            }
            return true;
        },
        'keydown': function() {
          
            if ($('#tentruyen').val().length > 0) {
                $('#error_tentruyen').html('');
            }
            if ($('#socuon').val().length > 0) {
                $('#error_socuon').html('');
            }
            if ($('#hinhanh').val().length > 0) {
                $('#error_hinhanh').html('');
            }
            if ($('#gia').val().length > 0) {
                $('#error_gia').html('');
            }
            if ($('#manhaxuatban').val().length > 0) {
                $('#error_manhaxuatban').html('');
            }
            
           
            
           
         
        }
    });
    $('#manhaxuatban').on('change',function(){
    	var manhaxuatban =  $('#manhaxuatban').val();
    	var matacgia = $('#matacgia');
    	matacgia[0].options.length =0; // xóa hết
    	matacgia.append('<option>Đang load...</option>');
		
    	$.ajax({
    		url:'<%=application.getContextPath()%>/Ajax?manxb='+manhaxuatban,
    		type:'get',
    		success:function(data){ // data chính là danh sách hãng sản xuất
    			matacgia[0].options.length =0; // xóa lần nữa cụ thể là Đang tải dữ liệu
    			var ds = JSON.parse(data);
    			 ds.forEach(function(value){ // value chính là 1 phần tử của danh sách
    				var option = document.createElement('option');
    				option.value = value.maTacGia;
    				option.innerHTML = value.tenTacGia;
    				matacgia.append(option);
    			});
    		},
    		error:function(err){
    			
    		}
    		
    		
    	});
    	
    	
    });
});

</script>
</head>
<body>
<%
	ArrayList<KhachHang> list = KhachHangDao.getList();
%>
				<div class="container">
										<form class="form-horizontal"
											action="<%=request.getContextPath()%>/SanPhamController"
											method="post" id="myForm">
											<div style="display: none">
												<input type="text" class="form-control" id="action"
													name="action" value="them" onkeydown="">
											</div>

											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd">Tên
													sản phẩm:</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="tentruyen"
														placeholder="Nhập tên truyện" name="tentruyen">
													<p id="error_tentruyen" style="color: red;"></p>
												</div>
											</div>
											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd">Số
													cuốn:</label>
												<div class="col-sm-4">
													<input type="number" class="form-control" id="socuon"
														placeholder="Nhập số cuốn" name="socuon">
													<p id="error_socuon" style="color: red;"></p>
												</div>
											</div>
											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd">Hình
													ảnh</label>
												<div class="col-sm-4">
													<input type="file" class="form-control" id="hinhanh"
														placeholder="Chọn hình ảnh" name="hinhanh">
													<p id="error_hinhanh" style="color: red;"></p>
												</div>
											</div>
											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd">Giá:</label>
												<div class="col-sm-4">
													<input type="number" class="form-control" id="gia"
														placeholder="Nhập giá" name="gia">
													<p id="error_gia" style="color: red;"></p>
												</div>
											</div>
											<%
												ArrayList<NhaXuatBan> l = NhaXuatBanDao.getList();
											%>
											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd">Nhà
													xuất bản</label>
												<div class="col-sm-4">
													<select class="form-control" id="manhaxuatban"
														name="manhaxuatban">
														<option>Chọn nhà xuất bản</option>
														<%
															for (int i = 0; i < l.size(); i++) {
														%>
														<option value="<%=l.get(i).getMaNhaXuatBan()%>"><%=l.get(i).getTenNhaXuatBan()%>
														</option>

														<%
															}
														%>
													</select>
													<p id="error_manhaxuatban" style="color: red;"></p>
												</div>
											</div>
											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd">Tác giả:</label>
												<div class="col-sm-4">
													<select class="form-control" id="matacgia"
														name="matacgia">

														<option>Chọn tác giả</option>


													</select>
													<p id="error_matacgia" style="color: red;"></p>
												</div>
											</div>
											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd"></label>
												<div class="col-sm-4">
													<button type="submit" class="btn btn-success">
														<span class="glyphicon glyphicon-plus"></span> Thêm
													</button>

												</div>
											</div>


										</form>
									</div>

</body>
 <script src="build/js/custom.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</html>