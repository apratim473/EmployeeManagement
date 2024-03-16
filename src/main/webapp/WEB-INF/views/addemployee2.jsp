<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Registration</title>
    <link href="${pageContext.request.contextPath}/resources/css/searchViewStyle.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
<section>
    <h2>Register</h2>
    <div class="pop" style="position:absolute; z-index:9; margin:-3% 0 0 60%" >
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
    <form class="row g-3 needs-validation" action="addEmployeeForm" modelAttribute="employee" method="post" novalidate>
        <div class="col-md-6">
            <label for="firstName" class="form-label">First Name</label>
            <input type="text" class="form-control" id="firstName" name="firstName" value="${employee.firstName}" required>
        </div>

        <div class="col-md-6">
            <label for="lastName" class="form-label ">Last Name</label>
            <input type="text" class="form-control" id="lastName" name="lastName" value="${employee.lastName}" required>
        </div>


        <div class="col-md-6">
            <label for="dob" class="form-label">Date of Birth</label>
            <input type="text" class="form-control" id="dob" name="dob" value="<fmt:formatDate type="date" pattern="yyyy-mm-dd" value="${employee.dob}" />  " required>
        </div>


        <div class="col-md-6">
            <label for="sex" class="form-label">Sex</label>
            <input type="text" class="form-control" id="sex" name="sex" value="${employee.sex}">
        </div>


        <div class="col-md-6">
            <label for="religion" class="form-label">Religion</label>
            <input type="text" class="form-control" id="religion" name="religion" value="${employee.religion}">
        </div>


        <div class="col-md-6">
            <label for="email" class="form-label ">Email</label>
            <input type="email" class="form-control " id="email" name="email" required>
            <div class="invalid-feedback">
                Please provide a valid Email address.
            </div>
        </div>



        <div class="col-md-6">
            <label for="proofType" class="form-label ">Id Proof</label>
            <input type="text" class="form-control" id="proofType" name="proofType" value="${employee.proofType}" >
        </div>

        <div class="col-md-6">
            <label for="proofId" class="form-label ">Id Number</label>
            <input type="text" class="form-control" id="proofId" name="proofId" required >
            <div class="invalid-feedback">
                Please provide a valid Id proof.
            </div>
        </div>





        <div class="accordion " id="address" >
            <label for="address" class="form-label">Address</label>
            <div class="accordion-item ">
                <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
                        Current Address
                    </button>
                </h2>
                <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
                    <div class="accordion-body">
                        <div class="row">
                            <div class="col-md-8">
                                <label for="currentAddress.street" class="form-label">Street</label>
                                <input type="text" class="form-control" id="currentAddress.street" name="currentAddress.street" value="${employee.currentAddress.street}" >
                            </div>
                            <div class="col-md-4">
                                <label for="currentAddress.zip" class="form-label">Zip</label>
                                <input type="text" class="form-control" id="currentAddress.zip" name="currentAddress.zip" value="${employee.currentAddress.zip}" >
                            </div>
                            <div class="col-md-4">
                                <label for="currentAddress.city" class="form-label">City</label>
                                <input type="text" class="form-control" id="currentAddress.city" name="currentAddress.city" value="${employee.currentAddress.city}" >
                            </div>
                            <div class="col-md-4">
                                <label for="currentAddress.state" class="form-label">State</label>
                                <input type="text" class="form-control" id="currentAddress.state" name="currentAddress.state" value="${employee.currentAddress.state}" >
                            </div>
                            <div class="col-md-4">
                                <label for="currentAddress.country" class="form-label">Country</label>
                                <input type="text" class="form-control" id="currentAddress.country" name="currentAddress.country" value="${employee.currentAddress.country}" >
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
                        Permanent Address
                    </button>
                </h2>

                <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
                    <div class="accordion-body">
                        <div class="row">
                            <div class="col-md-8">
                                <label for="permanentAddress.street" class="form-label">Street</label>
                                <input type="text" class="form-control" id="permanentAddress.street" name="permanentAddress.street" value="${employee.permanentAddress.street}" >
                            </div>
                            <div class="col-md-4">
                                <label for="permanentAddress.zip" class="form-label">Zip</label>
                                <input type="text" class="form-control" id="permanentAddress.zip" name="permanentAddress.zip" value="${employee.permanentAddress.zip}" >
                            </div>
                            <div class="col-md-4">
                                <label for="permanentAddress.city" class="form-label">City</label>
                                <input type="text" class="form-control" id="permanentAddress.city" name="permanentAddress.city" value="${employee.permanentAddress.city}" >
                            </div>
                            <div class="col-md-4">
                                <label for="permanentAddress.state" class="form-label">State</label>
                                <input type="text" class="form-control" id="permanentAddress.state" name="permanentAddress.state" value="${employee.permanentAddress.state}" >
                            </div>
                            <div class="col-md-4">
                                <label for="permanentAddress.country" class="form-label">Country</label>
                                <input type="text" class="form-control" id="permanentAddress.country" name="permanentAddress.country" value="${employee.permanentAddress.country}" >
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <div class="col-md-4">
            <label for="mobileNo" class="form-label">Contact No.</label>
            <input type="tel" class="form-control" id="mobileNo" name="mobileNo" value="${employee.mobileNo}">
        </div>


        <div class="accordion">
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingOne">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">

                        Family Details

                    </button>
                </h2>
                <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <div class="row">
                            <div class="col-md-3">
                                <label for="familyDetails.name" class="form-label">Name</label>
                                <input type="text" class="form-control" id="familyDetails.name" name="familyDetails.name" value="${employee.familyDetails.name}" >
                            </div>
                            <div class="col-md-3">
                                <label for="familyDetails.relation" class="form-label">Relation</label>
                                <input type="text" class="form-control" id="familyDetails.relation" name="familyDetails.relation" value="${employee.familyDetails.relation}" >
                            </div>
                            <div class="col-md-3">
                                <label for="familyDetails.contactNo" class="form-label">Contact No.</label>
                                <input type="tel" class="form-control" id="familyDetails.contactNo" name="familyDetails.contactNo" value="${employee.familyDetails.contactNo}" >
                            </div>
                            <div class="col-md-3">
                                <label for="familyDetails.adhaar" class="form-label">Aadhaar</label>
                                <input type="text" class="form-control" id="familyDetails.adhaar" name="familyDetails.adhaar" value="${employee.familyDetails.adhaar}" >
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class=" col-9">
            <input class="btn btn-primary" type="submit" value="Submit">
            <input class=" btn btn-danger cancel" type="reset" value="Reset">

        </div>
        <div class="col-3" style=" display: flex;
                                   justify-content: flex-end;">
            <a class="btn btn-warning"  href="/" role="button">Cancel</a>
        </div>
    </form>

</section>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/employee.js"></script>
<script
        src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script>
    $(document).ready(function () {
    $('.toast').toast('show');

});
</script>


</body>
</html>
