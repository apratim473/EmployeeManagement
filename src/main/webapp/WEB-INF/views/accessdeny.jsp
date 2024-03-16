<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"  isELIgnored="false"%>

    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Access Denied</title>
    <link href="${pageContext.request.contextPath}/resources/css/deniedStyle.css" rel="stylesheet" />
</head>
<body>


<h1> Access denied  for this page</h1>
<section>
    <p>403</p>
</section>

<!-- u should have the action ="logout" ---- is manadatory -->
<form:form  action="logout" method="post">
<input class="logoutBtn" type="submit" value="logout"/>
</form:form>

</body>
</html>