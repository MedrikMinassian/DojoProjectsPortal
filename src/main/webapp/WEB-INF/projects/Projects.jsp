<%--
  Created by IntelliJ IDEA.
  User: medrikminassian
  Date: 10/17/22
  Time: 4:37 PM
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
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
<form:form action="/projects" modelAttribute="project" method="post" class="project" >
    <div>
        <form:label path="author">Project Owner</form:label>
        <form:input path="author"></form:input>
    </div>
    <div>
        <form:label path="title">Project Name</form:label>
        <form:input path="title"></form:input>

    </div>
    <div>
        <form:label path="myThoughts">Description</form:label>
        <form:input path="myThoughts"></form:input>
    </div>
    <div>
        <form:label path="projectLanguage">Language used</form:label>
        <form:input path="projectLanguage"></form:input>

    </div>
    <input type="submit" value="submit" class="button__text">
</form:form>

</div>
</body>
</html>
