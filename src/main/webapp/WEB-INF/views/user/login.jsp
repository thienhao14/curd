<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<body>
<section class="banner_area">
    <div class="banner_inner d-flex align-items-center">
        <div class="container">
            <div class="banner_content d-md-flex justify-content-between align-items-center">
                <div class="mb-3 mb-md-0">
                    <h1>Login</h1>

                </div>
                <div class="page_link">
                    <a href="<c:url value="/client" /> ">Home</a>
                    <a href="">Login</a>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="cart_area">
    <div class="container">
        <div class="cart_inner">
            <div class="table-responsive" style="width: 500px; margin: auto;">
                <div>
                    <c:url value="/client/login" var="url"/>
                    <form:form  action="${url}" method="post" modelAttribute="loginBean">
                        <h1 class="h3 mb-3 font-weight-normal" style="text-align: center">Login</h1>
                        <p style="color: red">${message}</p>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Username</label>
                            <form:input path="username" type="text" class="form-control" id="exampleInputEmail1"
                                        placeholder=""/>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <form:input path="password" type="password" class="form-control" id="exampleInputPassword1"
                                        placeholder=""/>
                        </div>
                        <div class="checkbox mb-3">
                            <label> <input type="checkbox" value="remember-me">
                                Remember me
                            </label>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-success"
                                    style="width: 100%;">Submit
                            </button>
                        </div>
                        <div style="text-align: center;">
								<span style="margin-bottom: 10px;">Forgot<a href="#"
                                                                            style="color: #4fa746;"> Username / Password?</a></span><br>
                            <span>Create
									Account?<a href="<c:url value="/client/register" /> " style="color: #4fa746">
										Sign up</a>
								</span>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</section>
</body>

