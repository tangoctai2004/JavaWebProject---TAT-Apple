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
        <%@ include file="admin-navbar-left.jsp" %>

        <!-- Main Content -->
        <div class="main-content">
            <%@ include file="admin-header.jsp" %>
            <div class="header-title">
                <h1 style="font-family: 'Montserrat-Regular';">SỬA PHIÊN BẢN SẢN PHẨM</h1>
            </div>
            <!-- Edit Product Form -->
            <div class="edit-product-form">
                <form action="" method="" enctype="">
                    <input type="hidden" name="id" value="">
                    <div class="form-group">
                        <label for="id-product">ID sản phẩm</label>
                        <input type="text" id="id-product" name="id-product" required>
                    </div>
                    <div class="form-group">
                        <label for="capacity">DUNG LƯỢNG</label>
                        <input type="text" id="capacity" name="capacity" required>
                    </div>
                    <div class="form-group">
                        <label for="price">Giá</label>
                        <input type="text" id="price" name="price" required>
                    </div>
                    <div class="form-group">
                        <label for="stock">Số lượng</label>
                        <input type="text" id="stock" name="stock" required>
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