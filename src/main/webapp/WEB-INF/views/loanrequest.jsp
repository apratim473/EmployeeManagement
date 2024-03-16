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
</head>
<body>
<section>
  <h2>Employee Record</h2>
    <div id="toastElement" class="pop"  style="position: absolute;z-index:19;" >
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
  <form id="form" class="row g-3" action="loanRequestView"  modelAttribute="employee" method="post">
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
      <input type="text" class="form-control" id="dob" name="dob" value="<fmt:formatDate type="date" pattern="yyyy-mm-dd" value="${employee.dob}" />" readonly>
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
<%--      <input type="text" class="form-control" id="monthlyIncome" name="monthlyIncome" value="${employee.monthlyIncome}" required>--%>
      <input type="text" class="form-control" id="monthlyIncome" name="monthlyIncome" required>
    </div>
    <div class="col-md-6">
      <label for="monthlyExpense" class="form-label">Monthly Expense</label>
<%--      <input type="text" class="form-control" id="monthlyExpense" name="monthlyExpense" value="${employee.monthlyExpense}" required>--%>
      <input type="text" class="form-control" id="monthlyExpense" name="monthlyExpense" required>
    </div>

    <div class="col-md-6">
      <label for="loanProduct" class="form-label">Loan Product</label>
      <select id="loanProduct" name="loanProduct" class="form-select">
        <option value="" selected disabled>Select a loan product</option>
        <option  value="Home Loan">Home Loan</option>
        <option value="Vehicle Loan">Vehicle Loan</option>
        <option value="Education Loan">Education Loan</option>
      </select>
    </div>
    <div class="col-md-6">
      <label for="roi" class="form-label">ROI(p.a)</label>
      <input type="text" class="form-control" id="roi" name="roi" readonly >
    </div>

    <div class="col-md-6">
      <label for="tenure" class="form-label">Tenure</label>
      <input type="text" class="form-control" id="tenure" name="tenure" required>
    </div>

    <div class="col-md-6">
      <label for="repaymentFrequency" class="form-label">Repayment Frequency</label>
      <select id="repaymentFrequency" name="repaymentFrequency" class="form-select">
        <option value="" selected disabled>Select a repayment frequency</option>
        <option  value="12">Monthly</option>
        <option value="4">Quarterly</option>
        <option value="2">Semi Annually</option>
        <option value="1">Annually</option>
      </select>
    </div>

    <div>
      <button class="btn btn-primary" type="button" id="check">Check</button>
    </div>

    <div class="col-md-6">
      <label for="eligibleLoanAmount" class="form-label">Eligible Loan Amount</label>
      <input type="text" class="form-control" id="eligibleLoanAmount" name="eligibleLoanAmount" readonly>
    </div>
    <div class="col-md-6">
      <label for="dbr" class="form-label">DBR</label>
      <input type="text" class="form-control" id="dbr" name="dbr" value="0" readonly>
    </div>
   <div class="col-md-6">
      <label for="loanAmount" class="form-label">Loan Amount</label>
      <input type="text" class="form-control" id="loanAmount" name="loanAmount" required>
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

  var check = document.getElementById("check");
  check.addEventListener('click', (e)=>{


      var monthlyIncome = $("#monthlyIncome").val();
      var monthlyExpense = $("#monthlyExpense").val();
      var tenure = $("#tenure").val();
      var repaymentFrequency = $("#repaymentFrequency").val();
      var roi = $("#roi").val();

      var req = {}
      req["monthlyIncome"] = monthlyIncome;
      req["monthlyExpense"] = monthlyExpense;
      req["tenure"] = tenure;
      req["repaymentFrequency"] = repaymentFrequency;
      req["roi"] = roi;
      $.ajax({
          type:"POST",
          contentType : "application/json",
          url:"/calculateEligibleAmount",
          data: JSON.stringify(req),
          dataType : 'json',
          timeout : 100000,
          success : function(data){
              console.log("SUCCESS: ",e);
              display(data);
          }
      });

  });
function display(data){
    $("#eligibleLoanAmount").val(data["eligibleLoanAmount"]);
    $("#dbr").val(data["dbr"]);
}





  function displayToast(data){
      var css=data["css"]
      var head=data["head"]
      var msg = data["msg"]
      var toast =   '<div class="toast align-items-center text-white bg-'+css+' border-0 " role="alert" aria-live="assertive" aria-atomic="true" style="position:fixed; z-index:9; margin:-1% 0 0 75%">'+
          '<div class="d-flex">'+
          ' <div class="toast-body">'+
          ' <b>'+head+'</b>'+
          ' '+msg+
          '</div>'+
          ' <button type="button" class="btn-close me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>'+
          '</div>'+
          '</div>';

      // var toastBody = document.getElementById("toastElement")
      $("#toastElement").empty();
      $("#toastElement").append(toast);
      $('.toast').toast('show');

      return toast;
  }


  var form = document.getElementById("form")
  form.noValidate = true;
  form.addEventListener('submit', validateForm)
  field = Array.from(form.elements);
  field.forEach(f =>{
      f.addEventListener('blur', (e)=>{
          if (!f.checkValidity()) {

              // field is invalid - add class

              f.classList.add('is-invalid');


          }else{
              f.classList.remove('is-invalid');

          }

      })

  });

  function validateForm(e) {
      const
          form = e.target,
          field = Array.from(form.elements);


      field.forEach(i => {
          i.setCustomValidity('');
          i.classList.remove('is-invalid');

      });

      var proofId = document.getElementById("proofId")
      var loanAmount = document.getElementById("loanAmount")
      var eligibleAmount = document.getElementById("eligibleLoanAmount")
      var expense = document.getElementById("monthlyExpense");
      var dbr = document.getElementById("dbr");


      if($('#proofId').length && proofId.value.length<10){
          proofId.setCustomValidity("Id length can not be less than 10!")
          var  data = {}
          data['css'] = 'danger'
          data['head'] = 'Alert!'
          data['msg'] = 'Proof Id length is less than 10!'
          // formToast(data, element);
          displayToast(data);
          e.preventDefault();
          e.stopImmediatePropagation();
      }

      if($("#dbr").val()>40){
          dbr.setCustomValidity("dbr cant be greater than 40!")
          var  data = {}
          data['css'] = 'danger'
          data['head'] = 'Alert!'
          data['msg'] = 'DBR can not be greater than 40!'
          displayToast(data);
          console.log("dbr error");
          e.preventDefault();
          e.stopImmediatePropagation();
          dbr.classList.add('is-invalid');
      }

      if($("#loanAmount").val()>$("#eligibleAmount").val()){
          loanAmount.setCustomValidity("Loan cant be greater than 40!")
          var  data = {}
          data['css'] = 'danger'
          data['head'] = 'Alert!'
          data['msg'] = 'Loan Amount cannot be greater than the max eligible amount!'
          displayToast(data);
          console.log("dbr error");
          e.preventDefault();
          e.stopImmediatePropagation();
          loanAmount.classList.add('is-invalid');
      }

      if (!form.checkValidity()) {

          // form is invalid - cancel submit
          e.preventDefault();
          e.stopImmediatePropagation();

          // apply invalid class
          field.forEach(i => {

              if (!i.checkValidity()) {

                  // field is invalid - add class
                  i.classList.add('is-invalid');

              }
              else{
                  i.classList.add('is-valid');
              }

          });
          document.querySelectorAll( ":invalid" )[1].focus();
            console.log("Check2")

      }
  }


  $(document).ready(function () {
      $('.toast').toast('show');
      console.log("checkpoint");
  });
</script>

</body>
</html>