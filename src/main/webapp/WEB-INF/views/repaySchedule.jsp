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
<%--    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css" rel="stylesheet">--%>
<%--    <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" rel="stylesheet">--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.css">
</head>
<body>
<section>
    <h2>Repayment Schedule</h2>
    <div class="container">
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
<form action="/loanDetailsSearchForm" method="post">
    <input type="hidden" class="form-control " id="searchEmail" name="searchEmail" value="${email}">
    <div class="submit">
            <input class="btn btn-primary" type="submit" value="Back">
            <a class="btn btn-warning"  href="/" role="button">Home</a>
        </div>
</form>
</section>

<%--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/employee.js"></script>--%>
<%--<script
        src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous"></script>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>--%>
<%--<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>--%>

<script>
    $(document).ready( function () {
        $('#example').DataTable();
    } );





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