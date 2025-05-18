<%-- 
    Document   : admin-products
    Created on : 17 thg 5, 2025, 20:13:38
    Author     : tnteheh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400&display=swap" rel="stylesheet">
    <link href="assets/admin-products.css" rel="stylesheet" type="text/css"/>
    <link href="assets/admin-dashboard.css" rel="stylesheet" type="text/css"/>
    <link href="assets/admin-edit-products.css" rel="stylesheet" type="text/css"/>
    <title>Sửa Sản Phẩm</title>
</head>
<body>
    <div class="container">
        <div class="sidebar">
            <div class="logo" style="display: flex; justify-content: center; align-items: center;">
                <img src="images/Logo.jpg" style="width: 100%; border-radius: 10px;" alt="">
            </div>
            <div class="menu">
                <h4>MENU</h4>
                <ul>
                    <li><a href="admin-dashboard.jsp">Tổng quan</a></li>
                    <li class="active"><a href="admin-products.jsp">Sản phẩm</a></li>
                    <li><a href="admin-categories.jsp">Danh mục</a></li>
                    <li><a href="admin-variant.jsp">Phiên bản sản phẩm</a></li>
                    <li><a href="admin-admins.jsp">Quản trị viên</a></li>
                    <li><a href="admin-users.jsp">Người dùng</a></li>
                </ul>
                <div class="logout-section">
                    <a href="logout.jsp">Đăng xuất</a>
                </div>
            </div>
        </div>
        <!-- Main Content -->
        <div class="main-content">
            <!-- Header -->
            <div class="header">
                <div class="search-bar">
                    <input type="text" placeholder="Nhập để tìm kiếm...">
                </div>
                <div class="user-profile">
                    <div>
                        <p style="margin-right: 10px;">Xin chào, </p>
                    </div>
                    <div class="user-info" style="font-family: 'Montserrat-Regular';">
                        <span>Tạ Ngọc Tài</span>
                    </div>
                </div>
            </div>
            <!-- Title -->
            <div class="header-title">
                <h1 style="font-family: 'Montserrat-Regular';">THÊM SẢN PHẢM</h1>
            </div>
            <!-- Edit Product Form -->
            <div class="edit-product-form">
                <form action="" method="" enctype="">
                    <input type="hidden" name="id" value="">
                    <div class="form-group">
                        <label for="product-name">Tên sản phẩm</label>
                        <input type="text" id="product-name" name="product-name" required>
                    </div>
                    <div class="form-group">
                        <label for="product-name">Thương hiệu</label>
                        <input type="text" id="product-name" name="product-name" required>
                    </div>
                    <div class="form-group">
                        <label for="product-name">Danh mục</label>
                        <input type="text" id="product-name" name="product-name" required>
                    </div>
                    <div class="form-group">
                        <label for="price">Giá (VND)</label>
                        <input type="number" id="price" name="price" required>
                    </div>
                    <div class="form-group">
                        <label for="description">Mô tả</label>
                        <textarea id="description" name="description" required></textarea>
                    </div>
                    <div class="form-group">
                        <label for="capacity">Dung lượng</label>
                        <input type="text" id="capacity" name="capacity" required>
                    </div>
                    <div class="form-group">
                        <label for="image">Hình ảnh</label>
                        <img src="" alt="Current Image" class="current-image" style="display: none;">
                        <input type="file" id="image" name="image" accept="image/*">
                    </div>
                    <div class="form-buttons">
                        <button type="submit" class="add-button">Thêm</button>
                        <a href="admin-products.jsp" class="cancel-button">Hủy</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>