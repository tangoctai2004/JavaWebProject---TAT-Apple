<%-- 
    Document   : cart
    Created on : 17 thg 5, 2025, 18:47:52
    Author     : tnteheh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/cart.css" rel="stylesheet" type="text/css"/>
        <title>Giỏ hàng</title>
    </head>
    <body>
        <%@ include file="header.jsp" %>
        <main>
            <div class="container">
                <h2 class="title">Giỏ hàng của bạn</h2>
                <form action="CartServlet" method="post">
                    <table class="cart-table">
                        <thead>
                            <tr>
                                <th>Sản phẩm</th>
                                <th>Giá</th>
                                <th>Số lượng</th>
                                <th>Tổng</th>
                                <th>Hành động</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>iPhone 15 Pro Max (256GB)</td>
                                <td>32,990,000 VND</td>
                                <td><input type="number" name="quantity_1" value="1" min="1"></td>
                                <td>32,990,000 VND</td>
                                <td><button type="submit" name="action" value="remove_1" class="remove-btn">Xóa</button></td>
                            </tr>
                            <tr>
                                <td>MacBook Pro 14 inch (512GB)</td>
                                <td>55,990,000 VND</td>
                                <td><input type="number" name="quantity_2" value="1" min="1"></td>
                                <td>55,990,000 VND</td>
                                <td><button type="submit" name="action" value="remove_2" class="remove-btn">Xóa</button></td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="cart-total">
                        <span>Tổng cộng:</span>
                        <span>88,980,000 VND</span>
                    </div>
                    <button type="submit" name="action" value="checkout" class="checkout-btn">Thanh toán</button>
                </form>
            </div>
        </main>
        <%@ include file="footer.jsp" %>
    </body>
</html>
