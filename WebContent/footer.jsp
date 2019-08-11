<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="footer, search, form, icons" />

	<title>Footer with a Search Form</title>

	<link rel="stylesheet" href="css/demo.css">

	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
	<style type="text/css">
	.footer-distributed{
	background-color: #292c2f;
	box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.12);
	box-sizing: border-box;
	width: 100%;
	font: bold 16px sans-serif;
	text-align: left;

	padding: 50px 60px;
	margin-top: 80px;
	overflow: hidden;
}

/* Footer left */

.footer-distributed .footer-left{
	float: left;
}

.footer-distributed .footer-links{
	color:  #ffffff;
	margin: 0 0 10px;
	padding: 0;
}

.footer-distributed .footer-links a{
	display:inline-block;
	line-height: 1.8;
	text-decoration: none;
	color:  inherit;
}

.footer-distributed .footer-company-name{
	color:  #8f9296;
	font-size: 14px;
	font-weight: normal;
	margin: 0;
}


/* Footer right */

.footer-distributed .footer-right{
	float: right;
}

/* The search form */

.footer-distributed form{
	position: relative;
}

.footer-distributed form input{
	display: block;
	border-radius: 3px;
	box-sizing: border-box;
	background-color:  #1f2022;
	box-shadow: 0 1px 0 0 rgba(255, 255, 255, 0.1);
	border: none;

	font: inherit;
	font-size: 14px;
	font-weight: normal;
	color:  #d1d2d2;

	width: 500px;
	padding: 18px 50px 18px 18px;
}

.footer-distributed form input:focus{
	outline: none;
}

/* Changing the placeholder color */

.footer-distributed form input::-webkit-input-placeholder {
	color:  #5c666b;
}

.footer-distributed form input::-moz-placeholder {
	opacity: 1;
	color:  #5c666b;
}

.footer-distributed form input:-ms-input-placeholder{
	color:  #5c666b;
}

/* The magnify glass icon */

.footer-distributed form i{
	width: 18px;
	height: 18px;
	position: absolute;
	top: 16px;
	right: 18px;

	color: #d1d2d2;
	font-size: 18px;
}

/* If you don't want the footer to be responsive, remove these media queries */

@media (max-width: 1000px) {

	.footer-distributed form input{
		width: 300px;
	}

}

@media (max-width: 800px) {

	.footer-distributed{
		padding: 30px;
		text-align: center;
		font: bold 14px sans-serif;
	}

	.footer-distributed .footer-company-name{
		margin-top: 10px;
		font-size: 12px;
	}

	.footer-distributed .footer-left,
	.footer-distributed .footer-right{
		float: none;
		max-width: 300px;
		margin: 0 auto;
	}

	.footer-distributed .footer-left{
		margin-bottom: 20px;
	}

	.footer-distributed form input{
		width: 100%;
	}

}
	
	</style>
</head>

	
		<!-- The content of your page would go here. -->

		<footer class="footer-distributed">

			<div class="footer-left">

				<p class="footer-links" style="margin-left: 50px;">
					<a href="#">Lập trình web</a>
					·
					<a href="#">2018</a>
					·
					<a href="#">Group 22</a>
					·
					
				</p>
				<br><p class="footer-links" style="margin-left: 50px;">
					<a href="#">Cô Trần Thị Thanh Nga</a>
					·
					<a href="#">Cô Mai Anh Thơ</a>
					·
					
				</p>


			</div>

			<div class="footer-right">

				<form method="get" action="#">
					<input placeholder="Search our website" name="search" />
					<i class="fa fa-search"></i>
				</form>

			</div>

		</footer>


</html>

    