<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Nhật kí</title>



<link rel="stylesheet" href="css/style.css">

<style type="text/css">
        @import url("https://fonts.googleapis.com/css?family=Open+Sans:400,600,700");
@import url("https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css");
*, *:before, *:after {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html, body {
  height: 100vh;
}

body {
  font: 14px/1 'Open Sans', sans-serif;
  color: #555;
}

h1 {
  padding: 20px 0;

    color:  #008B8B;
}


p {
  margin: 0 0 20px;
  line-height: 1.5;
}
.contain{
    display: block;
}
.home{
    margin-left: 170px;
}
main {
  min-width: 320px;
  max-width: 1193.5px;
  padding: 50px;
  margin: 0 auto;
  background: #fff;
}

section {
  display: none;
  padding: 20px 0 0;
  border-top: 1px solid #ddd;
}

input {
  display: none;
}

label {
  display: inline-block;
  margin: 0 0 -1px;
  padding: 15px 25px;
  font-weight: 600;
  text-align: center;
  color: #bbb;
  border: 1px solid transparent;
}

label:before {
  font-family: fontawesome;
  font-weight: normal;
  margin-right: 10px;
}

label[for*='1']:before {
  content: '\f15c';
}

label[for*='2']:before {
  content: '\f15c';
}

label[for*='3']:before {
  content: '\f15c';
}

label[for*='4']:before {
  content: '\f15c';
}

label[for*='6']:before {
  content: '\f15c';
}
    label[for*='7']:before {
  content: '\f15c';
}
    label[for*='8']:before {
  content: '\f15c';
}
    label[for*='9']:before {
  content: '\f15c';
}

label:hover {
  color: #888;
  cursor: pointer;
}

input:checked + label {
  color: #555;
  border: 1px solid #ddd;
  border-top: 2px solid orange;
  border-bottom: 1px solid #fff;
}
#tab0:checked ~ #content0,
#tab1:checked ~ #content1,
#tab2:checked ~ #content2,
#tab3:checked ~ #content3,
#tab4:checked ~ #content4, 
#tab5:checked ~ #content5,
#tab6:checked ~ #content6,
#tab7:checked ~ #content7,
#tab8:checked ~ #content8,
#tab9:checked ~ #content9
{
  display: block;
}

@media screen and (max-width: 500px) {
  label {
    font-size: 0;
  }

  label:before {
    margin: 0;
    font-size: 18px;
  }
}
@media screen and (max-width: 400px) {
  label {
    padding: 15px;
  }
}


h2 {
  text-align: center;
}

table caption {
	padding: .5em 0;
}

@media screen and (max-width: 400px) {
  table caption {
    border-bottom: 1px solid #ddd;
  }
}

.canle{
text-align: center;
width: 110px;
}
</style>

</head>
<%@include file="../menu.jsp"%>
<body style="padding-top: 70px;">

	<div class="navigation" style="margin-left: 80px;">
		<ul class="breadcrumb">
			<li><a href="../index.jsp">Home</a></li>
			<li>Group diary</li>
		</ul>
	</div>

	<main> 
	<input id="tab0" type="radio" name="tabs" checked="checked"> 
	<label for="tab0">Tuần 4</label>
	<input id="tab1" type="radio" name="tabs">
	<label for="tab1">Tuần 5</label> <input id="tab2" type="radio" name="tabs"> 
	<label for="tab2">Tuần 6</label> <input id="tab3" type="radio" name="tabs"> 
	<label for="tab3">Tuần 7</label> <input id="tab4" type="radio" name="tabs"> 
	<label for="tab4">Tuần 8</label> <input id="tab5" type="radio" name="tabs"> 
	<label for="tab5">Tuần 9</label> <input id="tab6" type="radio" name="tabs"> 
	<label for="tab6">Tuần 10</label><input id="tab7" type="radio" name="tabs"> 
	<label for="tab7">Tuần 11</label><input id="tab8" type="radio" name="tabs"> 
	<label for="tab8">Tuần 12</label>
	<section id="content0">
		<table class="table">
			<thead>
				<tr>
					<th>STT</th>
					<th>Tên</th>
					<th>Công việc</th>
					<th>Hoàn thành</th>
					<th>Xem kết quả</th>


				</tr>
			</thead>
			<tbody>
				<tr>
					<td>01</td>
					<td>Phan Đức Anh</td>
					<td>Tìm hiểu và chọn đề tài</td>
					<td>100%</td>
					<td class="canle"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i>
						</button></td>

				</tr>
				<tr>
					<td>02</td>
					<td>Hà Thị Thanh Như</td>
					<td>Tìm hiểu và chọn đề tài</td>
					<td>100%</td>
					<td class="canle"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i>
						</button></td>
				</tr>
				<tr>
					<td>03</td>
					<td>Huỳnh Trọng Tuấn</td>
					<td>Tìm hiểu và chọn đề tài</td>
					<td>100%</td>
					<td class="canle"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i>
						</button></td>
				</tr>
				<tr>
					<td>04</td>
					<td>Trương Thị Thu Thảo</td>
					<td>Tìm hiểu và chọn đề tài</td>
					<td>100%</td>
					<td class="canle"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i>
						</button></td>
				</tr>
			</tbody>
		</table>
	</section>
	<section id="content1">
		<table class="table">
			<thead>
				<tr>
					<th>STT</th>
					<th>Tên</th>
					<th>Công việc</th>
					<th>Hoàn thành</th>
					<th>Xem kết quả</th>


				</tr>
			</thead>
			<tbody>
				<tr>
					<td>01</td>
					<td>Phan Đức Anh</td>
					<td>Tạo trang group diary</td>
					<td>100%</td>
					<td class="canle"><a href="<%=application.getContextPath()%>/Groupdiary/groupdiary.jsp"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
						</td>

				</tr>
				<tr>
					<td>02</td>
					<td>Hà Thị Thanh Như</td>
					<td>Tạo trang about</td>
					<td>100%</td>
					<td class="canle"><a href="<%=application.getContextPath()%>/About/about.jsp" target="_blank"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
						</td>
				</tr>
				<tr>
					<td>03</td>
					<td>Huỳnh Trọng Tuấn</td>
					<td>Tạo trang giới thiệu project</td>
					<td>100%</td>
					<td class="canle"><a href="<%=application.getContextPath()%>/Project/gioithieuproject.jsp" target="_blank"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
						</td>
				</tr>
				<tr>
					<td>04</td>
					<td>Trương Thị Thu Thảo</td>
					<td>Tìm kiếm các hình ảnh liên quan</td>
					<td>100%</td>
					<td class="canle"><a href="<%=application.getContextPath()%>/About/about.jsp" target="_blank"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
						</td>
				</tr>
			</tbody>
		</table>
	</section>

	<section id="content2">
		<table class="table">
			<thead>
				<tr>
					<th>STT</th>
					<th>Tên</th>
					<th>Công việc</th>
					<th>Hoàn thành</th>
					<th>Xem kết quả</th>


				</tr>
			</thead>
			<tbody>
				<tr>
					<td>01</td>
					<td>Phan Đức Anh</td>
					<td>Tìm kiếm giao diện cho trang front-end</td>
					<td>100%</td>
					<td class="canle"><a href="<%=application.getContextPath()%>/Project/Webbanhang/index.jsp" target="_blank"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
						</td>

				</tr>
				<tr>
					<td>02</td>
					<td>Hà Thị Thanh Như</td>
					<td>Tìm kiếm giao diện cho trang front-end</td>
					<td>100%</td>
					<td class="canle"><a href="<%=application.getContextPath()%>/Project/Webbanhang/index.jsp" target="_blank"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
						</td>
				</tr>
				<tr>
					<td>03</td>
					<td>Huỳnh Trọng Tuấn</td>
					<td>Tìm kiếm giao diện cho trang back-end</td>
					<td>100%</td>
					<td class="canle"><a href="<%=application.getContextPath()%>/Project/Admin/production/quanlikhachhang.jsp"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
						</td>
				</tr>
				<tr>
					<td>04</td>
					<td>Trương Thị Thu Thảo</td>
					<td>Tìm kiếm giao diện cho trang back-end</td>
					<td>100%</td>
					<td class="canle"><a href="<%=application.getContextPath()%>/Project/Admin/production/quanlikhachhang.jsp"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
						</button></td>
				</tr>
			</tbody>
		</table>
	</section>

	<section id="content3">
		<table class="table">
			<thead>
				<tr>
					<th>STT</th>
					<th>Tên</th>
					<th>Công việc</th>
					<th>Hoàn thành</th>
					<th>Xem kết quả</th>


				</tr>
			</thead>
			<tbody>
				<tr>
					<td>01</td>
					<td>Phan Đức Anh</td>
					<td>Thiết kế database</td>
					<td>100%</td>
					<td class="canle"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i>
						</button></td>

				</tr>
				<tr>
					<td>02</td>
					<td>Hà Thị Thanh Như</td>
					<td>Thiết kế database</td>
					<td>100%</td>
					<td class="canle"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i>
						</button></td>
				</tr>
				<tr>
					<td>03</td>
					<td>Huỳnh Trọng Tuấn</td>
					<td>Tìm kiếm hình ảnh và nhập dữ liệu vào database</td>
					<td>100%</td>
					<td class="canle"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i>
						</button></td>
				</tr>
				<tr>
					<td>04</td>
					<td>Trương Thị Thu Thảo</td>
					<td>Tìm kiếm hình ảnh và nhập dữ liệu vào database</td>
					<td>100%</td>
					<td class="canle"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i>
						</button></td>
				</tr>
			</tbody>
		</table>
	</section>

	<section id="content4">
		<table class="table">
			<thead>
				<tr>
					<th>STT</th>
					<th>Tên</th>
					<th>Công việc</th>
					<th>Hoàn thành</th>
					<th>Xem kết quả</th>


				</tr>
			</thead>
			<tbody>
				<tr>
					<td>01</td>
					<td>Phan Đức Anh</td>
					<td>Chức năng đăng nhập, đăng kí</td>
					<td>100%</td>
					<td class="canle"><a href="<%=application.getContextPath()%>/Project/Webbanhang/dangnhap.jsp" target="_blank"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
						</td>

				</tr>
				<tr>
					<td>02</td>
					<td>Hà Thị Thanh Như</td>
					<td>Quản lý nhà xuất bản(thêm sửa xóa)</td>
					<td>50%</td>
						<td class="canle"><a href="<%=application.getContextPath()%>/Project/Admin/production/quanlinhaxuatban.jsp"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
						</td>
				</tr>
				<tr>
					<td>03</td>
					<td>Huỳnh Trọng Tuấn</td>
					<td>Quản lý tác giả(thêm sửa xóa)</td>
					<td>50%</td>
						<td class="canle"><a href="<%=application.getContextPath()%>/Project/Admin/production/quanlitacgia.jsp"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
						</td>
				</tr>
				<tr>
					<td>04</td>
					<td>Trương Thị Thu Thảo</td>
					<td>Quản lý khách hàng(thêm sửa xóa)</td>
					<td>50%</td>
						<td class="canle"><a href="<%=application.getContextPath()%>/Project/Admin/production/quanlikhachhang.jsp"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
						</td>
				</tr>
			</tbody>
		</table>
	</section>
	<section id="content5">
		<table class="table">
			<thead>
				<tr>
					<th>STT</th>
					<th>Tên</th>
					<th>Công việc</th>
					<th>Hoàn thành</th>
					<th>Xem kết quả</th>


				</tr>
			</thead>
			<tbody>
				<tr>
					<td>01</td>
					<td>Phan Đức Anh</td>
					<td>Áp dụng captcha vào trang đăng nhập, mã hóa mật khẩu</td>
					<td>100%</td>
					<td class="canle"><a href="<%=application.getContextPath()%>/Project/Webbanhang/dangnhap.jsp" target="_blank"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
						</td>

				</tr>
				<tr>
					<td>02</td>
					<td>Hà Thị Thanh Như</td>
					<td>Tiếp tục nhiệm vụ tuần 8</td>
					<td>100%</td>
					<td class="canle"><a href="<%=application.getContextPath()%>/Project/Admin/production/quanlinhaxuatban.jsp"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
						</td>
				</tr>
				<tr>
					<td>03</td>
					<td>Huỳnh Trọng Tuấn</td>
					<td>Tiếp tục nhiệm vụ tuần 8</td>
					<td>100%</td>
					<td class="canle"><a href="<%=application.getContextPath()%>/Project/Admin/production/quanlinhaxuatban.jsp"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
						</td>
				</tr>
				<tr>
					<td>04</td>
					<td>Trương Thị Thu Thảo</td>
					<td>Tiếp tục nhiệm vụ tuần 8</td>
					<td>100%</td>
					<td class="canle"><a href="<%=application.getContextPath()%>/Project/Admin/production/quanlinhaxuatban.jsp"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
						</td>
				</tr>
			</tbody>
		</table>
	</section>
	<section id="content6">
		<table class="table">
			<thead>
				<tr>
					<th>STT</th>
					<th>Tên</th>
					<th>Công việc</th>
					<th>Hoàn thành</th>
					<th>Xem kết quả</th>


				</tr>
			</thead>
			<tbody>
				<tr>
					<td>01</td>
					<td>Phan Đức Anh</td>
					<td>Chức năng giỏ hàng, áp dụng java mail để gửi đơn hàng và đổi mật khẩu</td>
					<td>100%</td>
					<td class="canle"><a href="<%=application.getContextPath()%>/Project/Webbanhang/dangnhap.jsp" target="_blank"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
						</td>

				</tr>
				<tr>
					<td>02</td>
					<td>Hà Thị Thanh Như</td>
					<td>Chức năng phân trang</td>
					<td>50%</td>
					<td class="canle"><a href="<%=application.getContextPath()%>/Project/Admin/production/quanlinhaxuatban.jsp"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
						</td>
				</tr>
				<tr>
					<td>03</td>
					<td>Huỳnh Trọng Tuấn</td>
					<td>Chức năng đa ngôn ngữ ở trang đăng nhập</td>
					<td>100%</td>
					<td class="canle"><a href="<%=application.getContextPath()%>/Project/Admin/production/quanlinhaxuatban.jsp"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
						</td>
				</tr>
				<tr>
					<td>04</td>
					<td>Trương Thị Thu Thảo</td>
					<td>Thống kê </td>
					<td>50%</td>
					<td class="canle"><a href="<%=application.getContextPath()%>/Project/Admin/production/quanlinhaxuatban.jsp"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
						</td>
				</tr>
			</tbody>
		</table>
	</section>
	<section id="content7">
		<table class="table">
			<thead>
				<tr>
					<th>STT</th>
					<th>Tên</th>
					<th>Công việc</th>
					<th>Hoàn thành</th>
					<th>Xem kết quả</th>


				</tr>
			</thead>
			<tbody>
				<tr>
					<td>01</td>
					<td>Phan Đức Anh</td>
					<td>Quản lý sản phẩm(thêm, sửa, xóa), áp dụng công nghệ ajax ở mục thêm sản phẩm, bình luận facebook</td>
					<td>100%</td>
					<td class="canle"><a href="<%=application.getContextPath()%>/Project/Webbanhang/dangnhap.jsp" target="_blank"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
						</td>

				</tr>
				<tr>
					<td>02</td>
					<td>Hà Thị Thanh Như</td>
					<td>Tiếp tục nhiệm vụ tuần 10</td>
					<td>100%</td>
					<td class="canle"><a href="<%=application.getContextPath()%>/Project/Admin/production/quanlinhaxuatban.jsp"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
						</td>
				</tr>
				<tr>
					<td>03</td>
					<td>Huỳnh Trọng Tuấn</td>
					<td>Chức năng lọc sản phẩm</td>
					<td>100%</td>
					<td class="canle"><a href="<%=application.getContextPath()%>/Project/Admin/production/quanlinhaxuatban.jsp"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
						</td>
				</tr>
				<tr>
					<td>04</td>
					<td>Trương Thị Thu Thảo</td>
					<td>Tiếp tục nhiệm vụ tuần 10</td>
					<td>100%</td>
					<td class="canle"><a href="<%=application.getContextPath()%>/Project/Admin/production/quanlinhaxuatban.jsp"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
						</td>
				</tr>
			</tbody>
		</table>
	</section>
	
	<section id="content8">
		<table class="table">
			<thead>
				<tr>
					<th>STT</th>
					<th>Tên</th>
					<th>Công việc</th>
					<th>Hoàn thành</th>
					<th>Xem kết quả</th>


				</tr>
			</thead>
			<tbody>
				<tr>
					<td>01</td>
					<td>Phan Đức Anh</td>
					<td>Áp dụng upload hình ảnh vào chức năng thêm, áp dụng chatbot vào trang web để hỗ trợ khách hàng</td>
					<td>100%</td>
					<td class="canle"><a href="<%=application.getContextPath()%>/Project/Webbanhang/dangnhap.jsp" target="_blank"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
						</td>

				</tr>
				<tr>
					<td>02</td>
					<td>Hà Thị Thanh Như</td>
					<td>x</td>
					<td>x</td>
					<td class="canle"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i>
						</button></td>
				</tr>
				<tr>
					<td>03</td>
					<td>Huỳnh Trọng Tuấn</td>
					<td>x</td>
					<td>x</td>
					<td class="canle"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i>
						</button></td>
				</tr>
				<tr>
					<td>04</td>
					<td>Trương Thị Thu Thảo</td>
					<td>x</td>
					<td>x</td>
					<td class="canle"><button class="btn btn-info azure" id="anh">
							<i class="fa fa-info-circle" aria-hidden="true"></i>
						</button></td>
				</tr>
			</tbody>
		</table>
	</section>
	</main>



</body>

</html>
<%@include file="../footer.jsp"%>
