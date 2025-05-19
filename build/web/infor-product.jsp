<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Product"%>
<%@page import="model.ProductVariant"%>
<%@page import="dal.InforProductDAO"%>

<%
    String productIDParam = request.getParameter("productID");
    Product product = null;
    String baseName = "";
    List<ProductVariant> variants = null;

    if (productIDParam != null) {
        try {
            int productID = Integer.parseInt(productIDParam);
            InforProductDAO dao = new InforProductDAO();
            product = dao.getProductWithVariants(productID);
            if (product != null) {
                baseName = product.getProductName();
                variants = product.getVariants();
            }
        } catch (NumberFormatException e) {
            // Lỗi nếu productID không hợp lệ
        }
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>TAT Apple - <%= product != null ? product.getProductName() : "Sản phẩm không tồn tại" %></title>
        <link href="assets/infor-product.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    </head>
    <body style="font-family: Montserrat, sans-serif">
        <%@ include file="header.jsp" %>

        <main>
            <%
                if (product == null) {
            %>
                <h2>Sản phẩm không tồn tại hoặc ID không hợp lệ.</h2>
            <%
                } else {
                    // Lấy giá mặc định là giá của phiên bản đầu tiên (nếu có)
                    ProductVariant defaultVariant = variants != null && !variants.isEmpty() ? variants.get(0) : null;
                    String defaultPrice = defaultVariant != null ? String.format("%,.0f", defaultVariant.getPrice()) : "N/A";
                    String defaultCapacity = defaultVariant != null ? defaultVariant.getCapacity() : "";
            %>
                <div class="product-name-price">
                    <div>
                        <h3 id="product-name-header"><%= baseName + " " + defaultCapacity %></h3>
                    </div>
                    <div>
                        <p id="product-price-header" class="product-name-price_price"><%= defaultPrice %> <u>đ</u></p>
                    </div>
                </div>
                <hr>
                <div class="container">
                    <div class="product-container">
                        <div class="product-image">
                            <img src="<%= product.getImageURL() %>" alt="<%= baseName %>"/>
                        </div>
                        <div class="product-details">
                            <div class="product-details_name" id="product-name-detail" style="margin-bottom: 30px">
                                <h2><%= baseName + " " + defaultCapacity %></h2>
                            </div>
                            <div class="product-detail_price" id="product-price-detail" style="margin-bottom: 30px; color: crimson; font-size: 17px">
                                <p><%= defaultPrice %> <u>đ</u></p>
                            </div>
                            <hr>
                            <div class="product-details_capacity">
                                <h4>Variant</h4>
                                <span class="product-details_capacity_button">
                                    <%
                                        for (ProductVariant variant : variants) {
                                            String variantPrice = String.format("%,.0f", variant.getPrice());
                                    %>
                                    <button class="capacity-button" style="font-family: Montserrat, sans-serif;" data-price="<%= variantPrice %>" data-capacity="<%= variant.getCapacity() %>">
                                        <%= variant.getCapacity() %>
                                    </button>
                                    <%
                                        }
                                    %>
                                </span>
                            </div>
                            <div class="product-detail_delivery">
                                <span class="product-detail_delivery_item">
                                    <i class="fa-solid fa-bag-shopping"></i>
                                    <span>Hàng hoá:</span>
                                    <span><%= variants.stream().anyMatch(v -> v.getStock() > 0) ? "Còn hàng" : "Hết hàng" %></span>
                                </span>
                            </div>
                            
                            <div>
                                <button type="button" class="product-add-cart_btn">
                                    Thêm vào giỏ hàng
                                </button>
                            </div>    
                        </div>
                    </div>
                </div>

                <div class="container-discribe" style="margin-top: 50px">
                    <div class="container-discribe-box">
                        <div class="container-discribe_btn">
                            Mô tả
                        </div>
                    </div>
                    <div class="container-discribe-box">
                        <div class="container-discribe_detail">
                            <p><%= product.getDescription() %></p>
                        </div>
                    </div>
                </div>
            <%
                }
            %>
        </main>

        <%@ include file="footer.jsp" %>

        <script>
            document.addEventListener("DOMContentLoaded", () => {
                const capacityButtons = document.querySelectorAll(".capacity-button");
                const priceHeader = document.getElementById("product-price-header");
                const priceDetail = document.getElementById("product-price-detail");
                const nameHeader = document.getElementById("product-name-header");
                const nameDetail = document.querySelector(".product-details_name h2"); // Chỉ lấy nội dung của h2
                const baseName = "<%= baseName.replace("\"", "\\\"") %>";

                // Đặt giá mặc định từ phiên bản đầu tiên
                if (capacityButtons.length > 0) {
                    const defaultButton = capacityButtons[0];
                    defaultButton.classList.add("active");
                }

                capacityButtons.forEach(button => {
                    button.addEventListener("click", () => {
                        const price = button.getAttribute("data-price");
                        const capacity = button.getAttribute("data-capacity");

                        // Cập nhật giá
                        priceHeader.textContent = price + " đ";
                        priceDetail.textContent = price + " đ";

                        // Cập nhật tên sản phẩm
                        nameHeader.textContent = baseName + " " + capacity;
                        nameDetail.textContent = baseName + " " + capacity;

                        // Bỏ active cho nút cũ
                        capacityButtons.forEach(btn => btn.classList.remove("active"));
                        // Thêm active cho nút được chọn
                        button.classList.add("active");
                    });
                });
            });
        </script>
    </body>
</html>