<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Trang chủ</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <!-- Bootstrap CSS v5.2.1 -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="../css/index.css" />
    <link rel="stylesheet" href="../css/home-service.css" />
  </head>
  <body class="bg-light">
    <header class="text-light">
      <div>
        <a class="map text-decoration-none text-light" href="#">
          <img src="/images/IconLocation.png" alt="" /> Địa chỉ
        </a>
      </div>
      <div class="social-network">
        <a href="#"><img src="../images/Logo_FB.png" width="32px" alt="" /></a>
        <a href="#"
          ><img src="../images/Logo_Instargram.png" width="32px" alt=""
        /></a>
      </div>
    </header>
    <nav class="">
      <div class="logo text-light">
        <h5>LÀM ĐẸP</h5>
        <a href="#"
          ><img src="../images/logoJPG.jpg" class="p-2" width="110px" alt="Logo"
        /></a>
        <h1>PHƯƠNG DUYÊN</h1>
      </div>
      <div class="menu">
        <a href="/trangchu">Trang chủ</a>
        <a href="#">Giới thiệu</a>
        <a href="#">Dịch vụ</a>
        <a href="#">Đặt lịch</a>
        <a href="#">Tài khoản</a>
        <div class="animation start-home"></div>
      </div>
      <span id="close-menu-btn" class="material-symbols-outlined">
        <img src="/images/iconClose.png" height="40" alt="" />
      </span>
      <span id="menu-btn" class="material-symbols-outlined">
        <img src="/images/menuIcon.png" height="30" alt="" />
      </span>
    </nav>
    <main>
      <!-- slide show -->
      <div
        id="carouselExampleControls"
        class="carousel slide col-sm-8 mx-auto text-center bg-light"
        data-bs-ride="carousel"
      >
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img
              src="../images/slide1.png"
              height="450px"
              class="d-block w-100 slide"
              alt="..."
            />
          </div>
          <div class="carousel-item">
            <img
              src="../images/slide2.png"
              height="450px"
              class="d-block w-100 slide"
              alt="..."
            />
          </div>
        </div>
        <button
          class="carousel-control-prev"
          type="button"
          data-bs-target="#carouselExampleControls"
          data-bs-slide="prev"
        >
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button
          class="carousel-control-next"
          type="button"
          data-bs-target="#carouselExampleControls"
          data-bs-slide="next"
        >
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
      <!-- dịch vụ -->
      <div class="list-service col-sm-8 mx-auto text-center mt-5 bg-white">
        <h2 class="pt-3">
          <span style="color: #f8c6b5">DỊCH VỤ</span> LÀM ĐẸP
        </h2>
        <div class="row p-4">
          <div class="col-sm-4 mb-3">
            <img src="../images/mi dep.jpg" width="100%" alt="" />
            <a class="price text-white text-decoration-none"
              ><p>Giá chỉ từ</p>
              <p>60 000VNĐ >></p></a
            >
            <h4 class="mt-2">Mi</h4>
            <p>Chúng tôi có hai dịch vụ làm mi đó là nối mi và uốn mi</p>
            <a name="" id="" class="btn btn-custom" href="#" role="button"
              >Xem thêm</a
            >
          </div>
          <div class="col-sm-4 mb-3">
            <img src="../images/nail.jpg" width="100%" alt="" />
            <a class="price text-white text-decoration-none"
              ><p>Giá chỉ từ</p>
              <p>100 000VNĐ >></p></a
            >
            <h4 class="mt-2">Nail</h4>
            <p>Là dịch vụ được quý khách hàng yêu thích nhất</p>
            <a name="" id="" class="btn btn-custom" href="#" role="button"
              >Xem thêm</a
            >
          </div>
          <div class="col-sm-4 mb-3">
            <img src="../images/makeup.jpg" width="100%" alt="" />
            <a class="price text-white text-decoration-none"
              ><p>Giá chỉ từ</p>
              <p>500 000VNĐ >></p></a
            >
            <h4 class="mt-2">Makeup</h4>
            <p>Chúng tôi có hai dịch vụ làm mi đó là nối mi và uốn mi</p>
            <a name="" id="" class="btn btn-custom" href="#" role="button"
              >Xem thêm</a
            >
          </div>
        </div>
      </div>
      <!-- Trải nghiệm khách hàng -->
      <div class="feedback col-sm-8 mx-auto text-center mt-5 bg-white">
        <h2 class="pt-3">
          <span style="color: #f8c6b5">TRẢI NGHIỆM</span> KHÁCH HÀNG
        </h2>
        <div class="row p-4">
          <div class="col-sm-3">
            <img src="../images/fb1.jpg" width="100%" height="mx-auto" alt="" />
          </div>
          <div class="col-sm-3">
            <img src="../images/fb2.jpg" width="100%" alt="" />
          </div>
          <div class="col-sm-3">
            <img src="../images/fb3.jpg" width="100%" alt="" />
          </div>
          <div class="col-sm-3">
            <img src="../images/fb4.jpg" width="100%" alt="" />
          </div>
        </div>
      </div>
      <!-- admin -->
      <div class="admin col-sm-8 mx-auto text-center mt-5 pb-2 bg-white">
        <img
          src="../images/admin.jpg"
          style="width: 300px; border-radius: 300px; padding-top: 20px"
          alt=""
        />
        <h5 style="color: #f8c6b5">Phương Duyên - makeup artist</h5>
        <p>"Đến với chúng tôi bạn sẽ là phiên bản đẹp nhất của mình"</p>
      </div>
    </main>
    <footer class="mt-5">
      <div class="logo text-center">
        <h5>Làm đẹp</h5>
        <a href="#"
          ><img src="../images/logoJPG.jpg" class="p-2" width="110px" alt="Logo"
        /></a>
        <h2>PHƯƠNG DUYÊN</h2>
      </div>
      <div class="location text-center">
        <img src="../images/map.png" alt="">
        <h4>Hồ Chí Minh</h4>
        <ul>
          <li>Chi nhánh 1</li>
          <li>Chi nhánh 2</li>
          <li>Chi nhánh 3</li>
        </ul>
      </div>
      <div class="form-hoi-dap">
        <form action="">
          <div class="mb-3">
            <label for="" class="form-label">Email liên hệ</label>
            <input
              type="text"
              class="form-control"
              name=""
              id=""
              aria-describedby="helpId"
              placeholder=""
            />
          </div>
          <div class="mb-3">
            <label for="" class="form-label">Thắc mắc</label>
            <textarea class="form-control" name="" id="" rows="3"></textarea>
          </div>
          <div class="d-grid gap-2">
            <button type="button" name="" id="" class="btn btn-custom2">
              Gửi
            </button>
          </div>
        </form>
      </div>
      <!-- place footer here -->
    </footer>
    <!-- Bootstrap JavaScript Libraries -->
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
      crossorigin="anonymous"
    ></script>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
      integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
