<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8"  isELIgnored="false"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NSEL Sign In</title>
    <link href="${pageContext.request.contextPath}/resources/css/loginStyle.css" rel="stylesheet" />

</head>
<body>
<%--<c:if test = "${param.error !=null}">

    <i style="color:red; margin-left: 45%;">Invalid Credentials </i>
</c:if>


<c:if test = "${param.logout !=null}">

    <i  style="color:cornflowerblue; margin-left: 45%">Logged Out Successfully </i>
</c:if>--%>
<div class="container">
    <h2>Nucleus Software</h2>
    <form:form action="/processlogin" method="post">
        <input type="text" name="username" id="username" placeholder="Username">
        <input type="password" name="password" id="password" placeholder="Password">
        <div class="btns">
            <button type="submit">Login</button>
        </div>
    </form:form>
</div>
</body>
</html>