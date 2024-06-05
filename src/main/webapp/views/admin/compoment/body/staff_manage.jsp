<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<main class="container-fluid mt-4 bg-light p-3">
		<h2 class="text-center">Chưa hỗ trợ trên thiết bị mobile</h2>
		<form class="row" action="">
			<div class="mb-3 col-3">
				<input type="text" class="form-control" name="" id=""
					aria-describedby="helpId"
					placeholder="Tìm theo số điện thoại khách hàng" />
			</div>
			<div class="mb-3 col-3">
				<input type="text" class="form-control" name="" id=""
					aria-describedby="helpId" placeholder="Tìm theo tên khách hàng" />
			</div>
			<button type="button" class="btn btn-primary col-1 h-50">
				Tìm</button>
		</form>
		<table class="table table-bordered">
			<thead>
				<tr class="text-center">
					<th scope="col">Mã nhân viên</th>
					<th scope="col">Hình ảnh</th>
					<th scope="col">Họ và tên</th>
					<th scope="col">Số điện thoại</th>
					<th scope="col">Giới tính</th>
					<th scope="col">Email</th>
					<th scope="col">Công việc</th>
					<th scope="col">Địa chỉ</th>
					<th scope="col">Nhân viên đã nghỉ</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="staff" items="${list}">
					<tr class="text-center">
						<th scope="row">${staff.id}</th>
						<td> <img width="90px" src="../images/${staff.image}" alt=""></td>
						<td>${staff.fullname}</td>
						<td>${staff.phone}</td>
						<td>${staff.gender?"Nam":"Nữ"}</td>
						<td>${staff.email}</td>
						<td>${staff.job}</td>
						<td>${staff.address}</td>
						<td><a name="" id="" class="btn btn-danger" href="#"
							role="button">Xác nhận</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</main>

</body>
</html>