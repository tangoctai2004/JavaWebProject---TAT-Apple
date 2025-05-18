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
        <link href="assets/admin-products.css" rel="stylesheet" type="text/css"/>
        <link href="assets/admin-dashboard.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
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
                <div>
                    <h1>

                    </h1>
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
                <h1 style="font-family: 'Montserrat-Regular';">SẢN PHẨM</h1>
            </div>
            <!-- Nút thêm sản phẩm -->
            <div>
                <a href="admin-add-products.jsp" class="add-product-button">Thêm sản phẩm</a>
            </div>
            <!-- Danh sách sản phẩm -->
            <div>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Tên sản phẩm</th>
                            <th>Thương hiệu</th>
                            <th>Danh mục</th>
                            <th>Giá</th>
                            <th>Mô tả</th>
                            <th>Dung lượng</th>
                            <th>Hình ảnh</th>
                            <th>Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Dữ liệu sản phẩm sẽ được thêm vào đây -->
                        <tr>
                            <td>1</td>
                            <td>iPhone 14</td>
                            <td>Apple</td>
                            <td>iPhone</td>
                            <td>2000000</td>
                            <td>ip14</td>
                            <td><span class="capacity"></span></td>
                            <td><img src="images/iphone14-purple.jpeg" alt=""/></td>
                            <td><button class="edit-button">Sửa</button> | <button class="delete-button">Xóa</button></td>
                        </tr>
                        <!-- Thêm nhiều sản phẩm khác ở đây -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    </body>
</html>
