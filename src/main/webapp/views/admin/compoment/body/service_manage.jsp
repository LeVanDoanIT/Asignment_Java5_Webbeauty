<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<title>Title</title>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<!-- Bootstrap CSS v5.2.1 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />
</head>

<body>
	<main class="container-fluid mt-3">
		<form action="" class="d-flex">
			<a name="" id="" class="btn btn-warning mb-3 m-2" href="#"
				role="button">Làm mới</a> <a name="" id=""
				class="btn btn-success mb-3 m-2" href="/manage/service/add"
				role="button">Thêm dịch vụ</a>

			<div class="mb-3 m-2">
				<select class="form-select" name="" id="">
					<option selected>Lọc theo loại dịch vụ</option>
					<option value="">Dịch vụ nail</option>
					<option value="">Dịch vụ makeup làm đẹp</option>
				</select>
			</div>
		</form>

		<table class="table table-bordered">
			<thead>
				<tr class="text-center">
					<th scope="col">Mã dịch vụ</th>
					<th scope="col">Tên dịch vụ</th>
					<th scope="col">Mô tả dịch vụ</th>
					<th scope="col">Thời gian thực hiện</th>
					<th scope="col">Loại dịch vụ</th>
					<th scope="col">Chi tiết dịch vụ</th>
					<th scope="col">Xoá dịch vụ</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="service" items="${services}">
					<tr class="">
						<th scope="row" class="text-center">${service.id}</th>
						<td>${service.service_name}</td>
						<td>${service.descript}</td>
						<td>${service.work_time} Phút</td>
						<td>${service.type_service}</td>
						<td><a name="" id="" class="btn btn-primary" href="#"
							role="button">Xem</a></td>
						<td><a name="" id="" class="btn btn-danger" href="#"
							role="button">Xoá</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</main>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
		integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
		crossorigin="anonymous"></script>
</body>
</html>
