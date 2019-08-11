<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
    	String email = (String) session.getAttribute("getEmail");
    	String maXacNhan =(String) session.getAttribute("getlayMaXacNhan");
    %>
     <% if(maXacNhan==null){ %>
    <jsp:forward page="nhapemail.jsp"></jsp:forward>
   
   <%} %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%-- <%if(session.getAttribute("maXacNhanOld")==null) {%>
	<jsp:forward page="nhapemail.jsp"></jsp:forward>
<%} %> --%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Đổi mật khẩu</title>
</head>
<script>
        $(document).ready(function() {
            
            $('#myForm').bind({
                'submit': function() {
                   /*  if (!validateEmail($('#tenkhachhang').val())) {
                        $('#error_tenkhachhang').html('Bạn chưa nhập tên khách hàng');
                        return false;
                    } */
                    if ($('#newpass').val()=='') {
                        $('#error_newpass').html('Bạn chưa nhập mật khẩu');
                        return false;
                    }
                    if ($('#newpass').val()!=$('#renewpass').val()) {
                        $('#error_renewpass').html('Mật khẩu không trùng');
                        return false;
                    }
                   
                   
												
												return true;
											},
											'keydown' : function() {
												if ($('#newpass').val().length > 0) {
													$('#error_newpass')
															.html('');
												}
												if ($('#newpass').val()!=$('#renewpass').val()) {
													$('#error_renewpass')
															.html('');
												}
												
											}
										});
					});
</script>

<%@include file="menu.jsp" %>
<body>
	<br><br>
	<div class="container" style="margin-left: 200px;">
										<form class="form-horizontal"
											action="<%=request.getContextPath()%>/DoiMatkhauController?email=<%=email %>"
											method="post" id="myForm">
											<div style="display: none">
												<input type="password" class="form-control" id="action"
													name="action" value="doimatkhau" onkeydown="">
											</div> 

											<div class="form-group">
												<label class="control-label col-sm-2" for="pwd"> Mật khẩu mới</label>
												<div class="col-sm-4">
													<input type="password" class="form-control" id="newpass"
														placeholder="Nhập mật khẩu mới" name="newpass">
													<p id="error_newpass" style="color: red;"></p>
												</div>
											</div>
											<div class="form-group">
												<label class="control-label col-sm-2" for="pwd"> Nhập lại mật khẩu mới</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="renewpass"
														placeholder="Nhập lại mật khẩu mới" name="renewpass">
													<p id="error_renewpass" style="color: red;"></p>
												</div>
											</div>
											
											<div class="form-group">
												<label class="control-label col-sm-2" for="pwd"></label>
												<div class="col-sm-2">
													<button type="submit" class="btn btn-success">
														<span class="glyphicon glyphicon-plus"></span> Xác nhận
													</button>

												</div>
											</div>


										</form>
									</div>

</body>
</html>