<%-- 
    Document   : admin-navbar-left
    Created on : 19 thg 5, 2025, 20:31:23
    Author     : tnteheh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/admin-dashboard.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="sidebar">
            <div class="logo" style="display: flex; justify-content: center; align-items: center;">
                <img src="images/Logo.jpg" style="width: 100%; border-radius: 10px;" alt="">
            </div>
            <div class="menu">
                <h4>MENU</h4>
                <ul>
                    <li><a href="admin-dashboard.jsp">Tổng quan</a></li>
                    <li><a href="admin-products.jsp">Sản phẩm</a></li>
                    <li><a href="admin-categories">Danh mục</a></li>
                    <li><a href="admin-variant.jsp">Phiên bản sản phẩm</a></li>
                    <li><a href="admin-admins.jsp">Quản trị viên</a></li>
                    <li><a href="admin-users.jsp">Người dùng</a></li>
                    <li><a href="AdminLogoutServlet">Đăng xuất</a></li>
                </ul>
            </div>
        </div>
    </body>
</html>
