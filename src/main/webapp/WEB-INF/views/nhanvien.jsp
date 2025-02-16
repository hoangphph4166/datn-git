<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Website Bán PoLo Nam Manani</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .container {
            display: flex;
            flex-wrap: wrap;
        }

        .bg-info {
            background-color: #17a2b8;
            color: white;
            padding: 20px;
            border-radius: 8px;
        }


        .bg-info img {
            width: 100%;
            border-radius: 10px;
            margin-bottom: 20px;
        }


        .nav-pills .nav-link {
            color: white;
            font-weight: bold;
            padding: 10px 15px;
            border-radius: 5px;
            margin-bottom: 10px;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .nav-pills .nav-link:hover {
            background-color: rgba(255, 255, 255, 0.2);
        }


        .main {
            flex-grow: 1;
            padding: 20px;
            background-color: #f8f9fa;
            border-radius: 8px;
            margin-left: 20px;
        }


        .top-bar {
            margin-bottom: 20px;
            text-align: left;
        }

        .top-bar input[type="text"] {
            padding: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }


        .btn {
            padding: 8px 16px;
            border: none;
            cursor: pointer;
            font-size: 14px;
            border-radius: 5px;
            color: white;
            margin-left: 5px;
        }

        .btn-success {
            background-color: #28a745;
        }

        .btn-success:hover {
            background-color: #218838;
        }

        .btn-succes {
            background-color: #007bff;
        }

        .btn-succes:hover {
            background-color: #0056b3;
        }

        .btn-waring {
            background-color: #ffc107;
            color: black;
        }

        .btn-waring:hover {
            background-color: #e0a800;
        }


        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: white;
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }


        @media (max-width: 768px) {
            .container {
                flex-direction: column;
            }

            .main {
                margin-left: 0;
            }
        }
    </style>
</head>
<body>
<div class="container">
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
                <a class="nav-link text-body" href="nhanvien.jsp">Nhân Viên</a>
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
<br/>
<div class="main">
    <h6>ADD</h6>
    <div class="d-flex justify-content-end">
        <a href="/nhanvien/add" class="btn btn-success">Thêm nhân viên</a>
    </div>
    <h2>TABLE</h2>
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Tên</th>
            <th>Địa Chỉ</th>
            <th>SDT</th>
            <th>Mật Khẩu</th>
            <th>Ngày Tạo</th>
            <th>Trạng Thái</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${listNhanVien}" var="item">
            <tr>
                <td>${item.id}</td>
                <td>${item.ten}</td>
                <td>${item.diaChi}</td>
                <td>${item.sdt}</td>
                <td>${item.matKhau}</td>
                <td>${item.ngayTao}</td>
                <td>${item.trangThai == "1" ? "Đang Hoạt Động": "Ngừng Hoạt Động"}</td>
                <td>
                    <a href="/nhavien/detail/${nv.id}" class="btn btn-success">DETAIL</a>
                    <a href="/nhanvien/delete/?id=${nv.id}" class="btn btn-success">DELETE</a>
                    <a href="/nhanvien/update/${nv.id}" class="btn btn-success">UPDATE</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</div>
</body>
</html>