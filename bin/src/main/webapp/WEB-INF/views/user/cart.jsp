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
              <h2>Cart</h2>
              <p>Very us move be blessed multiply night</p>
            </div>
            <div class="page_link">
              <a href="<c:url value="/client" />">Home</a>
              <a href="">Cart</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--================End Home Banner Area =================-->

    <!--================Cart Area =================-->
    <section class="cart_area">
      <div class="container">
        <div class="cart_inner">
          <div class="table-responsive">
            <table class="table">
              <thead>
                <tr>
                  <th scope="col">Product</th>
                  <th scope="col">Price</th>
                  <th scope="col">Quantity</th>
                  <th scope="col">Tác vụ</th>
                  <th scope="col">Total</th>
                </tr>
              </thead>
              <!--====== Phần list sản phẩm trong giỏ hàng =======-->
              <tbody>
              <!--======== 1 sản phẩm ========-->
              <c:forEach items="${Cart}" var="item">
                <tr>
                  <td>
                    <div class="media">
                      <div class="d-flex">
                        <img
                          src="<c:url value="/resources/image/product/pro${item.value.product.id}.jpg"/>"

                          alt=""
                        />
                      </div>
                      <div class="media-body">
                        <p>${item.value.product.name}</p>
                      </div>
                    </div>
                  </td>
                  <td>
                    <h5><fmt:formatNumber value="${item.value.product.price}" type="currency"/></h5>
                  </td>
                  <td>
                    <div class="product_count">
                      <input type="number" min="0" max="1000" name="qty" id="quantity-cart-${item.key}" value="${item.value.quantity}" title="Quantity:" class="input-text qty"/>
                    </div>
                  </td>
                  <td>
                    <!-- Vì sử dụng Hashmap nên item.key (key ở đây là id của product) -->
                    <button  data-id="${item.key}" class="btn btn-primary edit-cart" type="button"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
                    <a href="<c:url value="/client/cart/deleteCart/${item.key}"/> " class="btn btn-danger" type="button"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                  </td>
                  <td>
                    <h5><fmt:formatNumber value="${item.value.totalPrice}" type="currency"/></h5>
                  </td>
                </tr> <!--======== End 1 sản phẩm ========-->
              </c:forEach>

              <!-- Hiển thị tổng giá tiền-->
                <tr>
                  <td></td>
                  <td></td>
                  <td>
                    <h5>Subtotal</h5>
                  </td>
                  <td>
                    <h5><fmt:formatNumber value="${TotalPriceCart}" type="currency"/></h5>
                  </td>
                </tr> <!-- End Hiển thị tổng giá tiền-->

                <tr class="out_button_area">
                  <td></td>
                  <td></td>
                  <td></td>
                  <td>
                    <div class="checkout_btn_inner">
                      <a class="gray_btn" href="<c:url value="/client" />">Continue Shopping</a>
                      <a class="main_btn" href="#">Proceed to checkout</a>
                    </div>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </section>
  </body>

