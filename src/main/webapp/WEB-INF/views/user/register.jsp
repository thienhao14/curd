<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<body>

<section class="banner_area">
    <div class="banner_inner d-flex align-items-center">
        <div class="container">
            <div
                    class="banner_content d-md-flex justify-content-between align-items-center">
                <div class="mb-3 mb-md-0">
                    <h1>Register</h1>

                </div>
                <div class="page_link">
                    <a href="<c:url value="/client"/>">Home</a>
                    <a href="">Register</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Form Register-->
<section class="cart_area">
    <div class="container">
        <div class="cart_inner">
            <div class="table-responsive" style="width: 500px; margin: auto;">
                <c:url value="/client/register" var="url"/>
                <form:form id="registerForm" action="${url}" modelAttribute="registerUser">
                    <h1 class="h3 mb-3 font-weight-normal" style="text-align: center">Register</h1>
                    <div class="form-group">
                        <label for="username">Username</label>
                        <form:input path="username" type="text" class="form-control" id="username" placeholder=""/>
                        <span id="usernameEr" style="color: #ff0000"></span>
                        <form:errors  id="status" path="username" cssClass="error"/>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <form:input path="password" type="password" class="form-control" id="password" placeholder=""/>
                        <span id="passwordEr" style="color: #ff0000"></span>
                        <form:errors path="password" cssClass="error"/>
                    </div>

                    <div class="form-group">
                        <label for="repass">Re_Password</label>
                        <form:input path="passwordConfirm" type="password" class="form-control" id="repass" placeholder=""/>
                        <span id="repassEr" style="color: #ff0000"></span>
                        <form:errors path="passwordConfirm" cssClass="error"/>
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <form:input path="email" type="email" class="form-control" id="email" placeholder=""/>
                        <span id="emailEr" style="color: #ff0000"></span>
                        <form:errors path="email" cssClass="error"/>
                    </div>
                    <div class="form-group">
                        <label for="name">Fullname</label>
                        <form:input path="name" type="text" class="form-control" id="name" placeholder=""/>
                        <span id="nameEr" style="color: #ff0000"></span>
                        <form:errors path="name" cssClass="error"/>
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone</label>
                        <input  type="text" class="form-control" id="phone" placeholder="">
                        <span id="phoneEr" style="color: #ff0000"></span>
                    </div>
                    <div class="form-group">
                        <label for="address">Address</label>
                        <input type="text" class="form-control" id="address" placeholder="">
                        <span id="addressEr" style="color: #ff0000"></span>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-success"
                                style="width: 100%;">Submit
                        </button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</section>
<!--============== End form Register===========-->

</body>
</html>