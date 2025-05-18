<%-- 
    Document   : home
    Created on : 16 thg 5, 2025, 13:24:36
    Author     : tnteheh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css"/>
        <link href="assets/iphone.css" rel="stylesheet" type="text/css"/>
        <link href="assets/home.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file="header.jsp" %>
        <main style="font-family: Montserrat, sans-serif">
        <!-- SLIDE CHẠY ẢNH  -->
            <div class="slide-show" style="margin-bottom: 50px;">
            <div class="list-images">
                <img class = "banner" src="images/Banner1.jpeg"  alt="">
                <img class = "banner" src="images/Banner2.jpeg"  alt="">
                <img class = "banner" src="images/Banner3.jpeg"  alt="">
                <img class = "banner" src="images/Banner4.jpeg"  alt="">
                <img class = "banner" src="images/Banner5.jpeg"  alt="">
            </div>
            <div class="btns">
                <div class="btn-left btn"><i class='bx-chevron-left'>
                    <i class="fa-solid fa-arrow-left"></i>
                </i></div>
                <div class="btn-right btn"><i class='bx-chevron-right'>
                    <i class="fa-solid fa-arrow-right"></i>
                </i></div>
            </div> 
            <div class="index-images">
                <div class="index-item index-item-0 active"></div>
                <div class="index-item index-item-1"></div>
                <div class="index-item index-item-2"></div>
                <div class="index-item index-item-3"></div>
                <div class="index-item index-item-4"></div>
                </div>
                <script>
                    const listImage = document.querySelector('.list-images')
                    const imgs = document.querySelectorAll('.banner')
                    const btnLeft = document.querySelector('.btn-left')
                    const btnRight = document.querySelector('.btn-right')
                    const length = imgs.length
                    let current = 0

                    const handleChangeSlide = () => {
                        if (current == length - 1) {
                            current = 0
                            let width = imgs[0].offsetWidth
                            listImage.style.transform = `translateX(0px)`
                            document.querySelector('.active').classList.remove('active')
                            document.querySelector('.index-item-'+ current).classList.add('active')
                        } else {
                            current ++
                            let width = imgs[0].offsetWidth
                            listImage.style.transform = `translateX(${width * -1 * current}px)`
                            document.querySelector('.active').classList.remove('active')
                            document.querySelector('.index-item-'+ current).classList.add('active')
                        }
                    }

                    let handleEventChangeSlide = setInterval(handleChangeSlide, 4000)

                    btnRight.addEventListener('click', () => {
                        clearInterval(handleEventChangeSlide)
                        handleChangeSlide()
                        handleEventChangeSlide = setInterval(handleChangeSlide, 4000)
                    })

                    btnLeft.addEventListener('click', () => {
                        clearInterval(handleEventChangeSlide)
                        if (current == 0) {
                            current = length - 1
                            let width = imgs[0].offsetWidth
                            listImage.style.transform = `translateX(${width * -1 * current}px)`
                            document.querySelector('.active').classList.remove('active')
                            document.querySelector('.index-item-'+ current).classList.add('active')
                        } else {
                            current --
                            let width = imgs[0].offsetWidth
                            listImage.style.transform = `translateX(${width * -1 * current}px)`
                            document.querySelector('.active').classList.remove('active')
                            document.querySelector('.index-item-'+ current).classList.add('active')
                        }
                        handleEventChangeSlide = setInterval(handleChangeSlide, 4000)
                    }) 
                </script>   
            </div><!-- comment -->

            <div>
                <h1>Sản phẩm nổi bật</h1>
            </div>
            <div class="all-product-list">
                <div class="all-product-frame">
                    <c:forEach var="product" items="${productList}">
                        <div class="all-product">
                            <a href="infor-product.jsp?productID=${product.productID}">
                                <img class="all-product-img" src="${product.imageURL}" alt="${product.productName}">
                            </a>
                            <p class="all-product-name">${product.productName}</p>
                            <p class="all-product-price">${product.basePrice} <u>đ</u></p>
                            <div class="all-product-color">
                                <span>
                                    <img class="all-product-color_icon" src="${product.imageColorURL}" alt="Color icon"/>
                                </span>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>      
                                
                <!-- WHY-CHOOSE-TAT-APPLE  -->
            <div class="why-choose-TAT-Apple">
                <img src="images/Why-choose-TAT-Apple.png"
                    style="width: 100%; padding-left: 300px; padding-right: 300px" alt="">
            </div>

                <!-- WORKSHOP-TIN TỨC  -->
            <div class="workshops-tintuc">
                <div class="workshop">
                    <a href="https://www.google.com/maps/place/H%E1%BB%8Dc+vi%E1%BB%87n+C%C3%B4ng+ngh%E1%BB%87+B%C6%B0u+ch%C3%ADnh+vi%E1%BB%85n+th%C3%B4ng/@20.978057,105.7938073,15z/data=!4m6!3m5!1s0x3135accdd8a1ad71:0xa2f9b16036648187!8m2!3d20.980913!4d105.7874165!16s%2Fg%2F12168p16?entry=ttu&g_ep=EgoyMDI1MDIxOS4xIKXMDSoASAFQAw%3D%3D">
                        <img src="images/Workshop.png" alt="workshop">
                        <p class="text-workshop">Workshop</p>
                    </a>
                </div>
                <div class="tintuc">
                        <a href="">
                            <img src="images/TinTuc.png" alt="tintuc">
                            <p class="text-tintuc">Tin tức</p>
                        </a>
                </div>
            </div>
        </main>
        <%@ include file="footer.jsp" %>
    </body>
</html>
