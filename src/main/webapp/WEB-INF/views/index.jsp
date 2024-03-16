<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>NSEL</title>

    <script src="https://kit.fontawesome.com/e5ec3ec41d.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link href="${pageContext.request.contextPath}/resources/css/indexStyle.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@700;300&display=swap" rel="stylesheet">

</head>
<body>



<section class="hero">
    <h2 class="header">NSEL Employee System</h2>
</section>


<div class="pop" style="position:absolute; z-index:9; margin:-13% 0 0 74%" >
    <c:if test="${not empty msg}">
        <div class="toast align-items-center text-bg-${css} border-0" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="d-flex">
                <div class="toast-body">
                    <strong>${head}</strong>${msg}
                </div>
                <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
        </div>
    </c:if>
</div>


<div class="content-container">
    <div class="management">
        <h3>Employee Management</h3>
    <div class="content">
        <a href ="/addEmployee"><button class="first">Add Employee</button></a>
        <a href="/searchEmployee"><button class="first">Search Employee</button></a>
    </div>
    <div class="content">
        <a href="/updateEmployee"><button class="first">Update Employee</button></a>
        <a href="/deleteEmployee"><button class="first">Delete Employee</button></a>
    </div>
    </div>
</div>
<div class="management">
    <h3>Loan Management</h3>
    <div class="loan-container">
        <a href="/loanRequest"><button class="first">Loan Request</button></a>
        <a href="/loanDetails"><button class="first">Loan Details</button></a>
    </div>
</div>


<form:form action="logout" method="post">
    <button class="btn"><i class="fa-solid fa-right-from-bracket"></i> Logout</button>
</form:form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script
        src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous">

</script>
<script>
    $(document).ready(function () {
        $('.toast').toast('show');
});
</script>
</body>
</html>