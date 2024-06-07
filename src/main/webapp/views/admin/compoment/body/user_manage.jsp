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
<main class="container-fluid mt-4 bg-light">
	<form class="row" action="">
	<a type="button" href="/manage/user"
				class="btn btn-warning col-sm-1 h-50">Làm mới</a>
		<div class="mb-3 col-3">
			<input type="number" class="form-control"
				name="" id="phone" aria-describedby="helpId"
				placeholder="Tìm theo số điện thoại khách hàng" />
		</div>
		<a type="button" href="/manage/user"
				class="btn btn-primary col-sm-1 h-50">Tìm SDT</a>
		<div class="mb-3 col-3">
			<input type="text" class="form-control" name="" id="name"
				aria-describedby="helpId" placeholder="Tìm theo tên khách hàng" />
		</div>
	</form>
	<table class="table table-bordered">
		<thead>
			<tr class="text-center">
				<th scope="col">Mã Khách hàng</th>
				<th scope="col">Họ và tên</th>
				<th scope="col">Số điện thoại</th>
				<th scope="col">Giới tính</th>
				<th scope="col">Email</th>
				<th scope="col">Ngày tạo</th>
				<th scope="col">Địa chỉ</th>
				<th scope="col">Chặn tài khoản</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${listUser}">
				<tr class="text-center">
					<th scope="row">${user.id}</th>
					<td>${user.fullname}</td>
					<td>${user.phone}</td>
					<td>${user.gender?"Nam":"Nữ"}</td>
					<td>${user.email}</td>
					<td>${user.created}</td>
					<td>${user.address}</td>
					<td><a name="" id="" class="btn btn-danger" href="#"
						role="button">Chặn</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<script type="text/javascript">
	function timSDT() {
		let phone = document.getElementById("phone").value;
		window.location.href = "http://localhost:8080/manage/user/timkiem?phone="+phone;
	}
	</script>
</main>
</body>
</html>