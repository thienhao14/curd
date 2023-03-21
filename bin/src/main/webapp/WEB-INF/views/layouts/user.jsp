<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 21/8/2020
  Time: 7:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link rel="icon" href="<c:url value="/resources/theme1/assets_client/img/fevicon.png"/>"/>
    <title><decorator:title default="Master-layout"/></title>
    <base href="${pageContext.servletContext.contextPath}/">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_client/css/bootstrap.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_client/vendors/linericon/style.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_client/css/font-awesome.min.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_client/css/themify-icons.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_client/css/flaticon.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_client/vendors/owl-carousel/owl.carousel.min.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_client/vendors/lightbox/simpleLightbox.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_client/vendors/nice-select/css/nice-select.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_client/vendors/animate-css/animate.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_client/vendors/jquery-ui/jquery-ui.css"/>"/>
    <!-- main css -->
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_client/css/style.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/theme1/assets_client/css/responsive.css"/>"/>
</head>
<body>

<%@include file="/WEB-INF/views/layouts/user/header.jsp"%>

<decorator:body />

<%@include file="/WEB-INF/views/layouts/user/footer.jsp"%>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="<c:url value="/resources/theme1/assets_client/js/jquery-3.2.1.min.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_client/js/popper.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_client/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_client/js/stellar.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_client/vendors/lightbox/simpleLightbox.min.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_client/vendors/nice-select/js/jquery.nice-select.min.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_client/vendors/isotope/imagesloaded.pkgd.min.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_client/vendors/isotope/isotope-min.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_client/vendors/owl-carousel/owl.carousel.min.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_client/js/jquery.ajaxchimp.min.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_client/vendors/counter-up/jquery.waypoints.min.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_client/vendors/counter-up/jquery.counterup.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_client/js/mail-script.js"/>"></script>
<script src="<c:url value="/resources/theme1/assets_client/js/theme.js"/>"></script>
<script type="text/javascript">
    $(".edit-cart").on("click", function(){

        var id = $(this).data("id");
        var quantity = $("#quantity-cart-"+id).val();
        window.location = "client/cart/editCart/"+id+"/"+quantity;
    });
</script>
<script>

    $('document').ready(function () {
        // check username exist in database
        $("#username").blur( function () {
            var username = $('#username').val();

            $.ajax({
                type: 'POST',
                url: 'checkUsername',
                data: {
                    'username': username,
                },
                success: function (response) {
                    if (response == 'exist') {
                        $('#usernameEr').html("Username đã tồn tại");
                    }else{
                        $('#usernameEr').html("");
                    }
                    if(username == '') {
                        $('#usernameEr').html("không được bỏ trống");
                    }
                }
            })
        });


        $('#name').blur(function () {
            if($('#name').val() == ''){
                $('#nameEr').html("không được bỏ trống");
            }else{
                $('#nameEr').html("");
            }
        });
        $('#password').blur(function () {

            if($('#password').val() == ''){
                $('#passwordEr').html("không được bỏ trống");
            }else{
                $('#passwordEr').html("");
            }
        });
        $('#repass').blur(function () {

            if($('#repass').val() == ''){
                $('#repassEr').html("không được bỏ trống");
            }else{
                $('#repassEr').html("");
            }
        });

        $('#phone').blur(function () {
            if($('#phone').val() == ''){
                $('#phoneEr').html("không được bỏ trống");
            }else{
                $('#phoneEr').html("");
            }
        });

        $('#address').blur(function () {
            if($('#address').val() == ''){
                $('#addressEr').html("không được bỏ trống");
            }else{
                $('#addressEr').html("");
            }
        });


        $("#email").blur( function () {
            var email = $('#email').val();

            $.ajax({
                type: 'POST',
                url: 'checkEmail',
                data: {
                    'email': email,
                },
                success: function (response) {
                    if (response == 'exist') {
                        $('#emailEr').html("Email đã tồn tại");
                    }else{
                        $('#emailEr').html("");
                    }
                    if(email == '') {
                        $('#emailEr').html("không được bỏ trống");
                    }
                }
            })
        });
    });
</script>

<decorator:getProperty property="page.script"/>
</body>
</html>




