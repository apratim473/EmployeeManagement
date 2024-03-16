/*
(function () {
    'use strict'

    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.querySelectorAll('.needs-validation');


    // Loop over them and prevent submission
    Array.prototype.slice.call(forms)
        .forEach(function (form) {
            form.addEventListener('submit', validator(forms) , false)
        })
})()


function validator (event) {
    if (!form.checkValidity()) {
        event.preventDefault()
        event.stopPropagation()
    }


    form.classList.add('was-validated')



    var loanAmount = document.getElementById('loanAmount');
    var dbr = document.getElementById('dbr');
    var eligibleLoanAmount = document.getElementById('eligibleLoanAmount');


    if(loanAmount>eligibleLoanAmount){
        var data={};
        data.css = "alert";
        data.head = "Alert! ";
        data.msg = "Loan Amount cannot be greater than maximum eligible amount!";
        displayToast(data);
        event.preventDefault();
        event.stopPropagation();
    }

    if(dbr>40){
        var data={};
        data.css="alert";
        data.head="Alert! ";
        data.msg = "DBR cannot be greater than 40!";
        displayToast(data);
        event.preventDefault();
        event.stopPropagation();
    }
}
*/



(function () {
    'use strict'

    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.querySelectorAll('.needs-validation')

    // Loop over them and prevent submission
    Array.prototype.slice.call(forms)
        .forEach(function (form) {
            form.addEventListener('submit', function (event) {
                if (!form.checkValidity()) {
                    event.preventDefault()
                    event.stopPropagation()
                }

                form.classList.add('was-validated')
            }, false)
        })
})()
