<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Phương Duyên</title>
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
<link rel="stylesheet" href="../css/index.css" />
<link rel="stylesheet" href="../css/home-service.css" />
<link rel="stylesheet" href="../css/admin-managerUser.css" />
</head>
<body class="bg-light">
	<jsp:include page="/views/admin/compoment/header.jsp"></jsp:include>
	<main class="container-fluid mt-4 bg-light p-3">
		<h2 class="text-center">Chưa hỗ trợ trên thiết bị mobile</h2>
		<jsp:include page="/views/admin/compoment/body/${views}"></jsp:include>
	</main>
	<script>
      const nav = document.querySelector("nav");
      const menuBtn = document.querySelector("#menu-btn");
      const closeMenuBtn = document.querySelector("#close-menu-btn");
      menuBtn.addEventListener("click", () => {
        nav.classList.toggle("show-mobile-menu");
      });
      closeMenuBtn.addEventListener("click", () => {
        menuBtn.click();
      });
    </script>
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
