<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<style>
.list-img:hover {
	background: white;
}

.carousel-item {
	height: 300px;
	width: 400px;
	object-fit: contain;
}
</style>
</head>

<body>
	<main class="container mt-3">
		<a name="" id="" class="btn btn-primary mb-3" href="/manage/service" role="button">Trở
			lại</a> <a name="" id="" class="btn btn-warning mb-3" href="/manage/service/add"
			role="button">Làm mới</a>

		<div class="row">
			<div class="card col-4">
				<div class="card-header">
					<label for="" class="form-label">Tải lên hình ảnh</label>
					<form action="">
						<div class="mb-3 d-flex">
							<input type="file" class="form-control" name="" id=""
								aria-describedby="helpId" placeholder="" />
							<!-- <small id="helpId" class="form-text text-muted">Help text</small> -->
							<a name="" id="" class="btn btn-primary" href="#" role="button">Tải</a>

						</div>


					</form>
				</div>
				<div class="card-body">
					<div id="carouselExampleControlsNoTouching" class="carousel slide"
						data-bs-touch="false" data-bs-interval="false">

						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="/images/mi dep.jpg" class="d-block w-100" alt="..." />
							</div>
							<div class="carousel-item">
								<img src="/images/voiuhanni.jpg" class="d-block w-100" alt="..." />
							</div>
							<div class="carousel-item">
								<img src="/images/makeup.jpg" class="d-block w-100" alt="..." />
							</div>
						</div>
						<button class="carousel-control-prev" type="button"
							data-bs-target="#carouselExampleControlsNoTouching"
							data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#carouselExampleControlsNoTouching"
							data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>
				</div>
				<div class="card-footer text-muted">
					<img class="list-img" src="/images/voiuhanni.jpg" width="100"
						height="100" style="object-fit: contain;" alt=""> <img
						class="list-img" src="/images/makeup.jpg" width="100" height="100"
						style="object-fit: contain;" alt="">
				</div>
			</div>
			<div class="card col-4 bg-light">
				<div class="card-header">
					<div class="mb-3">
						<label for="" class="form-label">Loại dịch vụ</label> <select
							class="form-select" name="" id="">
							<option selected>--Chọn loại dịch vụ--</option>
							<option value="">Nail</option>
							<option value="">Make up</option>
						</select>
					</div>

				</div>
				<div class="card-body">
					<form action="">
						<div class="mb-3">
							<label for="" class="form-label">Tên dịch vụ</label> <input
								type="text" class="form-control" name="" id=""
								aria-describedby="helpId" placeholder="" />
							<!-- <small id="helpId" class="form-text text-muted">Help text</small> -->
						</div>

						<div class="mb-3">
							<label for="" class="form-label">Thời gian làm (phút)</label> <input
								type="number" class="form-control" name="" id=""
								aria-describedby="helpId" placeholder="" />
							<!-- <small id="helpId" class="form-text text-muted">Help text</small> -->
						</div>

						<div class="mb-3">
							<label for="" class="form-label">Ghi chú</label>
							<textarea class="form-control" name="" id="" rows="3"></textarea>
						</div>
				</div>
				<div class="card-footer text-muted">
					<a name="" id="" class="btn btn-primary" href="#" role="button">Thêm</a>

				</div>
				</form>
			</div>



			<div class="card p-1 col-4 bg-light">
				<div class="card-header">
					<div class="mb-3">
						<label for="" class="form-label">Số thứ tự</label> <input
							type="text" class="form-control" name="" id=""
							aria-describedby="helpId" placeholder="" />
						<!-- <small id="helpId" class="form-text text-muted">Help text</small> -->
					</div>

				</div>
				<div class="card-body">
					<div class="mb-3">
						<label for="" class="form-label">Tên bước</label> <input
							type="text" class="form-control" name="" id=""
							aria-describedby="helpId" placeholder="" />
						<!-- <small id="helpId" class="form-text text-muted">Help text</small> -->
					</div>

					<div class="mb-3">
						<label for="" class="form-label">Mô tả</label>
						<textarea placeholder="" class="form-control" name="" id=""
							rows="3"></textarea>
					</div>

				</div>
				<div class="card-footer text-muted">
					<a name="" id="" class="btn btn-primary" href="#" role="button">Thêm</a>

				</div>

			</div>

		</div>
		<!-- form -->

		<div class="row mt-3">
			<div class="card p-1 col-3 bg-light">
				<div class="card-header">
					<div class="mb-3">
						<label for="" class="form-label">Số thứ tự</label> <input
							type="text" class="form-control" name="" id=""
							aria-describedby="helpId" placeholder="" />
						<!-- <small id="helpId" class="form-text text-muted">Help text</small> -->
					</div>

				</div>
				<div class="card-body">
					<div class="mb-3">
						<label for="" class="form-label">Tên bước</label> <input
							type="text" class="form-control" name="" id=""
							aria-describedby="helpId" placeholder="" />
						<!-- <small id="helpId" class="form-text text-muted">Help text</small> -->
					</div>

					<div class="mb-3">
						<label for="" class="form-label">Mô tả</label>
						<textarea placeholder="" class="form-control" name="" id=""
							rows="3"></textarea>
					</div>

				</div>
				<div class="card-footer text-muted">
					<a name="" id="" class="btn btn-warning" href="#" role="button">Cập
						nhật</a> <a name="" id="" class="btn btn-danger" href="#"
						role="button">Xoá</a>


				</div>

			</div>
		</div>
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
