<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<main class="container-fluid mt-3">
		<h2 class="text-center">Chưa hỗ trợ trên thiết bị mobile</h2>

		<div class="row">
			<div class="tabs text-center">
				<a href="#">Thống kê bán hàng</a> <a href="#">Thống kê đặt lịch</a>
			</div>
			<div class="mt-4">
				<table class="table table-bordered">
					<thead>
						<tr class="text-center">
							<th scope="col">Tên sản phẩm</th>
							<th scope="col">Tổng số lượng nhập</th>
							<th scope="col">Số lượng còn lại</th>
							<th scope="col">Giá bán</th>
							<th scope="col">Tổng số lượng đã bán</th>
							<th scope="col">Tổng doanh thu</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="kq" items="${ketqua}">
							<tr class="text-center">
								<td scope="row">${kq.product.name}</td>
								<td>${kq.product.quantity + kq.tongSoLuong}</td>
								<td>${kq.product.quantity}</td>
								<td>${kq.product.price}</td>
								<td>${kq.tongSoLuong}</td>
								<td>${kq.tongDoanhThu}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</main>

</body>
</html>