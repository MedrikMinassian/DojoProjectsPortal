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
<%--<style>--%>
<%--    h1{--%>
<%--        color: #5252b6;--%>
<%--        font-family: "American Typewriter";--%>
<%--    }--%>
<%--    h2{--%>
<%--        color: #5252b6;--%>
<%--    }--%>
<%--    body{--%>
<%--        align-content: center;--%>
<%--        background-color: cornflowerblue;--%>
<%--        margin: 100px;--%>
<%--    }--%>
<%--    div.form-group{--%>
<%--        shape-rendering: optimizeSpeed;--%>

<%--    }--%>
<%--</style>--%>

<html>
<head>
    <link  rel="stylesheet" href="css/style.css">


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css" integrity="sha384-jLKHWM3JRmfMU0A5x5AkjWkw/EYfGUAGagvnfryNV3F9VqM98XiIH7VBGVoxVSc7" crossorigin="anonymous">
    <title>Dojo Projects</title>

        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <script src="https://kit.fontawesome.com/bdd89edb33.js"></script>
        <link
                href="https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900"
                rel="stylesheet"
        />
        <link rel="stylesheet" href="css/cards.css" />
    </head>
    <body>



    <section class="section-plans" id="section-plans">
        <div class="u-center-text u-margin-bottom-big">
            <h2 class="heading-secondary">
                Hosting Plans
            </h2>
        </div>
        <c:forEach var="project" items="${projects}">
        <div class="row">
            <div class="col-1-of-3">
                <div class="card">
                    <div class="card__side card__side--front-1">
                        <div class="card__title card__title--1">
                            <i class="fas fa-paper-plane"></i>
                            <h4 class="card__heading">Basic</h4>
                        </div>

                        <div class="card__details">
                            <ul>
                                <li>${project.author}</li>
                                <li>${project.title}</li>
                                <li>${project.projectLanguage}</li>
                                <li>${project.myThoughts}</li>
                            </ul>
                        </div>
                    </div>
                    <div class="card__side card__side--back card__side--back-1">
                        <div class="card__cta">
                            <div class="card__price-box">
                                <p class="card__price-only">Only</p>
                                <p class="card__price-value">$2.95/mo*</p>
                            </div>
                            <a href="#popup" class="btn btn--white">Select</a>
                        </div>
                    </div>
                </div>
            </div>
            </c:forEach>
<%--            <div class="col-1-of-3">--%>
<%--                <div class="card">--%>
<%--                    <div class="card__side card__side--front-2">--%>
<%--                        <div class="card__title card__title--2">--%>
<%--                            <i class="fas fa-plane"></i>--%>
<%--                            <h4 class="card__heading">Plus</h4>--%>
<%--                        </div>--%>

<%--                        <div class="card__details">--%>
<%--                            <ul>--%>
<%--                                <li>Includes Basic Package Features</li>--%>
<%--                                <li>Unlimited Websites</li>--%>
<%--                                <li>Unlimited SSD Storage</li>--%>
<%--                                <li>Unlimited Domains</li>--%>
<%--                                <li>Unlimited Parked Domains</li>--%>
<%--                                <li>Unlimited Sub Domains</li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="card__side card__side--back card__side--back-2">--%>
<%--                        <div class="card__cta">--%>
<%--                            <div class="card__price-box">--%>
<%--                                <p class="card__price-only">Only</p>--%>
<%--                                <p class="card__price-value">$5.45/mo*</p>--%>
<%--                            </div>--%>
<%--                            <a href="#popup" class="btn btn--white">Select</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <div class="col-1-of-3">--%>
<%--                <div class="card">--%>
<%--                    <div class="card__side card__side--front-3">--%>
<%--                        <div class="card__title card__title--3">--%>
<%--                            <i class="fas fa-rocket"></i>--%>
<%--                            <h4 class="card__heading">Pro</h4>--%>
<%--                        </div>--%>

<%--                        <div class="card__details">--%>
<%--                            <ul>--%>
<%--                                <li>Includes Plus Plan Features</li>--%>
<%--                                <li>High Performance</li>--%>
<%--                                <li>2 Spam Experts</li>--%>
<%--                                <li>Free SSL Certificate</li>--%>
<%--                                <li>Domain Privacy</li>--%>
<%--                                <li>Site Backup - CodeGuard Basic</li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="card__side card__side--back card__side--back-3">--%>
<%--                        <div class="card__cta">--%>
<%--                            <div class="card__price-box">--%>
<%--                                <p class="card__price-only">Only</p>--%>
<%--                                <p class="card__price-value">$13.95/mo</p>--%>
<%--                            </div>--%>
<%--                            <a href="#popup" class="btn btn--white">Select</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        <div class="u-center-text u-margin-top-huge">--%>
<%--            <a href="#" class="btn btn--green">Get Started</a>--%>
<%--        </div>--%>
    </section>

    </body>

    </html>

