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
  <title>Loan Details</title>
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
  <h2>NSEL Loan Details</h2>
  <form id="form" class="row g-3" action="/loanDetailsSpecific" method="post">
    <input type="hidden" class="form-control " id="email" name="email" value="${email}">
        <table id="example" class="table table-striped" style="width:100%">
          <thead>
          <tr>
            <th>Loan Agreement ID</th>
            <th>Loan Product</th>
            <th>Loan Amount</th>
            <th>Tenure</th>
            <th>Status</th>
          </tr>
          </thead>
          <c:forEach var="loanList" items="${loanList}">
            <tbody>
            <tr>
              <input type="hidden" class="form-control" id="loanAgreement" name="loanAgreement" value="${loanList.loanAgreementId}">
              <td><input type="submit" value="${loanList.loanAgreementId}"></td>
              <td>${loanList.loanProduct.loanProductName}</td>
              <td>${loanList.loanAmount}</td>
              <td>${loanList.tenure}</td>
              <td>${loanList.loanStatus}</td>
            </tr>
            </tbody>
          </c:forEach>
        </table>

    <div class="submit">
      <a class="btn btn-warning"  href="/" role="button">Home</a>
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