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
    <link href="${pageContext.request.contextPath}/resources/css/employeeform.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" rel="stylesheet">
</head>
<body>
<section>
<h2>NSEL Loan Approval</h2>
<form id="form" class="row g-3 needs-validation" action="/loanApproval" method="post" novalidate>
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item" role="presentation">
            <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home-tab-pane" type="button" role="tab" aria-controls="home-tab-pane" aria-selected="true">Employee Details</button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane" type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false">Loan Details</button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact-tab-pane" type="button" role="tab" aria-controls="contact-tab-pane" aria-selected="false">Repayment Schedule</button>
        </li>
    </ul>
    <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">

            <div class="row" style="
                                    justify-content: space-around;
                                    ">
                <div class="col-md-5" >
                    <label for="firstName" class="form-label">First Name</label>
                    <input type="text" class="form-control" id="firstName" name="firstName" value="${employee.firstName}" readonly>
                </div>

                <div class="col-md-5" >
                    <label for="lastName" class="form-label">Last Name</label>
                    <input type="text" class="form-control" id="lastName" name="lastName" value="${employee.lastName}" readonly>
                </div>


                <div class="col-md-5">
                    <label for="sex" class="form-label">Sex</label>
                    <input type="text" class="form-control" id="sex" name="sex" value="${employee.sex}" readonly>
                </div>

                <div class="col-md-5">
                    <label for="dob" class="form-label">Date of Birth</label>
                    <input type="text" class="form-control" id="dob" name="dob" value="<fmt:formatDate type="date" pattern="yyyy-mm-dd" value="${employee.dob}" />" readonly>
                </div>


                <div class="col-md-5">
                    <label for="email" class="form-label ">Email</label>
                    <input type="email" class="form-control " id="email" name="email" value="${employee.email}" readonly>
                </div>

                <div class="col-md-5">
                    <label for="mobileNo" class="form-label">Contact No.</label>
                    <input type="tel" class="form-control" id="mobileNo" name="mobileNo" value="${employee.mobileNo}" readonly>
                </div>

                <div class="col-md-5">
                    <label for="proofType" class="form-label ">Id Proof</label>
                    <input type="text" class="form-control" id="proofType" name="proofType" value="${employee.proofType}" readonly>
                </div>

                <div class="col-md-5">
                    <label for="proofId" class="form-label ">Id Number</label>
                    <input type="text" class="form-control" id="proofId" name="proofId" value="${employee.proofId}" readonly>
                </div>
            </div>

        </div>

        <div class="tab-pane fade" id="profile-tab-pane" role="tabpanel" aria-labelledby="profile-tab" tabindex="0">
            <div class="col-md-6">
                <label for="loanAgreementId" class="form-label">Loan Agreement ID</label>
                <input type="text" class="form-control" id="loanAgreementId" name="loanAgreementId" value="${loanAgreement.loanAgreementId}" readonly>
            </div>

            <div class="col-md-6">
                <label for="loanStatus" class="form-label">Loan Status</label>
                <input type="text" class="form-control" id="loanStatus" name="loanStatus" value="${loanAgreement.loanStatus}" readonly>
            </div>

            <div class="col-md-6">
                <label for="dbr" class="form-label">DBR</label>
                <input type="text" class="form-control" id="dbr" name="dbr" value="${employee.dbr}" readonly>
            </div>

            <div class="col-md-6">
                <label for="repaymentFrequency" class="form-label">Repayment Frequency</label>
                <input type="text" class="form-control" id="repaymentFrequency" name="repaymentFrequency" value="${loanAgreement.repaymentFrequency}" readonly>
            </div>


            <div class="col-md-6">
                <label for="roi" class="form-label ">ROI(p.a)</label>
                <input type="email" class="form-control " id="roi" name="roi" value="${loanAgreement.rate}" readonly>
            </div>

            <div class="col-md-6">
                <label for="loanProduct" class="form-label">Loan Product</label>
                <input type="tel" class="form-control" id="loanProduct" name="loanProduct" value="${loanProduct}" readonly>
            </div>

            <div class="col-md-6">
                <label for="tenure" class="form-label ">Tenure</label>
                <input type="text" class="form-control" id="tenure" name="tenure" value="${loanAgreement.tenure}" readonly>
            </div>

            <div class="col-md-6">
                <label for="loanAmount" class="form-label ">Loan Amount</label>
                <input type="text" class="form-control" id="loanAmount" name="loanAmount" value="${loanAgreement.loanAmount}" readonly>
            </div>
        </div>

        <div class="tab-pane fade" id="contact-tab-pane" role="tabpanel" aria-labelledby="contact-tab" tabindex="0">
            <table id="example" class="table table-striped" style="width:100%">
                <thead>
                <tr>
                    <th>Month</th>
                    <th>EMI</th>
                    <th>Principal Paid</th>
                    <th>Interest Paid</th>
                    <th>Outstanding Principal</th>
                </tr>
                </thead>
                <c:forEach var="emi" items="${repaySchedule}">
                <tbody>
                <tr>
                    <td>${emi.month}</td>
                    <td>${emi.installment}</td>
                    <td>${emi.principalPaid}</td>
                    <td>${emi.interestPaid}</td>
                    <td>${emi.endingAmount}</td>
                </tr>
                </tbody>
                </c:forEach>
                <tfoot>
                <tr>
                    <th>Month</th>
                    <th>EMI</th>
                    <th>Principal Paid</th>
                    <th>Interest Paid</th>
                    <th>Outstanding Principal</th>
                </tr>
                </tfoot>
            </table>
        </div>
    </div>
    <div class="submit">
            <input class="btn btn-primary" type="submit" value="Approve Loan">
            <a class="btn btn-warning"  href="/" role="button">Cancel Loan</a>
    </div>

</form>
</section>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/employee.js"></script>

<script
        src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>

<script>
    $(document).ready(function () {
        $('#example').DataTable({
            paging: true
        });
    });





    const triggerTabList = document.querySelectorAll('#myTab button')
    triggerTabList.forEach(triggerEl => {
        const tabTrigger = new bootstrap.Tab(triggerEl)

        triggerEl.addEventListener('click', event => {
            event.preventDefault()
            tabTrigger.show()
        })
    })


</script>

</body>
</html>