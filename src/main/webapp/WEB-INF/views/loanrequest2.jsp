<%--
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Registration</title>
    <link href="${pageContext.request.contextPath}/resources/css/employeeform.css" rel="stylesheet" />
    <link rel="stylesheet" href="./css/searchViewStyle.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
<section>
    <h2>Employee Record</h2>
    <form class="row g-3 needs-validation" action="loanRequestView"  modelAttribute="employee" method="post" novalidate>
        <div class="col-md-6">
            <label for="firstName" class="form-label">First Name</label>
            <input type="text" class="form-control" id="firstName" name="firstName" value="${employee.firstName}" readonly>
        </div>

        <div class="col-md-6">
            <label for="lastName" class="form-label">Last Name</label>
            <input type="text" class="form-control" id="lastName" name="lastName" value="${employee.lastName}" readonly>
        </div>


        <div class="col-md-6">
            <label for="dob" class="form-label">Date of Birth</label>
            <input type="text" class="form-control" id="dob" name="dob" value="<fmt:formatDate type="date" value="${employee.dob}"/>" readonly>
        </div>


        <div class="col-md-6">
            <label for="email" class="form-label ">Email</label>
            <input type="email" class="form-control " id="email" name="email" value="${employee.email}" readonly>
        </div>



        <div class="col-md-6">
            <label for="proofType" class="form-label ">Id Proof</label>
            <input type="text" class="form-control" id="proofType" name="proofType" value="${employee.proofType}" readonly>
        </div>

        <div class="col-md-6">
            <label for="proofId" class="form-label ">Id Number</label>
            <input type="text" class="form-control" id="proofId" name="proofId" value="${employee.proofId}" readonly>
        </div>


        <h2>Loan Details</h2>
        <div class="col-md-6">
            <label for="monthlyIncome" class="form-label">Monthly Income</label>
            <input type="text" class="form-control" id="monthlyIncome" name="monthlyIncome" value="${monthlyIncome}" required>
        </div>
        <div class="col-md-6">
            <label for="monthlyExpense" class="form-label">Monthly Expense</label>
            <input type="text" class="form-control" id="monthlyExpense" name="monthlyExpense" value="${monthlyExpense}" required>
        </div>

        <div class="col-md-6">
            <label for="loanProduct" class="form-label">Loan Product</label>
            <select id="loanProduct" name="loanProduct" class="form-select">
                <option value="${loanProduct}" selected>${loanProduct}</option>
                <option  value="Home Loan">Home Loan</option>
                <option value="Vehicle Loan">Vehicle Loan</option>
                <option value="Education Loan">Education Loan</option>
            </select>
        </div>
        <div class="col-md-6">
            <label for="roi" class="form-label">ROI(p.a)</label>
            <input type="text" class="form-control" id="roi" name="roi" value="${roi}" readonly >
        </div>

        <div class="col-md-6">
            <label for="tenure" class="form-label">Tenure</label>
            <input type="text" class="form-control" id="tenure" name="tenure" value="${tenure}" readonly>
        </div>

        <div class="col-md-6">
            <label for="repaymentFrequency" class="form-label">Repayment Frequency</label>
            <select id="repaymentFrequency" name="repaymentFrequency" class="form-select">
                <option value="${repaymentFrequency}" selected >${repaymentFrequency}</option>
                <option  value="12">Monthly</option>
                <option value="4">Quarterly</option>
                <option value="2">Semi Annually</option>
                <option value="1">Annually</option>
            </select>
        </div>

        <div>
            <button class="btn btn-primary" type="submit">Check</button>
        </div>

        <div class="col-md-6">
            <label for="eligibleLoanAmount" class="form-label">Eligible Loan Amount</label>
            <input type="text" class="form-control" id="eligibleLoanAmount" name="eligibleLoanAmount" value="${eligibleLoanAmount}" readonly>
        </div>
        <div class="col-md-6">
            <label for="dbr" class="form-label">DBR</label>
            <input type="text" class="form-control" id="dbr" name="dbr" value="${dbr}" readonly>
        </div>
            <div class="col-md-6">
              <label for="loanAmt" class="form-label">Loan Amount</label>
              <input type="text" class="form-control" id="loanAmt" name="loanAmt">
            </div>

        &lt;%&ndash;    <div class="col-12">
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                <label class="form-check-label" for="invalidCheck">
                  I agree to the terms and conditions
                </label>
                <div class="invalid-feedback">
                  You must agree before submitting.
                </div>
              </div>
            </div>&ndash;%&gt;


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
    $("#loanProduct").click(function(){
        var e = $(this).val();
        var roi = 0;
        if(e=="Home Loan"){
            roi = 8;
            document.getElementById('roi').value = roi;
        }
        if(e=="Vehicle Loan"){
            roi = 10;
            document.getElementById('roi').value = roi;

        }
        if(e=="Education Loan"){
            roi = 15;
            document.getElementById('roi').value = roi;
        }
    });
</script>

</body>
</html>
--%>
