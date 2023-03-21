<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<body>

<!--================Home Banner Area =================-->
<section class="banner_area">
    <div class="banner_inner d-flex align-items-center">
        <div class="container">
            <div
                    class="banner_content d-md-flex justify-content-between align-items-center"
            >
                <div class="mb-3 mb-md-0">
                    <h2>Chi tiết sản phẩm</h2>
                </div>
                <div class="page_link">
                    <a href="<c:url value="/client"/>">Trang chủ</a>
                    <a href="">Chi tiết sản phẩm</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================End Home Banner Area =================-->

<!--================Single Product Area =================-->
<div class="product_image_area">
    <div class="container">
        <div class="row s_product_inner">
            <div class="col-lg-6">
                <div class="s_product_img">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
<%--                        <ol class="carousel-indicators">--%>
<%--                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active">--%>
<%--                                <img src="<c:url value="/resources/image/product/pro${productId.id}.jpg"/>"/>--%>
<%--                            </li>--%>
<%--                            <li--%>
<%--                                    data-target="#carouselExampleIndicators"--%>
<%--                                    data-slide-to="1">--%>
<%--                                <img src="<c:url value="/resources/theme1/assets_client/img/product/single-product/phone2-min.jpg"/>"/>--%>
<%--                            </li>--%>
<%--                            <li--%>
<%--                                    data-target="#carouselExampleIndicators"--%>
<%--                                    data-slide-to="2">--%>
<%--                                <img src="<c:url value="/resources/theme1/assets_client/img/product/single-product/phone3-min.jpg"/>"/>--%>
<%--                            </li>--%>
<%--                        </ol>--%>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="<c:url value="/resources/image/product/pro${productId.id}.jpg"/>" class="d-block w-100" alt="First slide"/>
                            </div>
<%--                            <div class="carousel-item">--%>
<%--                                <img src="<c:url value="/resources/theme1/assets_client/img/product/single-product/phone2.png"/>" class="d-block w-100" alt="First slide"/>--%>
<%--                            </div>--%>
<%--                            <div class="carousel-item">--%>
<%--                                <img src="<c:url value="/resources/theme1/assets_client/img/product/single-product/phone3.png"/>" class="d-block w-100" alt="First slide"/>--%>
<%--                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-5 offset-lg-1">
                <!-- ProductId đc khai báo ở trang CategoryController. Đc dùng để hiện thị các thành phần của sản phẩm -->

                <!--====== Lấy id sản phẩm để thêm vào giỏ hàng (CartController) =======-->
                <form method="get" action="<c:url value="/client/cart/addCart/${productId.id}"/>">
                    <div class="s_product_text">
                        <h3>${productId.name}</h3> <!-- Tên chi tiết sản phẩm -->
                        <h2><fmt:formatNumber value="${productId.price}" type="currency"/></h2>
                        <ul class="list">
                            <li>
                                <a class="active" href="#">
                                    <span>Thương hiệu</span> : ${productId.brandId.name}</a
                                >
                            </li>
                            <!--                <li>-->
                            <!--                  <a href="#"> <span>Availibility</span> : In Stock</a>-->
                            <!--                </li>-->
                            <p>${productId.uniBrief}</p>
                        </ul>
                        <div class="product_count">
                            <label for="qty">Số :</label>
                            <input
                                    type="text"
                                    name="qty"
                                    id="sst"
                                    maxlength="12"
                                    value="1"
                                    title="Quantity:"
                                    class="input-text qty"
                            />
                            <button
                                    onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
                                    class="increase items-count"
                                    type="button"
                            >
                                <i class="lnr lnr-chevron-up"></i>
                            </button>
                            <button
                                    onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
                                    class="reduced items-count"
                                    type="button"
                            >
                                <i class="lnr lnr-chevron-down"></i>
                            </button>
                        </div>
                        <div class="card_area">
                            <button class="main_btn" href="#" type="submit">Thêm vào giỏ </button>
                            <a class="icon_btn" href="#">
                                <i class="lnr lnr lnr-diamond"></i>
                            </a>
                            <a class="icon_btn" href="#">
                                <i class="lnr lnr lnr-heart"></i>
                            </a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!--================End Single hàng
