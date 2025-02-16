<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tạo mới</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="d-flex">
    <div class="bg-info p-2 shadow" style="width: 250px; min-height: calc(100vh - 216px);">
        <a href="" class="me-5">
            <img src="image/H1.jpg" style="max-height: 200px;">
        </a>
        <ul class="nav flex-column nav-pills">
            <li class="nav-item">
                <a class="nav-link text-body" href="">Sản Phẩm</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-body" href="">Kho Hàng</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-body" href="">Bán Hàng</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-body" href="">Khách Hàng</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-body" href="">Liên Hệ</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-body" href="nhanvien-list.html">Nhân Viên</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-body" href="">Thống Kê</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-body" href="">Cài Đặt</a>
            </li>
        </ul>
    </div>
</div>
<div class="container">
    <h1>Thêm Nhân Viên</h1>
    <form action="/nhanvien/add" method="post">
        <div class="mt-3">
            <label>ID</label>
            <input type="text" name="id" placeholder="Nhập id">
        </div>
        <div class="mt-3">
            <label>Tên</label>
            <input type="text" name="ten" placeholder="Nhập  Tên">
        </div>
        <div class="mt-3">
            <label>Địa Chỉ</label>
            <input type="text" name="email" placeholder="Nhập Địa Chỉ">
        </div>
        <div class="mt-3">
            <label>SDT</label>
            <input type="text" name="sdt" placeholder="Nhập số điện thoại">
        </div>
        <div class="mt-3">
            <label>Mật Khẩu</label>
            <input type="text" name="matKhau" placeholder="Nhập Mat Khau">
        </div>
        <div class="mt-3">
            <label>Ngày Tạo</label>
            <input type="date" name="ngayTao" placeholder="Nhập ngay tao">
        </div>
        <div class="mt-3">
            <label>Trạng Thái</label>
            <input type="radio" name="trangThai"  value="1"/>Đang Hoạt Động
            <input type="radio" name="trangThai"  value="2"/>Ngừng Hoạt Động
        </div>
        <button type="submit" class="btn btn-succes">Thêm Thành công</button>
    </form>
</div>
</body>
</html>