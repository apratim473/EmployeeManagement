
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Registration</title>
    <link href="${pageContext.request.contextPath}/resources/css/employeeform.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
            crossorigin="anonymous"
    />



</head>
<body>
<section>
    <h2>Register</h2>

<%--    <button style="position:absolute; z-index:9; margin:-5% 0 0 50%">Home</button>--%>
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

    <form class="row g-3 needs-validation" action="addEmployeeForm" modelAttribute="employee" method="post" novalidate >
        <div class="col-md-6">
            <i class="fas fa-user"></i>
            <label for="firstName" class="form-label required">First Name</label>

            <input type="text"  class="form-control" id="firstName" name="firstName" required autocomplete="off">

            <div class="invalid-feedback">
                Please provide a First Name.
            </div>
        </div>

        <div class="col-md-6">
            <label for="lastName" class="form-label required">Last Name</label>
            <input type="text" class="form-control" id="lastName" name="lastName" required autocomplete="off">
            <div class="invalid-feedback">
                Please provide a Last Name.
            </div>
        </div>


        <div class="col-md-6">
            <label for="dob" class="form-label">Date of Birth</label>
            <input type="date" class="form-control" id="dob" name="dob" required autocomplete="off">
            <div class="invalid-feedback">
                Please provide the Date of Birth.
            </div>
        </div>


        <div class="col-md-6">
            <label for="sex" class="form-label">Sex</label>
            <select id="sex" name="sex" class="form-select">
                <option selected>Select...</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Others">Others</option>
            </select>
            <div class="invalid-feedback">
                Please select a gender.
            </div>
        </div>


        <div class="col-md-6">
            <label for="religion" class="form-label">Religion</label>
            <input type="text" class="form-control" id="religion" name="religion" required autocomplete="off">
           <div class="invalid-feedback">
                Please provide your religion.
            </div>
        </div>


        <div class="col-md-6">
            <label for="email" class="form-label required">Email</label>
            <input type="email" class="form-control " id="email" name="email" required autocomplete="off">
            <div class="invalid-feedback">
                Please provide a valid Email address.
            </div>
        </div>



        <div class="col-md-6">
            <label for="proofType" class="form-label required">Id Proof</label>
            <select id="proofType" name="proofType" class="form-select " required autocomplete="off">
                <option value="0" selected>Select...</option>
                <option value="Adhaar">Adhaar</option>
                <option value="PAN">PAN</option>
                <option value="Voter">Voter</option>
            </select>
            <div class="invalid-feedback">
                Please select a type of ID.
            </div>
        </div>
        <div class="col-md-6" id="renderProof"></div>





        <div class="accordion " id="address" >
            <label for="address" class="form-label required">Address</label>
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
                                <input type="text" class="form-control" id="currentAddress.street" name="currentAddress.street" required>
                                <div class="invalid-feedback">
                                    Please provide a Street name.
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label for="currentAddress.zip" class="form-label">Zip</label>
                                <input type="text" class="form-control" id="currentAddress.zip" name="currentAddress.zip" required>
                                <div class="invalid-feedback">
                                    Please provide a valid Zip.
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label for="currentAddress.city" class="form-label">City</label>
                                <input type="text" class="form-control" id="currentAddress.city" name="currentAddress.city" required>
                                <div class="invalid-feedback">
                                    Please provide a City.
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label for="currentAddress.state" class="form-label">State</label>
                                <input type="text" class="form-control" id="currentAddress.state" name="currentAddress.state" required>
                                <div class="invalid-feedback">
                                    Please provide a State.
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label for="currentAddress.country" class="form-label">Country</label>
                                <input type="text" class="form-control" id="currentAddress.country" name="currentAddress.country" required>
                                <div class="invalid-feedback">
                                    Please provide a Country.
                                </div>
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
                        <div class="form-group">
                            <input type="checkbox" id="checkBox"  onclick="autoFillAddress()"> Same as Current address
                        </div>
                        <div class="row">
                            <div class="col-md-8">
                                <label for="permanentAddress.street" class="form-label">Street</label>
                                <input type="text" class="form-control" id="permanentAddress.street" name="permanentAddress.street" required>
                                <div class="invalid-feedback">
                                    Please provide a Street name.
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label for="permanentAddress.zip" class="form-label">Zip</label>
                                <input type="text" class="form-control" id="permanentAddress.zip" name="permanentAddress.zip" required>
                                <div class="invalid-feedback">
                                    Please provide a valid Zip.
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label for="permanentAddress.city" class="form-label">City</label>
                                <input type="text" class="form-control" id="permanentAddress.city" name="permanentAddress.city" required>
                                <div class="invalid-feedback">
                                    Please provide a City.
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label for="permanentAddress.state" class="form-label">State</label>
                                <input type="text" class="form-control" id="permanentAddress.state" name="permanentAddress.state" required>
                                <div class="invalid-feedback">
                                    Please provide a State.
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label for="permanentAddress.country" class="form-label">Country</label>
                                <input type="text" class="form-control" id="permanentAddress.country" name="permanentAddress.country" required>
                                <div class="invalid-feedback">
                                    Please provide a Country.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <div class="col-md-4">
            <label for="mobileNo" class="form-label">Contact No.</label>
            <input type="tel" class="form-control" id="mobileNo" name="mobileNo" required autocomplete="off">
            <div class="invalid-feedback">
                Please provide a valid Contact number.
            </div>
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
                            <input type="text" class="form-control" id="familyDetails.name" name="familyDetails.name" autocomplete="off">
                        </div>
                        <div class="col-md-3">
                            <label for="familyDetails.relation" class="form-label">Relation</label>
                            <select id="familyDetails.relation" name="familyDetails.relation" class="form-select ">
                                <option value="0" selected>Select...</option>
                                <option value="father">Father</option>
                                <option value="mother">Mother</option>
                                <option value="brother">Brother</option>
                                <option value="sister">Sister</option>
                            </select>
                        </div>
                        <div class="col-md-3">
                            <label for="familyDetails.contactNo" class="form-label">Contact No.</label>
                            <input type="tel" class="form-control" id="familyDetails.contactNo" name="familyDetails.contactNo">
                        </div>
                        <div class="col-md-3">
                            <label for="familyDetails.adhaar" class="form-label">Aadhaar</label>
                            <input type="text" class="form-control" id="familyDetails.adhaar" name="familyDetails.adhaar" autocomplete="off">
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-12">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                <label class="form-check-label" for="invalidCheck">
                    I agree to the terms and conditions
                </label>
                <div class="invalid-feedback">
                    You must agree before submitting.
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
    $("#proofType").click(function(){
        var e = $(this).val();

        if(e=="PAN"){
            addRow = '<div class = "col-md-6">'+'<label for="proofId" class="form-label">'+'Pan Number'+'</label>'+'<input type="text" class="form-control" id="proofId" name="proofId" required>'+'<div class="invalid-feedback">'+'Please provide a valid id.'+'</div>'+'</div>';
            $("#renderProof").empty();
            $("#renderProof").append(addRow);
        }
        if(e=="Adhaar"){
            addRow = '<div class = "col-md-6">'+'<label for="proofId" class="form-label">'+'Adhaar Number'+'</label>'+'<input type="text" class="form-control" id="proofId" name="proofId" required>'+'<div class="invalid-feedback">'+'Please provide a valid id.'+'</div>'+'</div>';
            $("#renderProof").empty();
            $("#renderProof").append(addRow);
        }
        if(e=="Voter"){
            addRow = '<div class = "col-md-6">'+'<label for="proofId" class="form-label">'+'Voter Number'+'</label>'+'<input type="text" class="form-control" id="proofId"  name="proofId" required>'+'<div class="invalid-feedback">'+'Please provide a valid id.'+'</div>'+'</div>';
            $("#renderProof").empty();
            $("#renderProof").append(addRow);
        }
        if(e=="0"){
            addRow = '<div class = "col-md-6">'+'<label for="proofId" class="form-label">'+'Pan Number'+'</label>'+'<input type="text" class="form-control" id="proofId" name="proofId">'+'</div>';
            $("#renderProof").empty();
        }
    });

    /* */
    $(document).ready(function () {
        $('.toast').toast('show');

    });
</script>

<script>
    function autoFillAddress(){
        let checkBox = document.getElementById("checkBox");

        let currentStreet = document.getElementById("currentAddress.street");
        let currentZip = document.getElementById("currentAddress.zip");
        let currentCity = document.getElementById("currentAddress.city");
        let currentState = document.getElementById("currentAddress.state");
        let currentCountry = document.getElementById("currentAddress.country");

        let permanentStreet = document.getElementById("permanentAddress.street");
        let permanentZip = document.getElementById("permanentAddress.zip");
        let permanentCity = document.getElementById("permanentAddress.city");
        let permanentState = document.getElementById("permanentAddress.state");
        let permanentCountry = document.getElementById("permanentAddress.country");


        if(checkBox.checked==true){
            permanentStreet.value=currentStreet.value;
            permanentZip.value=currentZip.value;
            permanentCity.value=currentCity.value;
            permanentState.value=currentState.value;
            permanentCountry.value=currentCountry.value;

        }
        else{
            permanentStreet.value="";
            permanentZip.value="";
            permanentCity.value="";
            permanentState.value="";
            permanentCountry.value="";
        }
    }


</script>
</body>
</html>