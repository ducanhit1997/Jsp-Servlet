<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String maXacNhanDangKi = (String) session.getAttribute("maXacNhanDangki");
    	String email = (String) session.getAttribute("email");
    %>
    <% if(email==null&&maXacNhanDangKi==null){ %>
    <jsp:forward page="dangki.jsp"></jsp:forward>
   
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
<title>Đổi mật khẩu</title>
<script>
        $(document).ready(function() {
            
            $('#myForm').bind({
                'submit': function() {
                   /*  if (!validateEmail($('#tenkhachhang').val())) {
                        $('#error_tenkhachhang').html('Bạn chưa nhập tên khách hàng');
                        return false;
                    } */
                    if ($('#maxacnhan').val()=='') {
                        $('#error_maxacnhan').html('Bạn chưa nhập mã');
                        return false;
                    }
                    if ($('#maxacnhan').val()!=<%=maXacNhanDangKi%>) {
                        $('#error_maxacnhan').html('Bạn nhập sai mã');
                        return false;
                    }
                   
                   
												
												return true;
											},
											'keydown' : function() {
												if ($('#maxacnhan').val().length > 0) {
													$('#error_maxacnhan')
															.html('');
												}
												if ($('#maxacnhan').val()==<%=maXacNhanDangKi%>) {
													$('#error_maxacnhan')
															.html('');
												}
												
											}
										});
					});
</script>

</head>
<%@include file="menu.jsp"%>
<body>
	<br><br>
	<div class="container" style="margin-left: 200px;">
										<form class="form-horizontal"
											action="<%=request.getContextPath()%>/XuliXacNhanDangKi?maXacNhanOld=<%=maXacNhanDangKi %>&email=<%=email %>"
											method="post" id="myForm">
											

											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd"> Nhập mã xác nhận từ mail</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="maxacnhan"
														placeholder="Nhập mã xác nhận" name="maXacNhanNew">
													<p id="error_maxacnhan" style="color: red;"></p>
												</div>
											</div>
											<div class="form-group">
												<label class="control-label col-sm-4" for="pwd"></label>
												<div class="col-sm-4">
													<button type="submit" class="btn btn-success">
														<span class="glyphicon glyphicon-plus"></span> Xác nhận
													</button>

												</div>
											</div>


										</form>
									</div>
	
</body>
</html>