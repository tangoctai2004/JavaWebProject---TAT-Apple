<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.CartItem"%>
<%@page import="java.util.List"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%
    List<CartItem> cartItems = (List<CartItem>) request.getAttribute("cartItems");
    if (cartItems == null) cartItems = new java.util.ArrayList<>();

    NumberFormat formatter = NumberFormat.getInstance(new Locale("vi", "VN"));
    long total = 0;
%>
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
                            <%
                                for (CartItem item : cartItems) {
                                    long itemTotal = item.getPrice() * item.getQuantity();
                                    total += itemTotal;
                            %>
                            <tr>
                                <td><%= item.getProductName() %> (<%= item.getCapacity() %>)</td>
                                <td><%= formatter.format(item.getPrice()) %> VND</td>
                                <td>
                                    <input type="number" name="quantity_<%= item.getVariantId() %>" value="<%= item.getQuantity() %>" min="1">
                                </td>
                                <td><%= formatter.format(itemTotal) %> VND</td>
                                <td>
                                    <button type="submit" name="action" value="remove_<%= item.getVariantId() %>" class="remove-btn">Xóa</button>
                                </td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                    <div class="cart-total">
                        <span>Tổng cộng:</span>
                        <span><%= formatter.format(total) %> VND</span>
                    </div>
                    <button type="submit" name="action" value="update" class="checkout-btn">Cập nhật giỏ hàng</button>
                    <button type="submit" name="action" value="checkout" class="checkout-btn">Thanh toán</button>
                </form>
            </div>
        </main>
        <%@ include file="footer.jsp" %>
    </body>
</html>