================Product Description Area =================-->
<section class="product_description_area">
    <div class="container">
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item">
                <a
                        class="nav-link"
                        id="home-tab"
                        data-toggle="tab"
                        href="#home"
                        role="tab"
                        aria-controls="home"
                        aria-selected="true"
                >Đặc điểm nổi bật</a
                >
            </li>
            <li class="nav-item">
                <a
                        class="nav-link"
                        id="profile-tab"
                        data-toggle="tab"
                        href="#profile"
                        role="tab"
                        aria-controls="profile"
                        aria-selected="false"
                >Thông số kĩ thuật</a
                >
            </li>
            <li class="nav-item">
                <a
                        class="nav-link"
                        id="contact-tab"
                        data-toggle="tab"
                        href="#contact"
                        role="tab"
                        aria-controls="contact"
                        aria-selected="false"
                >Bình luận</a
                >
            </li>
            <li class="nav-item">
                <a
                        class="nav-link active"
                        id="review-tab"
                        data-toggle="tab"
                        href="#review"
                        role="tab"
                        aria-controls="review"
                        aria-selected="false"
                >Reviews</a
                >
            </li>
        </ul>
        <div class="tab-content" id="myTabContent">
            <div
                    class="tab-pane fade"
                    id="home"
                    role="tabpanel"
                    aria-labelledby="home-tab"
            >

                ${productId.description}
            </div>
            <div
                    class="tab-pane fade"
                    id="profile"
                    role="tabpanel"
                    aria-labelledby="profile-tab"
            >
                <div class="table-responsive">
                    <table class="table">
                        <tbody>
                        <tr>
                            <td>
                                <h5>Màn hình:</h5>
                            </td>
                            <td>
                                <h5>TFT LCD, 6.5", Full HD+</h5>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h5>Hệ điều hành:</h5>
                            </td>
                            <td>
                                <h5>Android 10</h5>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h5>CPU:</h5>
                            </td>
                            <td>
                                <h5>Snapdragon 665 8 nhân</h5>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h5>RAM:</h5>
                            </td>
                            <td>
                                <h5> 8 GB</h5>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h5>Bộ nhớ trong:</h5>
                            </td>
                            <td>
                                <h5> 128 GB</h5>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h5>Thẻ nhớ:</h5>
                            </td>
                            <td>
                                <h5> MicroSD, hỗ trợ tối đa 256 GB</h5>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h5>Thẻ SIM:</h5>
                            </td>
                            <td>
                                <h5>2 Nano SIM, Hỗ trợ 4G</h5>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h5>Dung lượng pin:</h5>
                            </td>
                            <td>
                                <h5>5000 mAh, có sạc nhanh</h5>

                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div
                    class="tab-pane fade"
                    id="contact"
                    role="tabpanel"
                    aria-labelledby="contact-tab"
            >
                <div class="row">
                    <div class="col-lg-6">
                        <div class="comment_list">
                            <div class="review_item">
                                <div class="media">
                                    <div class="d-flex">
                                        <img
                                                src="img/product/single-product/review-1.png"
                                                alt=""
                                        />
                                    </div>
                                    <div class="media-body">
                                        <h4>Blake Ruiz</h4>
                                        <h5>12th Feb, 2017 at 05:56 pm</h5>
                                        <a class="reply_btn" href="#">Reply</a>
                                    </div>
                                </div>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                    sed do eiusmod tempor incididunt ut labore et dolore magna
                                    aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                                    ullamco laboris nisi ut aliquip ex ea commodo
                                </p>
                            </div>
                            <div class="review_item reply">
                                <div class="media">
                                    <div class="d-flex">
                                        <img
                                                src="img/product/single-product/review-2.png"
                                                alt=""
                                        />
                                    </div>
                                    <div class="media-body">
                                        <h4>Blake Ruiz</h4>
                                        <h5>12th Feb, 2017 at 05:56 pm</h5>
                                        <a class="reply_btn" href="#">Reply</a>
                                    </div>
                                </div>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                    sed do eiusmod tempor incididunt ut labore et dolore magna
                                    aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                                    ullamco laboris nisi ut aliquip ex ea commodo
                                </p>
                            </div>
                            <div class="review_item">
                                <div class="media">
                                    <div class="d-flex">
                                        <img
                                                src="img/product/single-product/review-3.png"
                                                alt=""
                                        />
                                    </div>
                                    <div class="media-body">
                                        <h4>Blake Ruiz</h4>
                                        <h5>12th Feb, 2017 at 05:56 pm</h5>
                                        <a class="reply_btn" href="#">Reply</a>
                                    </div>
                                </div>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                    sed do eiusmod tempor incididunt ut labore et dolore magna
                                    aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                                    ullamco laboris nisi ut aliquip ex ea commodo
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="review_box">
                            <h4>Post a comment</h4>
                            <form
                                    class="row contact_form"
                                    action="contact_process.php"
                                    method="post"
                                    id="contactForm"
                                    novalidate="novalidate"
                            >
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input
                                                type="text"
                                                class="form-control"
                                                id="name"
                                                name="name"
                                                placeholder="Your Full name"
                                        />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input
                                                type="email"
                                                class="form-control"
                                                id="email"
                                                name="email"
                                                placeholder="Email Address"
                                        />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input
                                                type="text"
                                                class="form-control"
                                                id="number"
                                                name="number"
                                                placeholder="Phone Number"
                                        />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                        <textarea
                                class="form-control"
                                name="message"
                                id="message"
                                rows="1"
                                placeholder="Message"
                        ></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12 text-right">
                                    <button
                                            type="submit"
                                            value="submit"
                                            class="btn submit_btn"
                                    >
                                        Submit Now
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div
                    class="tab-pane fade show active"
                    id="review"
                    role="tabpanel"
                    aria-labelledby="review-tab"
            >
                <div class="row">
                    <div class="col-lg-6">
                        <div class="row total_rate">
                            <div class="col-6">
                                <div class="box_total">
                                    <h5>Overall</h5>
                                    <h4>4.0</h4>
                                    <h6>(03 Reviews)</h6>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="rating_list">
                                    <h3>Based on 3 Reviews</h3>
                                    <ul class="list">
                                        <li>
                                            <a href="#"
                                            >5 Star
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i> 01</a
                                            >
                                        </li>
                                        <li>
                                            <a href="#"
                                            >4 Star
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i> 01</a
                                            >
                                        </li>
                                        <li>
                                            <a href="#"
                                            >3 Star
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i> 01</a
                                            >
                                        </li>
                                        <li>
                                            <a href="#"
                                            >2 Star
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i> 01</a
                                            >
                                        </li>
                                        <li>
                                            <a href="#"
                                            >1 Star
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i> 01</a
                                            >
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="review_list">
                            <div class="review_item">
                                <div class="media">
                                    <div class="d-flex">
                                        <img
                                                src="img/product/single-product/review-1.png"
                                                alt=""
                                        />
                                    </div>
                                    <div class="media-body">
                                        <h4>Blake Ruiz</h4>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                    sed do eiusmod tempor incididunt ut labore et dolore magna
                                    aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                                    ullamco laboris nisi ut aliquip ex ea commodo
                                </p>
                            </div>
                            <div class="review_item">
                                <div class="media">
                                    <div class="d-flex">
                                        <img
                                                src="img/product/single-product/review-2.png"
                                                alt=""
                                        />
                                    </div>
                                    <div class="media-body">
                                        <h4>Blake Ruiz</h4>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                    sed do eiusmod tempor incididunt ut labore et dolore magna
                                    aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                                    ullamco laboris nisi ut aliquip ex ea commodo
                                </p>
                            </div>
                            <div class="review_item">
                                <div class="media">
                                    <div class="d-flex">
                                        <img
                                                src="img/product/single-product/review-3.png"
                                                alt=""
                                        />
                                    </div>
                                    <div class="media-body">
                                        <h4>Blake Ruiz</h4>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                    sed do eiusmod tempor incididunt ut labore et dolore magna
                                    aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                                    ullamco laboris nisi ut aliquip ex ea commodo
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="review_box">
                            <h4>Add a Review</h4>
                            <p>Your Rating:</p>
                            <ul class="list">
                                <li>
                                    <a href="#">
                                        <i class="fa fa-star"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-star"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-star"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-star"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-star"></i>
                                    </a>
                                </li>
                            </ul>
                            <p>Outstanding</p>
                            <form
                                    class="row contact_form"
                                    action="contact_process.php"
                                    method="post"
                                    id="contactForm"
                                    novalidate="novalidate"
                            >
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input
                                                type="text"
                                                class="form-control"
                                                id="name"
                                                name="name"
                                                placeholder="Your Full name"
                                        />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input
                                                type="email"
                                                class="form-control"
                                                id="email"
                                                name="email"
                                                placeholder="Email Address"
                                        />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input
                                                type="text"
                                                class="form-control"
                                                id="number"
                                                name="number"
                                                placeholder="Phone Number"
                                        />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                        <textarea
                                class="form-control"
                                name="message"
                                id="message"
                                rows="1"
                                placeholder="Review"
                        ></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12 text-right">
                                    <button
                                            type="submit"
                                            value="submit"
                                            class="btn submit_btn"
                                    >
                                        Submit Now
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================End Product Description Area =================-->


</body>

