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
			<a type="button" href="/manage/staff"
				class="btn btn-warning col-sm-1 h-50">Làm mới</a>
			<div class="mb-3 col-2">
				<input type="text" class="form-control" name="" id="phone"
					aria-describedby="helpId"
					placeholder="Tìm theo số điện thoại nhân viên" />
			</div>
			<button onclick="searchSDT()" type="button"
				class="btn btn-primary col-1 h-50">Tìm SDT</button>
			<div class="mb-3 col-2">
				<input type="text" class="form-control" name="" id=""
					aria-describedby="helpId" placeholder="Tìm theo tên nhân viên" />
			</div>
			<button onclick="searchSDT()" type="button"
				class="btn btn-primary col-1 h-50">Tìm Tên</button>
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
					<th scope="col">Trạng thái</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="staff" items="${list}">
					<tr class="text-center">
						<th scope="row">${staff.id}</th>
						<td><img width="90px" src="../images/${staff.image}" alt=""></td>
						<td>${staff.fullname}</td>
						<td>${staff.phone}</td>
						<td>${staff.gender?'Nam':'Nữ'}</td>
						<td>${staff.email}</td>
						<td>${staff.job}</td>
						<td>${staff.address}</td>
						<td><a name="" id="" class="btn btn-${staff.isActive?'danger':'success'}" href="#"
							role="button">${staff.isActive?'Đã nghỉ': 'Đang làm'}</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</main>
	<script type="text/javascript">
		function searchSDT() {
			let phone = document.getElementById("phone").value;
			window.location.href = "http://localhost:8080/manage/staff?phone="
					+ phone;
			console.log(phone);
		}
	</script>
</body>
</html>