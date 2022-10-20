<%--
  Created by IntelliJ IDEA.
  User: medrikminassian
  Date: 10/17/22
  Time: 3:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<style>
    h1{
        color: #5252b6;
        font-family: "American Typewriter";
    }
    h2{
        color: #5252b6;
    }
    body{
        align-content: center;
        background-color: cornflowerblue;
        margin: 100px;
    }
    div.form-group{
        shape-rendering: optimizeSpeed;

    }
</style>

<html>
<head>
    <link  rel="stylesheet" href="css/style.css">


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css" integrity="sha384-jLKHWM3JRmfMU0A5x5AkjWkw/EYfGUAGagvnfryNV3F9VqM98XiIH7VBGVoxVSc7" crossorigin="anonymous">
    <title>Dojo Projects</title>
</head>
<body>
<div class="container">
<%--    <h1  class="align-content-center">DOJO PROJECTS</h1>--%>
<%--    <div class="row">--%>
<%--        <div class="col">--%>
<%--            <h2>Register</h2>--%>
<%--            <form:form action="/register" method="post" modelAttribute="newUser">--%>
<%--                <div>--%>
<%--                    <div class="form-group">--%>
<%--                        <form:label path="userName">User Name</form:label>--%>
<%--                        <form:input  class="form-control" path="userName"/>--%>
<%--                        <form:errors path="userName"/>--%>
<%--                    </div>--%>
<%--                    <div class="form-group">--%>
<%--                        <form:label path="email">E-Mail</form:label>--%>
<%--                        <form:input  class="form-control" path="email"/>--%>
<%--                        <form:errors path="email"/>--%>
<%--                    </div>--%>
<%--                    <div>--%>
<%--                        <form:label path="password">Password</form:label>--%>
<%--                        <form:input  class="form-control" path="password"/>--%>
<%--                        <form:errors path="password"/>--%>
<%--                    </div>--%>
<%--                    <div>--%>
<%--                        <form:label path="confirm">Confirm Password</form:label>--%>
<%--                        <form:input  class="form-control" path="confirm"/>--%>
<%--                        <form:errors path="confirm"/>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <input type="submit" value="register">--%>
<%--            </form:form>--%>
<%--        </div>--%>
<%--<div class="container">--%>
<%--    <div class="row>"--%>
<%--    <div class="col">--%>
        <%--            <h2>Login</h2>--%>
        <div class="screen">
            <div class="screen__content">
                <form:form action="/login" method="post" modelAttribute="newLogin" class="login">
                    <div class="login__field">
                        <i class="login__icon fas fa-user"></i>
                            <%--                        <form:label path="email">E-Mail</form:label>--%>
                        <form:input   path="email" class="login__input" placeholder="User name / Email"/>
                        <form:errors path="email"/>
                    </div>
                    <div class="login__field">
                        <i class="login__icon fas fa-lock"></i>
                            <%--<form:label path="password">Password</form:label>--%>
                        <form:input  path="password" class="login__input" placeholder="Password"/>
                        <form:errors path="password"/>
                    </div>
                    <input type="submit" value="login" class="button__text">

                </form:form>
                <div>
                    <a href="/reg" class="button__text" >Register</a>
                </div>

                <div class="social-login">
                    <h3>log in via</h3>
                    <div class="social-icons">
                        <a href="https://www.instagram.com/" class="social-login__icon fab fa-instagram"></a>
                        <a href="#" class="social-login__icon fab fa-faceproject"></a>
                        <a href="#" class="social-login__icon fab fa-twitter"></a>
                    </div>
                </div>
            </div>
            <div class="screen__background">
                <span class="screen__background__shape screen__background__shape4"></span>
                <span class="screen__background__shape screen__background__shape3"></span>
                <span class="screen__background__shape screen__background__shape2"></span>
                <span class="screen__background__shape screen__background__shape1"></span>
            </div>
        </div>
    </div>
</div>
</div>

</div>
</body>
</html>
