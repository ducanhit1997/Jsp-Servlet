<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String maNX = (String) session.getAttribute("getMaXacNhan");
	String email = (String) session.getAttribute("getEmail");
%>

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
<%
	ArrayList<KhachHang> list = KhachHangDao.getList();
%>
<script>
        $(document).ready(function() {
        	 function validateEmail(sEmail) {
                 var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
                 if (filter.test(sEmail)) {
                     return true;
                 } else {
                     return false;
                 }
             }
            $('#myForm').bind({
                'submit': function() {
                   /*  if (!validateEmail($('#tenkhachhang').val())) {
                        $('#error_tenkhachhang').html('Bạn chưa nhập tên khách hàng');
                        return false;
                    } */
                    if ($('#email').val()=='') {
                        $('#error_email').html('Bạn chưa nhập email');
                        return false;
                    }
                    if (!validateEmail($('#email')
							.val())) {
						$('#error_email')
								.html(
										'Email không đúng định dạng');
						return false;
					}
                   
                    var email = $('#email').val();
                    var listEmail = [];
                    <%for (KhachHang val : list) {%>
                    listEmail.push('<%=val.getEmail()%>');
<%}%>
	if (listEmail.indexOf(email) == -1) { // kiểm tra maqg(mã quốc gia) mà người dùng nhập có nằm trong listMaQuocGia hay không. Nếu không có trả về -1
													$('#error_email')
															.html(
																	'Email không tồn tại trong hệ thống');
													return false;
												}
												return true;
											},
											'keydown' : function() {
												if ($('#email').val().length > 0) {
													$('#error_email')
															.html('');
												}
												
											}
										});
					});
</script>

</head>
<%@include file="menu.jsp"%>
<body>
	<br>
	<br>
	<div class="container" style="margin-left: 300px;">
		<form class="form-horizontal"
			action="<%=request.getContextPath()%>/DoiMatkhauController"
			method="post" id="myForm">
			<div style="display: none">
				<input type="text" class="form-control" id="action" name="action"
					value="nhapemail" onkeydown="">
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd"> Nhập email</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="email"
						placeholder="Nhập email của bạn" name="email">
					<p id="error_email" style="color: red;"></p>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd"></label>
				<div class="col-sm-2">
					<button type="submit" class="btn btn-success">
						<span class="glyphicon glyphicon-plus"></span> Lấy mã xác nhận
					</button>

				</div>
			</div>


		</form>
	</div>

</body>
</html>