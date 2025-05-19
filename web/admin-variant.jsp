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
        <%@ include file="admin-navbar-left.jsp" %>

        <!-- Main Content -->
        <div class="main-content">
            <%@ include file="admin-header.jsp" %>
            <div class="header-title">
                <h1 style="font-family: 'Montserrat-Regular';">QUẢN LÝ PHIÊN BẢN SẢN PHẨM</h1>
            </div>
            <div>
                <a href="admin-add-variant.jsp" class="add-product-button">Thêm phiên bản</a>
            </div>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>ID sản phẩm</th>
                            <th>Dung lượng</th>
                            <th>Giá</th>
                            <th>Số lượng còn</th>
                            <th>Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Dữ liệu sản phẩm sẽ được thêm vào đây -->
                        <tr>
                            <td>1</td>
                            <td>1</td>
                            <td>256GB</td>
                            <td>42990000</td>
                            <td>30</td>
                            <td><button class="edit-button">Sửa</button> | <button class="delete-button">Xóa</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    </body>
</html>
