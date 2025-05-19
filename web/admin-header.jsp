<%-- 
    Document   : admin-header
    Created on : 19 thg 5, 2025, 20:33:57
    Author     : tnteheh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Admin"%>
<%
    Admin admin = (Admin) session.getAttribute("admin");
    if (admin == null) {
        response.sendRedirect("admin-login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/admin-dashboard.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Header -->
            <div class="header">
                <div class="search-bar">
                    <input type="text" placeholder="Nhập để tìm kiếm...">
                </div>
                <div class="user-profile">
                    <div>
                        <p style="margin-right: 10px;">Xin chào,</p>
                    </div>
                    <div class="user-info">
                        <span><%= admin.getFullName() %></span>
                    </div>
                </div>
            </div>
    </body>
</html>
