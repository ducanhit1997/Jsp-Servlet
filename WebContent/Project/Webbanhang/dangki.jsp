<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>Đăng kí</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<%@include file="menu.jsp"%>

<body>
	<center>
		<h2>Đăng kí</h2>
	</center>
	<br>
	<div class="container" style="text-align: center;">
		<form class="form-horizontal" id=""
			action="<%=request.getContextPath()%>/XuLiDangKi" method="get">
			<div class="form-group">
				<label class="control-label col-sm-5" for="name">Tên khách hàng</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="name" name="username"
						placeholder="Nhập tên"
						value="<% if(session.getAttribute("username")!=null){
                            	out.print((String)session.getAttribute("username"));
                            session.removeAttribute("username");
                            }
                            %>">
                         <p style="color: red;"> <% 
                            if(session.getAttribute("err_username")!=null){
                            	out.print((String)session.getAttribute("err_username"));
                            	session.removeAttribute("err_username");
                            }
                            %></p>    
				</div>

			</div>
			<div class="form-group">
				<label class="control-label col-sm-5" for="email">Email</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="email" name="email"
						placeholder="Nhập email" 
						value="<% if(session.getAttribute("email")!=null){
                            	out.print((String)session.getAttribute("email"));
                            session.removeAttribute("email");
                            }
                            %>">
                         <p style="color: red;"> <% 
                            if(session.getAttribute("err_email")!=null){
                            	out.print((String)session.getAttribute("err_email"));
                            	session.removeAttribute("err_email");
                            }
                            %></p>    
				</div>

			</div>
			<div class="form-group">
				<label class="control-label col-sm-5" for="password">Mật
					khẩu:</label>
				<div class="col-sm-3">
					<input type="password" class="form-control" id="password"
						name="password" placeholder="Nhập mật khẩu" 
						value="<% if(session.getAttribute("password")!=null){
                            	out.print((String)session.getAttribute("password"));
                            session.removeAttribute("password");
                            }
                            %>">
                         <p style="color: red;"> <% 
                            if(session.getAttribute("err_password")!=null){
                            	out.print((String)session.getAttribute("err_password"));
                            	session.removeAttribute("err_password");
                            }
                            %></p>     
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-5" for="re_password">Nhập
					lại mật khẩu:</label>
				<div class="col-sm-3">
					<input type="password" class="form-control" id="re_password"
						name="repassword" placeholder="Nhập lại mật khẩu" 
						value="<% if(session.getAttribute("repassword")!=null){
                            	out.print((String)session.getAttribute("repassword"));
                            session.removeAttribute("repassword");
                            }
                            %>">
                         <p style="color: red;"> <% 
                            if(session.getAttribute("err_repassword")!=null){
                            	out.print((String)session.getAttribute("err_repassword"));
                            	session.removeAttribute("err_repassword");
                            }
                            %></p>  
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-5" for="re_password">Giới
					tính:</label>
				<div class="col-sm-3">
					<label class="radio-inline"> <input type="radio"
						name="gioitinh" checked="checked" value="Nam">Nam
					</label> <label class="radio-inline"> <input type="radio"
						name="gioitinh" value="Nữ">Nữ
					</label>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-5" for="pwd"></label>
				<div class="col-sm-3">
					<button type="submit" class="btn btn-primary">Đăng kí</button>
					Hoặc <a href="dangnhap.jsp">
						<button type="button" class="btn btn-primary">Đăng nhập</button>
					</a>
				</div>
			</div>
		</form>
	</div>

</body>

</html>
