<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="Dao.NgonNguDao"%>
<%@page import="java.util.Map"%>
<%KhachHang kh1 =(KhachHang) session.getAttribute("khachHang");%>
<%if(kh1!=null){%>
	<jsp:forward page="index.jsp"></jsp:forward>
<%} %>
<%
	Map<String, String> showNgonNgu = new NgonNguDao().vietNam();
	String lang = (String) session.getAttribute("lang");
	if (lang != null) {
		if (lang.equals("Vietnamese")) {
			showNgonNgu = new NgonNguDao().vietNam();
		} else if (lang.equals("English")) {
			showNgonNgu = new NgonNguDao().english();
		}
	}
%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Đăng nhập</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://www.google.com/recaptcha/api.js"></script>
 <script>
        $(document).ready(function() {
            function validatePhone(txtPhone) {
                var filter = /^[0-9-+]+$/;
                if (filter.test(txtPhone + "") && txtPhone.length >= 10 && txtPhone.length < 12) {
                    return true;
                } else {
                    return false;
                }
            }

            function validateEmail(sEmail) {
                var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
                if (filter.test(sEmail)) {
                    return true;
                } else {
                    return false;
                }
            }
            $('#myForm1').bind({
                'submit': function() {
                    
                    if ($('#email').val()=='') {
                        $('#error_email').html('Bạn chưa nhập email');
                        return false;
                    }
                    return true;	
                },
                'keydown': function() {
                    if ($('#email').val().length > 0) {
                        $('#error_email').html('');
                    }
                    
                 
                }
            });
        });
    </script> 

</head>
<%@include file="menu.jsp"%>

<body>
	<center>
		<h2><%=showNgonNgu.get("DangNhap")%></h2>
	</center>
	<br>
	<div class="container" style="text-align: center;">
		<form class="form-horizontal"
			action="<%=request.getContextPath()%>/xulydangnhap" method="post">
			<div class="form-group">
				<label class="control-label col-sm-5" for="name"><%=showNgonNgu.get("TenEmail")%></label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="name" name="email"
						placeholder="<%=showNgonNgu.get("NhapEmail")%>"
						value="<%if (session.getAttribute("email") != null) {
				out.print((String) session.getAttribute("email"));
				session.removeAttribute("email");
			}%>">
					<p style="color: red;">
						<%
							if (session.getAttribute("err_email") != null) {
								out.print((String) session.getAttribute("err_email"));
								session.removeAttribute("err_email");
							}
						%>
					</p>

				</div>

			</div>
			<div class="form-group">
				<label class="control-label col-sm-5" for="password"><%=showNgonNgu.get("MatKhau")%></label>
				<div class="col-sm-3">
					<input type="password" class="form-control" id="password"
						name="password" placeholder="<%=showNgonNgu.get("NhapMatKhau")%>"
						value="<%if (session.getAttribute("password") != null) {
				out.print((String) session.getAttribute("password"));
				session.removeAttribute("password");
			}%>">
					<p style="color: red;">
						<%
							if (session.getAttribute("err_password") != null) {
								out.print((String) session.getAttribute("err_password"));
								session.removeAttribute("err_password");
							}
						%>
					</p>

				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-5" for="pwd"></label>
				 <div class="col-sm-3">
					<div class="g-recaptcha"
						data-sitekey="6Ld3mVwUAAAAANsHvCjbDshC4PsKDYE38YaZWp__"></div>
				</div> 
				
			</div>
			<div class="form-group">
				<label class="control-label col-sm-5" for="pwd"></label>
				<div class="col-sm-3">
					<button type="submit" class="btn btn-primary"><%=showNgonNgu.get("DangNhap")%></button>
					<%=showNgonNgu.get("Hoac")%>
					<a href="dangki.jsp">
						<button type="button" class="btn btn-primary"><%=showNgonNgu.get("DangKi")%></button>
					</a>
				</div>
			</div>
			
					
			<div class="form-group">
				<label class="control-label col-sm-5" for="pwd"></label>
				<div class="col-sm-3">
					<a href="nhapemail.jsp">Quên mật khẩu?</a>

				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-5" for="pwd"></label>
				<div class="col-sm-3">
					<div class="fb-login-button" data-max-rows="7" data-size="medium"
						data-button-type="login_with" data-show-faces="true"
						data-auto-logout-link="true" data-use-continue-as="true"></div>

				</div>
			</div>
		</form>
	</div>
	<div id="status"></div>
</body>
</script>
<!-- script dang nhap bang facebook -->
<script>
	function statusChangeCallback(response) {
		console.log('statusChangeCallback');
		console.log(response);
		if (response.status === 'connected') {
			testAPI();
		} else {
			document.getElementById('status').innerHTML = 'Please log '
					+ 'into this app.';
		}
	}

	function checkLoginState() {
		FB.getLoginStatus(function(response) {
			statusChangeCallback(response);
		});
		FB.api('/me', {
			fields : ' name, email'
		}, function(response) {
			console.log(response);
			window.location.href = 'LoginController?action=Face&name='
					+ response.name + '&email=' + response.email + '&id='
					+ response.id;
		});
	}

	window.fbAsyncInit = function() {
		FB.init({
			appId : '191841258130168',
			cookie : true,
			xfbml : true,
			version : 'v2.9'
		});

		FB.getLoginStatus(function(response) {
			statusChangeCallback(response);
		});

	};

	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id))
			return;
		js = d.createElement(s);
		js.id = id;
		js.src = "//connect.facebook.net/en_US/sdk.js";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));

	function testAPI() {
		console.log('Welcome!  Fetching your information.... ');
		FB
				.api(
						'/me',
						function(response) {
							console.log('Successful login for: '
									+ response.name);
							document.getElementById('status').innerHTML = 'Thanks for logging in, '
									+ response.name + '!';
						});
	}
</script>

</html>
