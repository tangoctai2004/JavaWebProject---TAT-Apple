<%-- 
    Document   : product
    Created on : 16 thg 5, 2025, 19:20:27
    Author     : tnteheh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/product.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap"
          rel="stylesheet">
                <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;700&display=swap" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body style="font-family: Montserrat, sans-serif">
        <%@ include file="header.jsp" %>
        <main style="" style="font-family: Montserrat, sans-serif">
            <div class="product-name-price">
                <div class="product-name-price_name" style="font-family: Montserrat, sans-serif">
                    <h3>iPhone 16 Pro Max 256GB Black Titanium</h3>
                </div>
                <div class="product-name-price_price" style="font-family: Montserrat, sans-serif">
                    <p>31,490,000 <u>đ</u></p>
                </div>
            </div>
        <hr/>
            <div class="container">
                <div class="product-container">
                    <div class="product-image">
                        <img src="images/iPhone/iPhone16 series/iPhone 16 Pro Max/Black Titanium/black-titanium-1.jpeg" alt=""/>
                    </div>
                    <div class="product-details">
                        <form action="">
                            <div class="product-details_name" style="margin-bottom: 30px">
                                <h2 style="font-family: Montserrat, sans-serif">iPhone 16 Pro Max 256GB Black Titanium</h2>
                            </div>
                            <div class="product-detail_price" style="margin-bottom: 30px; color: crimson; font-size: 17px; font-family: Monsterrat-Regular">
                                <p style="font-family: Montserrat, sans-serif">31,490,000 <u>đ</u></p>
                            </div>
                            <hr/>
                            <div class="product-details_capacity">
                                <h4 style="font-family: Montserrat, sans-serif">Capacity</h4>
                                <span class="product-details_capacity_button">
                                    <span class="product-details_capacity_button_item">
                                        256GB
                                    </span>
                                    <span class="product-details_capacity_button_item">
                                        512GB
                                    </span>
                                    <span class="product-details_capacity_button_item">
                                        1TB
                                    </span>
                                </span>
                            </div>
                            <div class="product-detail_delivery">
                                <span class="product-details_delivery_item">
                                    <i class="fa-solid fa-bag-shopping"></i>
                                    <span style="font-family: Montserrat, sans-serif">Hàng hoá: </span>
                                    <span>Còn hàng</span>
                                </span>
                            </div>
                            <div class="product-add-cart">
                                <button type="button" class="product-add-cart_btn">
                                 Thêm vào giỏ hàng
                                </button>
                            </div>
                        </form>
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
                        <p>iPhone 16 Pro Max. Sở hữu thiết kế titan tuyệt đẹp. Điều Khiển Camera. 4K Dolby Vision tốc độ 120 fps. Và chip A18 Pro.</p>
                        <h3>Tính năng nổi bật</h3>
                        <p>THIẾT KẾ TITAN TUYỆT ĐẸP ­– iPhone 16 Pro Max có thiết kế titan nhẹ và cứng cáp với màn hình Super Retina XDR 6,9 inch lớn hơn.1
                            Thiết bị bền bỉ tuyệt vời với chất liệu Ceramic Shield thế hệ mới nhất, bền chắc gấp 2 lần mặt kính các điện thoại thông minh khác.</p>
                        <p>NẮM TOÀN QUYỀN ĐIỀU KHIỂN CAMERA – Điều Khiển Camera giúp bạn truy cập nhanh các công cụ camera dễ dàng hơn, như thu phóng hoặc
                            độ sâu trường ảnh, nhờ vậy bạn có thể chụp ảnh hoàn hảo siêu nhanh.</p>
                        <p>QUAY CHỤP ẤN TƯỢNG – Với camera Ultra Wide 48MP tiên tiến hơn, bạn có thể ghi lại những chi tiết đầy mê hoặc trong những tấm ảnh chụp
                            cận cảnh và ảnh chụp góc rộng bao quát. Bạn muốn ảnh chụp sắc nét hơn từ khoảng cách xa hơn? Camera Telephoto 5x giúp bạn dễ dàng làm điều đó.</p>
                        <p>QUAY VIDEO ĐẲNG CẤP PRO – Nâng tầm video bạn quay lên đẳng cấp hoàn toàn mới với 4K Dolby Vision tốc độ 120 fps, nhờ
                            sự hỗ trợ của camera Fusion 48MP, và các micrô chất lượng chuẩn studio để thu âm chất lượng cao hơn. Một studio Pro
                            ngay trong túi bạn.</p>
                        <p>PHONG CÁCH NHIẾP ẢNH – Phong Cách Nhiếp Ảnh thế hệ mới nhất cho phép bạn linh hoạt sáng tạo hơn, nhờ đó bạn có thể biến
                            hóa khiến mỗi bức ảnh đều đậm chất riêng của mình. Và nhờ những tiến bộ trong quy trình xử lý hình ảnh, bạn nay có thể
                            đổi qua đổi lại mọi phong cách, mọi lúc.</p>
                        <p>SỨC MẠNH CỦA A18 PRO – Chip A18 Pro hỗ trợ các tính năng chụp ảnh và quay video tiên tiến như Điều Khiển Camera, đồng
                            thời mang đến hiệu năng đồ họa vượt trội để chơi game AAA.</p>
                        <p>BƯỚC NHẢY VỌT VỀ THỜI LƯỢNG PIN – iPhone 16 Pro Max mang lại hiệu năng tiết kiệm điện đáng kinh ngạc với thời gian
                            xem video lên đến 33 giờ.2 Sạc qua USB-C hoặc gắn vào bộ sạc MagSafe để sạc không dây nhanh hơn.3</p>
                        <p>TÙY CHỈNH IPHONE CỦA BẠN – Với iOS 18, bạn có thể chọn sắc thái màu cho các biểu tượng trên Màn Hình
                            Chính với màu bất kỳ. Tìm ảnh ưa thích nhanh hơn bằng ứng dụng Ảnh được thiết kế mới. Và thêm các hiệu ứng động vui nhộn
                            cho bất kỳ từ, cụm từ hoặc biểu tượng nào trong iMessage.4</p>
                        <p>
                            CÁC TÍNH NĂNG AN TOÀN QUAN TRỌNG – Với tính năng Phát Hiện Va Chạm, iPhone có thể phát hiện va chạm ô tô nghiêm trọng
                            và gọi trợ giúp khi cần kíp.5</p>
                        <h3>Thông báo pháp lý</h3>
                        <p>1Màn hình có các góc bo tròn. Khi tính theo hình chữ nhật, kích thước màn hình theo đường chéo là 6,12 inch (iPhone 16),
                            6,69 inch (iPhone 16 Plus), 6,27 inch (iPhone 16 Pro) hoặc 6,86 inch (iPhone Pro Max). Diện tích hiển thị thực tế nhỏ hơn.</p>
                        <p>2Thời lượng pin khác nhau tùy theo cách sử dụng và cấu hình. Truy cập apple.com/vn/batteries để biết thêm thông tin.</p>
                        <p>3Phụ kiện được bán riêng.</p>
                        <p>4Một số tính năng không khả dụng tại một số quốc gia hoặc khu vực.</p>
                        <p>5iPhone 16 và iPhone 16 Pro có thể phát hiện va chạm ô tô nghiêm trọng và gọi trợ giúp. Yêu cầu kết nối mạng di động hoặc
                            cuộc gọi Wi-Fi.</p>
                        <h3>Thông số kỹ thuật</h3>
                        <p>Truy cập apple.com/vn/iphone/compare để xem cấu hình đầy đủ.</p>
                    </div>
                </div>
                <div class="contaier-discribe_img" style="text-align: center">
                    <img style="width: 1300px" src="images/iPhone/iPhone16 series/Banner-Product-iPhone.jpeg" alt=""/>
                </div>
            </div>
        </main>
        <%@ include file="footer.jsp" %>
    </body>
</html>
