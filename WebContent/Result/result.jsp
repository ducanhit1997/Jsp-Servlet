<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Kết quả</title>
</head>
<%@include file="../menu.jsp"%>
<body style="padding-top: 70px;">
	<div class="navigation">
		<ul class="breadcrumb">
			<li><a href="../index.jsp">Home</a></li>
			<li>Result</li>
		</ul>
	</div>
	<h2 style="text-align: center;">Đánh giá thành viên</h2>
	<table class="table table-striped">
		<thead>
			<tr>
				<th>STT</th>
				<th>Mã sinh viên</th>
				<th>Tên sinh viên</th>
				<th>Lớp</th>
				<th>Đóng góp project</th>
				<th>Kết quả</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>15130008</td>
				<td>Phan Đức Anh</td>
				<td>DH15DTB</td>
				<td>40%</td>
				<td class="canle"><a href="https://phanducanh.azurewebsites.net/Result/result.jsp" target="_blank"><button class="btn btn-info azure"title="Xem kết quả" id="anh">
						<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
					</td>


			</tr>
			<tr>
				<td>2</td>
				<td>16130642</td>
				<td>Huỳnh Trọng Tuấn</td>
				<td>DH16DTC</td>
				<td>20%</td>
				<td class="canle"><a href="http://trongtuan.azurewebsites.net/Result.jsp" target="_blank"><button class="btn btn-info azure" title="Xem kết quả" id="anh">
						<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
					</td>
			</tr>
			<tr>
				<td>3</td>
				<td>16130505</td>
				<td>Hà Thị Thanh Như</td>
				<td>DH16DTA</td>
				<td>20%</td>
				<td class="canle"><a href="https://hathithanhnhu98.azurewebsites.net/result.jsp" target="_blank"><button class="btn btn-info azure" title="Xem kết quả" id="anh">
						<i class="fa fa-info-circle" aria-hidden="true"></i></button></a>
					</td>
			</tr>
			<tr>
				<td>4</td>
				<td>16130585</td>
				<td>Trương Thị Thu Thảo</td>
				<td>DH16DTA</td>
				<td>20%</td>
				<td class="canle"><a href="https://thaotruong.azurewebsites.net/result/result.jsp" target="_blank"><button class="btn btn-info azure" title="Xem kết quả" id="anh">
						<i class="fa fa-info-circle" aria-hidden="true"></i>	</button></a>
				</td>
			</tr>

		</tbody>
	</table>
</body>
</html>
<%@include file="../footer.jsp"%>