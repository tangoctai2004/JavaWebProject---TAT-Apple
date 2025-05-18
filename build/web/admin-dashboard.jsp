<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="assets/admin-dashboard.css" rel="stylesheet" type="text/css"/>
    <title>TailAdmin Dashboard</title>
</head>
<body>
    <div class="container">
        <div class="sidebar">
            <div class="logo" style="display: flex; justify-content: center; align-items: center;">
                <img src="images/Logo.jpg" style="width: 100%; border-radius: 10px; " alt="">
            </div>
            <div class="menu">
                <h4>MENU</h4>
                <ul>
                    <li><a href="admin-dashboard.jsp">Tổng quan</a></li>
                    <li><a href="admin-products.jsp">Sản phẩm</a></li>
                    <li><a href="admin-categories.jsp">Danh mục</a></li>
                    <li><a href="admin-variant.jsp">Phiên bản sản phẩm</a></li>
                    <li><a href="admin-admins.jsp">Quản trị viên</a></li>
                    <li><a href="admin-users.jsp">Người dùng</a></li>
                    <li><a herf="">Đăng xuất</a></li>
                </ul>
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
                    <div class="user-info">
                        <span>Tạ Ngọc Tài</span>
                    </div>
                </div>
            </div>

            <div class="header-title">
                <h1>TỔNG QUAN BÁN HÀNG TECH APPLE TREND</h1>
            </div>
            <!-- Stats Cards -->
            <div class="stats-cards">
                <div class="card">
                    <div class="icon">🛒</div>
                    <h3>$45.2K</h3>
                    <p>Tổng doanh thu</p>
                </div>
                <div class="card">
                    <div class="icon">📦</div>
                    <h3>2,450</h3>
                    <p>Tổng số sản phẩm bán ra</p>
                </div>
                <div class="card">
                    <div class="icon">👥</div>
                    <h3>3,456</h3>
                    <p>Tổng số khách hàng</p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>