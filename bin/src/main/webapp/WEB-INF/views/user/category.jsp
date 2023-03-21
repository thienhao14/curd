<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
  <body>
    <!--================Home Banner Area =================-->
    <section class="banner_area">
      <div class="banner_inner d-flex align-items-center">
        <div class="container">
          <div class="banner_content d-md-flex justify-content-between align-items-center">
            <div class="mb-3 mb-md-0">
              <h2>Danh mục sản phẩm</h2>
            </div>
            <div class="page_link">
              <a href="<c:url value="/client"/> ">Trang chủ</a>
              <a href="category.jsp">Của hàng</a>
              <a href="category.jsp">Danh mục sản phẩm</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--================End Home Banner Area =================-->

    <!--================Category Product Area =================-->
    <section class="cat_product_area section_gap">
      <div class="container">
        <div class="row flex-row-reverse">
          <div class="col-lg-9">
            <div class="product_top_bar">
              <div class="left_dorp">
                <select class="sorting">
                  <option value="1">Sắp Xếp</option>
                  <option value="2">Giá Cao Đến Thấp</option>
                  <option value="4">Giá Thấp Đến </option>
                </select>
                <select class="show">
                  <option value="1">Show 12</option>
                  <option value="2">Show 14</option>
                  <option value="4">Show 16</option>
                </select>
              </div>
            </div>

            <div class="latest_product_inner">
              <div class="row">

                <!--========== Đổ dữ liệu hiển thị danh sách sản phẩm theo thể loại (Category) ==========-->
                <c:forEach var="product" items="${allProduct}">
                <form method="get" action="<c:url value="/client/cart/addCart/${product.id}"/>">
                  <div class="col-lg-4 col-md-6" style="max-width: 284px;">
                    <div class="single-product">
                      <div class="product-img">
                        <!--====== Lấy id Product để hiển thị chi tiết sản phẩm theo Product (CategoryController) =========-->
                        <a href="<c:url value="/client/category/getProductDetail/${product.id}"/>"> <!-- Id sản phẩm-->
                        <img src="<c:url value="/resources/image/product/pro${product.id}.jpg"/>" height="266" width="266"/>
                        </a>
                          <div class="p_icon">
                            <a href="<c:url value="/client/category/getProductDetail/${product.id}"/>" style="padding-top: 10px;">
                              <i class="ti-eye"></i>
                            </a>
                            <a href="#" style="padding-top: 10px;">
                              <i class="ti-heart"></i>
                            </a>
                              <!--==== Shop cart =====-->
                            <button href="#" type="submit" style="display: inline-block;height: 36px;line-height: 40px;width: 36px;text-align: center;background: #fff;border-radius: 30px;color: #2a2a2a;">
                              <i class="ti-shopping-cart"></i>
                            </button>
                              <!--==== Shop cart =====-->
                          </div>
                      </div>
                      <div class="product-btm">
                        <a href="#" class="d-block">
                          <h4>${product.name}</h4> <!-- Tên sản phẩm-->
                        </a>
                        <div class="mt-3">
                          <span class="mr-4"><fmt:formatNumber value="${product.price}" type="currency"/></span>
                        </div>
                      </div>
                    </div>
                  </div>
                </form>
                </c:forEach>
                <!--========== Đổ dữ liệu hiển thị danh sách sản phẩm theo thể loại (Category) ==========-->

              </div>
            </div>
          </div>

          <div class="col-lg-3">
            <div class="left_sidebar_area">
              <aside class="left_widgets p_filter_widgets">
                <div class="l_w_title">
                  <h3>Hãng sản xuất</h3>
                </div>
                <div class="widgets_inner">
                  <ul class="list">
                    <li>
                      <a href="#">Sam Sung</a>
                    </li>
                    <li>
                      <a href="#">Nokia</a>
                    </li>
                    <li>
                      <a href="#">Opple</a>
                    </li>
                    <li>
                      <a href="#">Xiaomi</a>
                    </li>
                    <li>
                      <a href="#">Lenovo</a>
                    </li>
                    <li>
                      <a href="#">ViVo</a>
                    </li>
                    <li>
                      <a href="#">Meat</a>
                    </li>
                  </ul>
                </div>
              </aside>

              <aside class="left_widgets p_filter_widgets">
                <div class="l_w_title">
                  <h3>Mức Giá</h3>
                </div>
                <div class="widgets_inner">
                  <ul class="list">
                    <li>
                      <a href="#">Dưới 1 triệu</a>
                    </li>
                    <li>
                      <a href="#">Từ 1 - 3 triệu</a>
                    </li>
                    <li class="active">
                      <a href="#">Từ 3 -6 triêu</a>
                    </li>
                    <li>
                      <a href="#">Từ 6 - 10 triệu</a>
                    </li>
                    <li>
                      <a href="#">Từ 10 -15 triệu</a>
                    </li>
                  </ul>
                </div>
              </aside>

              <aside class="left_widgets p_filter_widgets">
                <div class="l_w_title">
                  <h3>Màu sắc</h3>
                </div>
                <div class="widgets_inner">
                  <ul class="list">
                    <li>
                      <a href="#">Đen</a>
                    </li>
                    <li>
                      <a href="#">Trắng</a>
                    </li>
                    <li class="active">
                      <a href="#">Hồng</a>
                    </li>
                    <li>
                      <a href="#">Vàng</a>
                    </li>
                    <li>
                      <a href="#">Bạc</a>
                    </li>
                  </ul>
                </div>
              </aside>

            </div>
          </div>
        </div>
      </div>
    </section>
    <!--================End Category Product Area =================-->

  </body>

