<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Nucleus Employee Search</title>
    <link href="${pageContext.request.contextPath}/resources/css/searchStyle.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">


</head>
<body>


<section class="hero">
    <h2 class="header">NSEL Employee System</h2>
    <h2  class="header">Search Employees</h2>
</section>
<div class="pop" style="position:absolute; z-index:9; margin:-12% 0 0 75%" >
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
<div class="content">

    <form action="loanSearchForm" class="needs-validation" method="post" novalidate>

        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Employee does not exist!</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        Create a new Employee?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                        <a class="btn btn-primary" href="/addEmployee" role="button">Yes</a>
                    </div>
                </div>
            </div>
        </div>


        <label for="searchEmail" class="form-label">Search by Email</label>
        <input type="search" class="form-control" id="searchEmail" name="searchEmail" placeholder="abc@gmail.com" required>
        <div class="invalid-feedback" style="margin-left: 26vw;">
            Please provide a valid Email address.
        </div>
        <input class="btn btn-primary search" type="submit" value="Search">

        <a class="btn btn-danger cancel" href="/" role="button">Cancel</a>
        <c:if test="${not empty msg}">
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" style=" margin-left: 45%; margin-bottom: -4%;">
                Create New User
            </button>
        </c:if>

    </form>
</div>

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
<script>
    const myModal = document.getElementById('myModal')
    const myInput = document.getElementById('myInput')

    myModal.addEventListener('shown.bs.modal', () => {
        myInput.focus()
    })
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/employee.js"></script>

</body>
</html>